using System.Threading.Tasks;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;
using SiliconStudio.Xenko.Physics;

namespace Rapporter {
    public class DebugPhysicsShapes : AsyncScript {
        //declared public member variables and properties will show in the game studio

        public override async Task Execute() {
            Simulation simulation = null;
			var enabled = false;
            while(Game.IsRunning) {
                if (Input.IsKeyDown(Keys.LeftShift) && Input.IsKeyDown(Keys.LeftCtrl) && Input.IsKeyReleased(Keys.P)) {
                    simulation = simulation ?? this.GetSimulation();
                    if (simulation != null) {
                        if (enabled) {
                            simulation.ColliderShapesRendering = false;
                            enabled = false;
                        }
                        else {
                            simulation.ColliderShapesRendering = true;
                            enabled = true;
                        }
                    }
                }
                await Script.NextFrame();
            }
        }
    }
}
