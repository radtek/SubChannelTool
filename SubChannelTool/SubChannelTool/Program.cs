using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SubChannelTool
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            SubChannelTool.UpdateTool.AutoUpdate();          // 应用自动检测更新
            SubChannelTool.DllTool.LoadResourceDll();        // 载入内部dll
            Application.Run(new FormSubChannel());
        }
    }
}
