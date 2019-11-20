using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeightMapGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            HeightMapGenerator hmg = new HeightMapGenerator("C:/users/ryan/desktop/heightmap.png");
            hmg.ProcessImage();
        }
    }
}
