using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace ImageResizer
{
    class MainModule
    {
        private SplitterAndSizer SplitterAndSizer { get; set; }
        private ImageFileFetcher ImageFetcher = new ImageFileFetcher();
        private ImageFileSaver ImageSaver = new ImageFileSaver();

        public MainModule(string topLevelFile, int frameWidth, int frameHeight, int scaleFactor)
        {
           
            SplitterAndSizer = new SplitterAndSizer(
                new ImageResizer(frameWidth, frameHeight, scaleFactor),
                new ImageSplitter(frameWidth, frameHeight));
        }

        public int ProcessDirectory(string dir)
        {
            string[] dirs = System.IO.Directory.GetDirectories(dir);
            foreach (string d in dirs)
            {
                ProcessDirectory(d);
            }

            string[] files = System.IO.Directory.GetFiles(dir);
            foreach (string f in files)
            {
                if(f.EndsWith("strip.png"))
                {
                    ProcessImages(f);
                }
                    
            }
            return 0;
        }

        private int ProcessImages(string file)
        {
            List<Image> images = SplitterAndSizer.SplitAndResize(ImageFetcher.FetchImageFromFile(file));
            ImageSaver.SaveImages(images, file);
            return 0;
        }


    }
}
