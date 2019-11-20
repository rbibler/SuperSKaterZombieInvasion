using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shared
{
    public class ImageSplitter
    {
        private int FrameWidth { get; }
        private int FrameHeight { get; }
        public ImageSplitter(int frameWidth, int frameHeight)
        {
            FrameWidth = frameWidth;
            FrameHeight = frameHeight;
        }

        public List<Image> SplitImage(Image imageToSplit)
        {
            List<Image> frames = new List<Image>();
            int numberOfFrames = imageToSplit.Width / FrameWidth;
            int numberOfRows = imageToSplit.Height / FrameHeight;
            for (int row = 0; row < numberOfRows; row++)
            {
                for (int col = 0; col < numberOfFrames; col++)
                {
                    frames.Add(GetSubFrame(imageToSplit, col, row));
                }
            }
            
            return frames;
        }

        private Image GetSubFrame(Image sourceImage, int frameNumber, int rowNumber)
        {
            var destRect = new Rectangle(0, 0, FrameWidth, FrameHeight);
            var destImage = new Bitmap(FrameWidth, FrameHeight);

            using (var graphics = Graphics.FromImage(destImage))
            {
                graphics.CompositingMode = CompositingMode.SourceCopy;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
                int x = frameNumber * FrameWidth;
                int y = rowNumber * FrameHeight;
                using (var wrapMode = new ImageAttributes())
                {
                    wrapMode.SetWrapMode(WrapMode.TileFlipXY);
                    graphics.DrawImage(sourceImage, destRect, x, y, FrameWidth, FrameHeight, GraphicsUnit.Pixel, wrapMode);
                }
            }
            return destImage;
        }
    }
}
