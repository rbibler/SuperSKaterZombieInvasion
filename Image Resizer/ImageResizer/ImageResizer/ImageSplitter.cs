using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImageResizer
{
    class ImageSplitter
    {
        private int FrameWidth { get; }
        private int FrameHeight { get; }
        public ImageSplitter(int frameWidth, int frameHeight)
        {
            FrameWidth = frameWidth;
            FrameHeight = frameHeight;
        }

        public List<Bitmap> SplitImage(Image imageToSplit)
        {
            List<Bitmap> frames = new List<Bitmap>();
            return frames;
        }

        private Image GetSubFrame(Image sourceImage, int frameNumber)
        {
            var destRect = new Rectangle(0, 0, FrameWidth, FrameHeight);
            var destImage = new Bitmap(FrameWidth, FrameHeight);

            destImage.SetResolution(.HorizontalResolution, image.VerticalResolution);

            using (var graphics = Graphics.FromImage(destImage))
            {
                graphics.CompositingMode = CompositingMode.SourceCopy;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;

                using (var wrapMode = new ImageAttributes())
                {
                    wrapMode.SetWrapMode(WrapMode.TileFlipXY);
                    graphics.DrawImage(image, destRect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, wrapMode);
                }
            }
            return destImage;
            return null;
        }
    }
}
