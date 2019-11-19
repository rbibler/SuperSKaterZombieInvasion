using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shared;

namespace HeightMapGenerator
{
    class ImageModel
    {

        public Image Image { get; set; }
        public int TilesPerRow { get; set; }
        public int NumRows { get; set; }
        public List<ImageRow> Rows { get; set; }

        public ImageModel(Image image)
        {
            Image = image;
            GetImageInfo();
        }

        private void GetImageInfo()
        {
            TilesPerRow = Image.Width / 32;
            NumRows = Image.Height / 32;
            Rows = SplitIntoRows();
        }

        private List<ImageRow> SplitIntoRows()
        {
            var splitter = new ImageSplitter(Image.Width, 32);
            var rows = splitter.SplitImage(Image);
            var rowNum = 0;
            return rows.Select(r => new ImageRow()
            {
                RowNum = rowNum++,
                RowImage = r
            }).ToList();

        }
    }
}
