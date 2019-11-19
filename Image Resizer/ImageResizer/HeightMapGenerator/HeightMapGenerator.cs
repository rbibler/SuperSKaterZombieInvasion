using Shared;
using System.Drawing;

namespace HeightMapGenerator
{
    class HeightMapGenerator
    {
        public string ImageFile { get; set; }
        public ImageModel Image { get; set; }

        public HeightMapGenerator(string file)
        {
            ImageFile = file;
        }

        public void ProcessImage()
        {
            Image = new ImageModel(ImageFileFetcher.FetchImageFromFile(ImageFile));

        }
    }
}
