using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeightMapGenerator
{
    class HeightMapInfo
    {
        public bool[,] HeightMap { get; set; }
        public double Slope { get; set; }
        public int TileNo { get; set; }

        public HeightMapInfo()
        {

        }
 
    }
}
