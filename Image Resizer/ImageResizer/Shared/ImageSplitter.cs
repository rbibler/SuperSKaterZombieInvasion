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
            for (int i = 0; i < numberOfFrames; i++)
            {
                frames.Add(GetSubFrame(imageToSplit, i));
            }
            return frames;
        }

        private Image GetSubFrame(Image sourceImage, int frameNumber)
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
                using (var wrapMode = new ImageAttributes())
                {
                    wrapMode.SetWrapMode(WrapMode.TileFlipXY);
                    graphics.DrawImage(sourceImage, destRect, x, 0, FrameWidth, FrameHeight, GraphicsUnit.Pixel, wrapMode);
                }
            }
            return destImage;
        }
    }
}
