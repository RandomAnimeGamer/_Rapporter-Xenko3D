using SiliconStudio.Xenko.Engine;

namespace Rapporter
{
    class RapporterApp
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
