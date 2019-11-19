using System.Drawing;

namespace Shared
{
    class ImageResizer
    {
        private int Width { get; set; }
        private int Height { get; set; }
        private int ScaleFactor { get; set; }

        public ImageResizer(int sourceWidth, int sourceHeight, int scaleFactor)
        {
            Width = sourceWidth * scaleFactor;
            Height = sourceHeight * scaleFactor;
            ScaleFactor = scaleFactor;
        }
        public Image ResizeImage(Image sourceImage)
        {
            Bitmap sourceBMP = (Bitmap)sourceImage;
            Bitmap destBmp = new Bitmap(Width, Height);

            int sourceWidth = sourceImage.Width;
            int sourceHeight = sourceImage.Height;
            int curX = 0;
            int curY = 0;
            Color curPixel = new Color();
            for (int x = 0; x < sourceWidth; x++)
            {
                for (int y = 0; y < sourceHeight; y++)
                {
                    curX = x * ScaleFactor;
                    curY = y * ScaleFactor;
                    curPixel = sourceBMP.GetPixel(x, y);
                    for (int xPrime = 0; xPrime < ScaleFactor; xPrime++)
                    {
                        for (int yPrime = 0; yPrime < ScaleFactor; yPrime++)
                        {
                            destBmp.SetPixel(curX + xPrime, curY + yPrime, curPixel);
                        }
                    }
                    
                }
            }
            return (Image)destBmp;
        }
    }
}
