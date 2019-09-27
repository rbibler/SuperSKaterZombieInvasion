using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer
{
    class MainModule
    {
        private SplitterAndSizer SplitterAndSizer { get; set; }
        private ImageFileFetcher ImageFetcher = new ImageFileFetcher();

        public MainModule(string topLevelFile, int frameWidth, int frameHeight, int scaleFactor)
        {
            string[] splitPath = topLevelFile.Split('\\');
            string    baseName = splitPath[splitPath.Length - 2];
            SplitterAndSizer = new SplitterAndSizer(
                new ImageResizer(frameWidth, frameHeight, scaleFactor),
                new ImageSplitter(frameWidth, frameHeight),
                new ImageFileSaver(),
                topLevelFile + "/frames/" + baseName);
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
            SplitterAndSizer.SplitAndResize(ImageFetcher.FetchImageFromFile(file));
            return 0;
        }

    }
}
