using SiliconStudio.Xenko.Engine;

namespace PhysicsSample
{
    class PhysicsSampleApp
    {
        static void Main(string[] args)
        {
            using (var game = new Game())
            {
                game.Run();
            }
        }
    }
}
