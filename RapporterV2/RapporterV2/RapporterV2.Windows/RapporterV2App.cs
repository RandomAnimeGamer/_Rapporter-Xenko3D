using SiliconStudio.Xenko.Engine;

namespace RapporterV2
{
    class RapporterV2App
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
