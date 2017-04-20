using SiliconStudio.Core; using SiliconStudio.Core.Diagnostics; using SiliconStudio.Core.Mathematics;
using SiliconStudio.Core.Serialization.Contents; using SiliconStudio.Xenko.Engine; using SiliconStudio.Xenko.Extensions;
using SiliconStudio.Xenko.Games; using SiliconStudio.Xenko.Graphics; using SiliconStudio.Xenko.Graphics.Data;
using SiliconStudio.Xenko.Graphics.GeometricPrimitives; using SiliconStudio.Xenko.Input; using SiliconStudio.Xenko.Rendering;
using SiliconStudio.Xenko.Rendering.Composers; using SiliconStudio.Xenko.Rendering.Lights; using SiliconStudio.Xenko.Rendering.ProceduralModels;
using System.Collections.Generic; using System.Threading.Tasks;

namespace RapporterV2 { public class Full : SyncScript {
        public Full() {
            GraphicsDeviceManager.PreferredBackBufferWidth = 1024;
            GraphicsDeviceManager.PreferredBackBufferHeight = 576;
            GraphicsDeviceManager.IsFullScreen = true;
            AutoLoadDefaultSettings = false;
        }
} }