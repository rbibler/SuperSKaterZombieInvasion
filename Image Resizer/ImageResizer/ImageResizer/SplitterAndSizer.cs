using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer

    

{
    class SplitterAndSizer
    {

        private ImageResizer Resizer { get; set; }
        private ImageSplitter Splitter { get; set; }
        private ImageFileSaver Saver { get; set; }
        private string FileBasePath { get; set; }

        private int count = 0;

        public SplitterAndSizer(ImageResizer resizer, ImageSplitter splitter, ImageFileSaver saver, string fileBasePath)
        {
            Resizer = resizer;
            Splitter = splitter;
            Saver = saver;
            FileBasePath = fileBasePath;
        }

        public int SplitAndResize(Image image)
        {
            List<Image> images = Splitter.SplitImage(image);
            List<Image> resizedImages = images.Select(im => Resizer.ResizeImage(im)).ToList();
            foreach (Image img in resizedImages)
            {
                Saver.SaveImage(img, FileBasePath + count + ".png");
                count++;
            }
            return 0;
        }
    }
}
