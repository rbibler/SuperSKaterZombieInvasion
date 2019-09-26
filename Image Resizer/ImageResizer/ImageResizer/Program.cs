using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer
{
    class Program
    {
        static void Main(string[] args)
        {
            string dir = "";
            int frameWidth = 0;
            int frameHeight = 0;
            int scaleFactor = 0;
            string imageName = "";
            int argsLength = args.Length;
            if (argsLength > 0)
            {
                dir = args[0];
            }
            else
            {
                Console.WriteLine("You need to enter a directory!");

            }
            if (argsLength > 1) {
                try
                {
                    frameWidth = Int32.Parse(args[1]);
                }
                catch (FormatException e)
                {
                    Console.WriteLine("Must enter a numeric value for frame width!");
                }
            }
            if (argsLength > 2)
            {
                try
                {
                    frameHeight = Int32.Parse(args[2]);
                }
                catch (FormatException e)
                {
                    Console.WriteLine("Must enter a numeric value for frame height!");
                }
            }
            if (argsLength > 3)
            {
                try
                {
                    scaleFactor = Int32.Parse(args[3]);
                }
                catch (FormatException e)
                {
                    Console.WriteLine("Must enter a numeric value for scale factor!");
                }
            }
            if (argsLength > 4)
            {
                imageName = args[4];
            }

            MainModule mainModule = new MainModule(dir, imageName, frameWidth, frameHeight, scaleFactor);
            mainModule.ProcessDirectory(dir);
        }
       
    }
}
