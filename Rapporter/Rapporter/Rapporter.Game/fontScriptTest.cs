using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;
using SiliconStudio.Xenko.Physics;
using SiliconStudio.Core;
using SiliconStudio.Xenko.Rendering;
using SiliconStudio.Xenko.Rendering.Composers;
using SiliconStudio.Xenko.Graphics;

namespace Rapporter
{
    public class fontScriptTest : AsyncScript
    {
        // Declared public member fields and properties will show in the game studio
        public EventKey<bool> TriggerEvent = new EventKey<bool>();
        
        private static readonly float[] TimeToDisplayTextGroups = { 3f,5f,4f,5f,5f,5f,5f,10f};

        private readonly List<Action> screenRenderers = new List<Action>();
        
        private const float FadeInDuration = 1f;
        private const float FadeOutDuration = 1f;
        
        private const float DynamicFontContentSize = 50;
        
        private Vector2 centerVirtualPosition;
        private Vector2 screenSize;
        private SpriteBatch spriteBatch;
        
        private const string RefenceText = "testing";
        
        public SpriteFont StaticFont;
        public SpriteFont DynamicFont;
        public SpriteFont BoldFont;
        public SpriteFont ItalicFont;
        public SpriteFont AliasedFont;
        public SpriteFont AntialiasedFont;
        public SpriteFont ClearTypeFont;
        public SpriteFont JapaneseFont;
        public SpriteFont TimesNewRoman;
        public SpriteFont HeaderFont;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private Vector2 animatedFontPosition;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private float animatedFontScale;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private float animatedFontRotation;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private float animatedFontAlpha;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private bool isPlaying = true;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private int currentScreenIndex;

        [DataMember(Mask = LiveScriptingMask)] // keep the value when reloading the script (live-scripting)
        private float currentTime;

        private readonly Vector2 headerPosition = new Vector2(0.5f, 0.25f);
        private readonly Vector2 contentPosition = new Vector2(0.5f, 0.4f);

        private readonly Color xenkoColor = new Color(0xFF3008da);

        private Vector2 virtualResolution = new Vector2(1920, 1080);

        private SceneDelegateRenderer delegateRenderer;
        
        public override async Task Execute()
        {
        
            spriteBatch = new SpriteBatch(GraphicsDevice) { VirtualResolution = new Vector3(virtualResolution, 1000) };

            centerVirtualPosition = new Vector2(virtualResolution.X * 0.5f, virtualResolution.Y * 0.5f);
            screenSize = new Vector2(GraphicsDevice.Presenter.BackBuffer.Width, GraphicsDevice.Presenter.BackBuffer.Height);

            screenRenderers.Add(DrawTest);

            
            // Add Graphics Layer
            var scene = SceneSystem.SceneInstance.Scene;
            var compositor = ((SceneGraphicsCompositorLayers)scene.Settings.GraphicsCompositor);
            compositor.Master.Renderers.Add(delegateRenderer = new SceneDelegateRenderer(DrawFont));
        
            var trigger = Entity.Get<PhysicsComponent>();
            trigger.ProcessCollisions = true;
             
            while(Game.IsRunning)
            {
                // Do stuff every new frame
                var firstCollision = await trigger.NewCollision();
                
                TriggerEvent.Broadcast(true);
                
                Collision collision;
                do{
                    collision = await trigger.CollisionEnded();
                }while(collision != firstCollision);
                
//                if(TriggerEvent == EventKey<true>)
  //              {
  //               UpdateAnimatedFontParameters();
  //               UpdateInput();
  //               UpdateCurrentScreenIndex();
  //              }
                
                TriggerEvent.Broadcast(false);               
            }
        }
            
            public override void Cancel()
        {
            // Remove the delegate renderer from the pipeline
            var scene = SceneSystem.SceneInstance.Scene;
            var compositor = ((SceneGraphicsCompositorLayers)scene.Settings.GraphicsCompositor);
            compositor.Master.Renderers.Remove(delegateRenderer);

            // Dispose graphic resource
            spriteBatch.Dispose();
        }
        
        #region Draw Methods

        private void DrawFont(RenderDrawContext context, RenderFrame frame)
        {
            if(isPlaying)
                currentTime += (float)Game.UpdateTime.Elapsed.TotalSeconds;

            spriteBatch.Begin(context.GraphicsContext);
            screenRenderers[currentScreenIndex]();
            spriteBatch.End();
        }

