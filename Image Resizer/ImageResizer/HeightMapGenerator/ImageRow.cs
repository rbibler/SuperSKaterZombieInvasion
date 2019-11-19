using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using Shared;

namespace HeightMapGenerator
{
    class ImageRow
    {

        public int RowNum { get; set; }
        public Image RowImage { get; set; }

        public ImageRow()
        {
        }

        public string ProcessRow()
        {
            StringBuilder returnString = new StringBuilder();
            var splitter = new ImageSplitter(32, 32);
            var frames = splitter.SplitImage(RowImage);
            foreach (var frame in frames)
            {
                using (Bitmap bmp = new Bitmap(frame))
                {
                    returnString.Append(ProcessFrame(bmp));
                }
            }
            return "";
        }

        private string ProcessFrame(Bitmap frame)
        {

            return "";
        }
    }
}
