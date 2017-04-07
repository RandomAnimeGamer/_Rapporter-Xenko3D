﻿﻿using System;
using SiliconStudio.Core;
using SiliconStudio.Core.Collections;
using SiliconStudio.Xenko.Animations;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Engine.Events;

namespace RapporterV2.Player
{
    public class AnimationController : SyncScript, IBlendTreeBuilder
    {
        //private readonly EventReceiver<WeaponFiredResult> weaponFiredEvent = new EventReceiver<WeaponFiredResult>(WeaponScript.WeaponFired);
        private readonly EventReceiver<float> runSpeedEvent = new EventReceiver<float>(PlayerController.RunSpeedEventKey);

        private float runSpeed = 0;

        private AnimationState defaultState = AnimationState.Idle;

        [Display("Animation Component")]
        public AnimationComponent AnimationComponent { get; set; }

        [Display("Idle")]
        public AnimationClip AnimationIdle { get; set; }

        [Display("Walk")]
        public AnimationClip AnimationWalk { get; set; }

        [Display("Time Scale")]
        public double TimeFactor { get; set; } = 1;

        private AnimationClipEvaluator animEvaluatorIdle;
        private AnimationClipEvaluator animEvaluatorWalk;
        private double currentTime = 0;

        private AnimationState state = AnimationState.Idle;

        private AnimationClipEvaluator  currentEvaluator;
        private AnimationClip           currentClip;


        public override void Start() {
            base.Start();

            if (AnimationComponent == null) throw new InvalidOperationException("The animation component is not set");
            if (AnimationIdle == null) throw new InvalidOperationException("Idle animation is not set");
            if (AnimationWalk == null) throw new InvalidOperationException("Walking animation is not set");

            // By setting a custom blend tree builder we can override the default behavior of the animation system
            //  Instead, BuildBlendTree(FastList<AnimationOperation> blendStack) will be called each frame
            AnimationComponent.BlendTreeBuilder = this;

            animEvaluatorIdle   = AnimationComponent.Blender.CreateEvaluator(AnimationIdle);
            animEvaluatorWalk   = AnimationComponent.Blender.CreateEvaluator(AnimationWalk);

            currentEvaluator    = animEvaluatorIdle;
            currentClip         = AnimationIdle;
        }

        public override void Cancel() {
            AnimationComponent.Blender.ReleaseEvaluator(animEvaluatorIdle);
            AnimationComponent.Blender.ReleaseEvaluator(animEvaluatorWalk);
        }

        private void SwitchToDefaultState() {
            currentTime = (state == defaultState) ? currentTime : 0;
            state = defaultState;

            if (state == AnimationState.Idle) {
                currentClip = AnimationIdle;
                currentEvaluator = animEvaluatorIdle;
            }
            else {
                currentClip = AnimationWalk;
                currentEvaluator = animEvaluatorWalk;
            }
        }

        public override void Update() {
            runSpeedEvent.TryReceive(out runSpeed); defaultState = (runSpeed > 0.15f) ? AnimationState.Walking : AnimationState.Idle;

            // Update current animation
            var currentTicks = TimeSpan.FromTicks((long)(currentTime * currentClip.Duration.Ticks));
            var updatedTicks = currentTicks.Ticks + (long)(Game.DrawTime.Elapsed.Ticks * TimeFactor);

            var currentClipFinished = (updatedTicks >= currentClip.Duration.Ticks);

            currentTicks = TimeSpan.FromTicks(updatedTicks % currentClip.Duration.Ticks);
            currentTime = ((double)currentTicks.Ticks / (double)currentClip.Duration.Ticks);

            // State change if necessary
            if((state == AnimationState.Idle || state == AnimationState.Walking) && state != defaultState) { SwitchToDefaultState(); }
        }

        /// <summary>
        /// BuildBlendTree is called every frame from the animation system when the <see cref="AnimationComponent"/> needs to be evaluated
        /// It overrides the default behavior of the <see cref="AnimationComponent"/> by setting a custom blend tree
        /// </summary>
        /// <param name="blendStack">The stack of animation operations to be blended</param>
        public void BuildBlendTree(FastList<AnimationOperation> blendStack) {
            blendStack.Add(AnimationOperation.NewPush(currentEvaluator, TimeSpan.FromTicks((long)(currentTime * currentClip.Duration.Ticks)))); }

        enum AnimationState {
            Idle,
            Walking
        }
    }
}