        private void DrawHeader(string headerPart1, string headerPart2, string headerPart3)
        {
            const float headerSize = 70;

            var position = GetVirtualPosition(headerPosition);

            // Find the X position offset for the first part of text
            position -= spriteBatch.MeasureString(HeaderFont, headerPart1 + headerPart2 + headerPart3, headerSize, screenSize) * 0.5f;

            // Draw each part separately because we need to have a different color in the 2nd part
            spriteBatch.DrawString(HeaderFont, headerPart1, headerSize, position, Color.White * GetInterpolatedAlpha());

            position.X += spriteBatch.MeasureString(HeaderFont, headerPart1, headerSize, screenSize).X;

            spriteBatch.DrawString(HeaderFont, headerPart2, headerSize, position, xenkoColor * GetInterpolatedAlpha());

            position.X += spriteBatch.MeasureString(HeaderFont, headerPart2, headerSize, screenSize).X;

            spriteBatch.DrawString(HeaderFont, headerPart3, headerSize, position, Color.White * GetInterpolatedAlpha());
        }

        /// <summary>
        /// Draw "Test" text group.
        /// Render text created in compiling-time which could not change in run-time.
        /// </summary>
        private void DrawTest()
        {
            DrawHeader("Testing", "Testing", " 123");

            var position = GetVirtualPosition(contentPosition);

            var text = "Test";

            position.X -= spriteBatch.MeasureString(StaticFont, text, screenSize).X / 2;

            spriteBatch.DrawString(StaticFont, text, position, Color.White * GetInterpolatedAlpha());
        }


        #endregion Draw methods

        /// <summary>
        /// Check if there is any input command.
        /// Input commands are for controlling: 1. Text group advancing, 2. Previous/Next text group selection.
        /// </summary>
        /// <returns></returns>
        private void UpdateInput()
        {
            // Toggle play/not play
            if (Input.IsKeyPressed(Keys.Space) || Input.PointerEvents.Any(pointerEvent => pointerEvent.State == PointerState.Down))
            {
                isPlaying = !isPlaying;
            }
            else if (Input.IsKeyPressed(Keys.Left) || Input.IsKeyPressed(Keys.Right))
            {
                currentTime = 0;
                currentScreenIndex = (currentScreenIndex + (Input.IsKeyPressed(Keys.Left) ? -1 : +1) + screenRenderers.Count) % screenRenderers.Count;
            }
        }

        private void UpdateCurrentScreenIndex()
        {
            var upperBound = TimeToDisplayTextGroups[currentScreenIndex];

            if (currentTime > upperBound)
            {
                currentTime = 0;
                currentScreenIndex = (currentScreenIndex + 1) % screenRenderers.Count;
            }
        }

        /// <summary>
        /// Update the main font parameters according to sample state.
        /// </summary>
        /// <returns></returns>
        private void UpdateAnimatedFontParameters()
        {
            if (!isPlaying)
                return;

            animatedFontAlpha = GetVaryingValue(1.6f * currentTime);
            animatedFontRotation = 2f * currentTime * (float)Math.PI;
            animatedFontPosition = GetVirtualPosition(0.5f, 0.65f) + 160 * new Vector2(1.5f * (float)Math.Cos(1.5f * currentTime), (float)Math.Sin(1.5f * currentTime));
            animatedFontScale = 0.9f + 0.2f * GetVaryingValue(2.5f * currentTime);
        }

        /// <summary>
        /// Return interpolated value for alpha channel of a text that controls opacity.
        /// Value, that is outside the bound, would not invisible.
        /// </summary>
        /// <returns></returns>
        private float GetInterpolatedAlpha()
        {
            var upperBound = TimeToDisplayTextGroups[currentScreenIndex];

            if (currentTime < FadeInDuration)
                return currentTime / FadeInDuration;

            if (currentTime < upperBound - FadeOutDuration)
                return 1f;

            return Math.Max(upperBound - currentTime, 0) / FadeOutDuration;
        }

        /// <summary>
        /// Return position in virtual resolution coordinate by given relative position [0, 1]
        /// </summary>
        /// <param name="relativePositionX"></param>
        /// <param name="relativePositionY"></param>
        /// <returns></returns>
        private Vector2 GetVirtualPosition(float relativePositionX, float relativePositionY)
        {
            return GetVirtualPosition(new Vector2(relativePositionX, relativePositionY));
        }

        /// <summary>
        /// Return position in virtual resolution coordinate by given relative position [0, 1]
        /// </summary>
        /// <returns></returns>
        private Vector2 GetVirtualPosition(Vector2 relativePosition)
        {
            return new Vector2(virtualResolution.X * relativePosition.X, virtualResolution.Y * relativePosition.Y);
        }

        /// <summary>
        /// Get a varying value between [0,1] depending on the time
        /// </summary>
        /// <param name="time">the current time</param>
        /// <returns>the varying value</returns>
        private static float GetVaryingValue(float time)
        {
            return (float)Math.Cos(time) * 0.5f + 0.5f;
        }
         
    }
}