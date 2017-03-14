using System.Linq;
using System.Threading.Tasks;
using SiliconStudio.Core;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Audio;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.UI;
using SiliconStudio.Xenko.UI.Controls;
using SiliconStudio.Xenko.UI.Panels;

namespace Sounds { public class SoundScript : AsyncScript {
    public Sound SoundMusic;
    private SoundInstance music;
    public Sound SoundEffect;
    private SoundInstance effect;

    public override async Task Execute() {
        music = SoundMusic.CreateInstance();
        effect = SoundEffect.CreateInstance();
        if (!IsLiveReloading) {
            music.IsLooping = true;
            music.Play();
        }

        while (Game.IsRunning)
        {
            if (Input.PointerEvents.Any(item => item.State == PointerState.Down)) {

                // play the sound effect on each touch on the screen
                effect.Stop();
                effect.Play();
            }
            // wait for next frame
            await Script.NextFrame();
        }
    }
} }
