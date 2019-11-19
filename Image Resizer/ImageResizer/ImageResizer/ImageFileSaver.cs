using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shared
{
    class ImageFileSaver
    {

        public void SaveImages(List<Image> images, string path)
        {
            string baseDir = GetDirectoryName(path);
            string imageBaseName = path.Substring(path.LastIndexOf('\\'));
            imageBaseName = imageBaseName.Substring(0, imageBaseName.IndexOf("strip.png"));
            string framesDir = baseDir + "\\frames\\";
            new FileInfo(framesDir).Directory.Create();

            int count = 0;
            foreach (Image img in images)
            {
                SaveImage(img, framesDir + imageBaseName + count + ".png");
                count++;
            }
        }

        private int SaveImage(Image image, string path)
        {
            if (File.Exists(path))
            {
                File.Delete(path);
            }
                
            image.Save(path);
            return 0;
        }

        private string GetDirectoryName(string f)
        {
            try
            {
                return f.Substring(0, f.LastIndexOf('\\'));
            }
            catch
            {
                return string.Empty;
            }
        }
    }
}
