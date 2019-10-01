using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer
{
    class ImageFileFetcher
    {
        public Image FetchImageFromFile(string file)
        {
            Image img = Image.FromFile(file);
            return img;
        }
    }
}
