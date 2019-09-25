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
            if (args.Length > 0)
            {
                dir = args[0];
            }
            else
            {
                Console.WriteLine("You need to enter a directory!");
            }
            int exitCode = ProcessDirectory(dir);
        }

        private static int ProcessDirectory(string dir)
        {
            string[] files = null;
            int fileCount = 0;
            files = System.IO.Directory.GetFiles(dir);
            FileAttributes attr;
            foreach (string f in files)
            {
                attr = File.GetAttributes(f);
                if (attr.HasFlag(FileAttributes.Directory))
                {
                    ProcessDirectory(f);
                }
                else
                {
                    ProcessImages(f);
                }
            }
            return 0;
        }

        private static int ProcessImages(string file)
        {
            Image tempImg = Image.FromFile(file);
            tempImg.
            Bitmap image = ResizeImage(tempImg, 100, 150);
            image.Save(@"C:\Users\...\Pictures\books.jpg");
            return 0;
        }

        private static Bitmap ResizeImage(Image image, int width, int height)
        {
            
        }


    }
}
