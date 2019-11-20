using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FrequencyChartGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] noteVolts = new int[84];
            int[] periodValues = new int[84];
            int[] outputValues = new int[1008];

            for (int i = 0; i < 84; i++)
            {
                noteVolts[i] = i * 12;
            }
            periodValues = PopulatePeriodValues();
            double mvDivision = .0416666;
            double curMV = 0;
            int adcValue = 0;
            Console.WriteLine("");
            for (int i = 0; i < 84; i++)
            {
                curMV = i * mvDivision;
                adcValue = (int) ((curMV / 3.5) * 1008);
                Console.WriteLine("Value at: " + i + " " + periodValues[adcValue + 1].ToString("X4"));
            }
            Console.Read();
            
        }

        private static int[] PopulatePeriodValues()
        {
            double[] realFreqs = new double[1008];
            int[] periods = new int[1008];
            double semitone = Math.Pow(2.0, (1.0 / 144));
            double octaveBase = 39375000.0 / (22 * 16 * 55);
            for (int i = 0; i < 1008; i++)
            {
                realFreqs[i] = (1 << (int) Math.Floor((double) (i / 144))) * Math.Pow(semitone, i % 144);
                periods[i] = (int)(Math.Round(octaveBase / realFreqs[i])) - 1;
                if (i > 0 && i % 12 == 0)
                {
                    Console.WriteLine("");
                }
                Console.Write("0x" + (periods[i] & 0xFF).ToString("X2") + ", ");
               
            }
            Console.WriteLine("\n\nHigh Bytes \n\n");
            for (int i = 0; i < 1008; i++) {
                if (i > 0 && i % 12 == 0)
                {
                    Console.WriteLine("");
                }
                Console.Write("0x" + (periods[i] >> 8).ToString("X2") + ", ");
            }
            return periods;
        }
    }
}
