using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using Shared;
using static HeightMapGenerator.HeightMapModel;

namespace HeightMapGenerator
{
    class ImageRow
    {

        public int RowNum { get; set; }
        public Image RowImage { get; set; }
        public List<HeightMapInfo> HeightMaps {get; set;}

        public ImageRow()
        {
            HeightMaps = new List<HeightMapInfo>();
        }

        public void ProcessRow()
        {
            var splitter = new ImageSplitter(32, 32);
            var frames = splitter.SplitImage(RowImage);
            foreach (var frame in frames)
            {
                using (Bitmap bmp = new Bitmap(frame))
                {
                    if(bmp != null)
                    {
                        HeightMaps.Add(GetHeightMapInfoForFrame(bmp));
                    }
                    
                }
            }
        }

        private HeightMapInfo GetHeightMapInfoForFrame(Bitmap frame)
        {
            Color pixel;
            var firstX = frame.Width;
            var firstY = 0;
            var lastX = 0;
            var lastY = 0;

            var width = frame.Width;
            var height = frame.Height;
            bool[,] heightMap = new bool[width, height];
            for (int y = 0; y < height; y++)
            {
                for (int x = 0; x < width; x++)
                {
                    pixel = frame.GetPixel(x, y);
                    if (pixel.A != 0)
                    {
                        heightMap[y, x] = true;
                        var isItAnEdge = IsThisPixelAnEdge(x, y, frame);
                        if (isItAnEdge)
                        {
                            if (x < firstX)
                            {
                                firstX = x;
                                firstY = y;
                            }
                            if (x > lastX)
                            {
                                lastX = x;
                                lastY = y;
                            }
                        }
                    }
                    else
                    {
                        heightMap[y, x] = false;
                    }
                }
                        
            }
            return new HeightMapInfo()
            {
                Width = width,
                Height = height,
                HeightMap = heightMap,
                Slope = CalculateSlope(new Point(firstX, firstY), new Point(lastX, lastY))
            };
        }
        private Boolean IsThisPixelAnEdge(int x, int y, Bitmap frame)
        {
            Color testPixel;
            var allPixelsSolid = AllPixelsSolidInColumn(x, frame);
            if (allPixelsSolid && (y == 0 || y == 31))
            {
                if (x == 0)
                {
                    testPixel = frame.GetPixel(1, y);
                    if (testPixel.A == 0)
                    {
                        return true;
                    }
                }
                else if (x == 31)
                {
                    testPixel = frame.GetPixel(30, y);
                    if (testPixel.A == 0)
                    {
                        return true;
                    }
                }
                else {
                    testPixel = frame.GetPixel(x + 1, y);
                    if (testPixel.A == 0)
                    {
                        return true;
                    }
                    else
                    {
                        testPixel = frame.GetPixel(x - 1, y);
                        if (testPixel.A == 0)
                        {
                            return true;
                        }
                    }
                }
            }
            if (y == 0)
            {
                testPixel = frame.GetPixel(x, 1);
                if (testPixel.A == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else if (y == 31)
            {
                testPixel = frame.GetPixel(x, 30);
                if (testPixel.A == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                testPixel = frame.GetPixel(x, y + 1);
                if (testPixel.A == 0)
                {
                    return true;
                }
                else
                {
                    testPixel = frame.GetPixel(x, y - 1);
                    if (testPixel.A == 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        }

        private bool AllPixelsSolidInColumn(int x, Bitmap frame)
        {
            Color pixel;
            for (int y = 0; y < 32; y++)
            {
                pixel = frame.GetPixel(x, y);
                if (pixel.A == 0)
                {
                    return false;
                }
            }
            return true;
        }

        private double CalculateSlope(Point firstPoint, Point lastPoint)
        {
            var lastY = 32 - lastPoint.Y;
            var firstY = 32 - firstPoint.Y;
            double rise = lastY - firstY;
            double run = lastPoint.X - firstPoint.X;
            double slope = rise / run;
            var degrees = RadToDeg(Math.Atan(slope));
            return degrees;
        }

        private double RadToDeg(double rad)
        {
            return (180.0 / Math.PI) * rad;
        }
    }
}
