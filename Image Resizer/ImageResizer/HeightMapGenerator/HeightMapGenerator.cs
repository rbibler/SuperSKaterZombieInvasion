using Shared;
using System.Drawing;
using Newtonsoft.Json;

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
            var heightMaps = Image.ProcessRows();
            var heightMapJson = JsonConvert.SerializeObject(heightMaps);
            StringWriter.WriteString(heightMapJson, "C:/users/ryan/desktop/output.txt");

        }
    }
}
