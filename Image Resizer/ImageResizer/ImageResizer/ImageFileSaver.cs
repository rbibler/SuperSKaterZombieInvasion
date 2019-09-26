using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer
{
    class ImageFileSaver
    {

        public int SaveImage(Image image, string file)
        {
            image.Save(file);
            return 0;
        }
    }
}
