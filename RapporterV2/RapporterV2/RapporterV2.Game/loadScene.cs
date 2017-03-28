using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Audio;

namespace RapporterV2
{
    public class loadScene : SyncScript
    {
        // Declared public member fields and properties will show in the game studio
        public Sound SoundMusic;
        private SoundInstance forest;

        public override void Start()
        {
            // Initialization of the script.
            forest = SoundMusic.CreateInstance();
            if (!IsLiveReloading) {
                forest.IsLooping = true;
            }
        }

        public override void Update()
        {
            if(Game.IsRunning)
            {
            if(Input.IsKeyPressed(Keys.Space))
                {
                //Stop the TitleMusic
                SceneSystem.SceneInstance.Scene = Content.Load<Scene>("Forest Scene");
                }
            }
            
            // Do stuff every new frame
        }
    }
}
