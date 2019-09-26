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

        public MainModule(string topLevelFile, string imageName, int frameWidth, int frameHeight, int scaleFactor)
        {
            string baseName = imageName;
            if (String.IsNullOrEmpty(baseName))
            {
                string[] splitPath = topLevelFile.Split('/');
                baseName = splitPath[splitPath.Length - 1];
            }
            SplitterAndSizer = new SplitterAndSizer(
                new ImageResizer(frameWidth, frameHeight, scaleFactor),
                new ImageSplitter(frameWidth, frameHeight),
                new ImageFileSaver(),
                topLevelFile + "/" + baseName);
        }

        public int ProcessDirectory(string dir)
        {
            string[] files = null;
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

        private int ProcessImages(string file)
        {
            SplitterAndSizer.SplitAndResize(ImageFetcher.FetchImageFromFile(file));
            return 0;
        }

    }
}
