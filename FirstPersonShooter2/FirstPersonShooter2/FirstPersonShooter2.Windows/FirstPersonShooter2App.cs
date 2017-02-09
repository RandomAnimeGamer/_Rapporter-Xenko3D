using SiliconStudio.Xenko.Engine;

namespace FirstPersonShooter2
{
    class FirstPersonShooter2App
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
