using System;
using System.Drawing;
using System.Threading.Tasks;

namespace Shared
{
    public class ImageFileFetcher
    {
        public static Image FetchImageFromFile(string file)
        {
            Image img = Image.FromFile(file);
            return img;
        }
    }
}
