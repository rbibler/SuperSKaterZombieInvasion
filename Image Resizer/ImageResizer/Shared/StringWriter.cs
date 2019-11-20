using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shared
{
    public class StringWriter
    {
        public static void WriteString(string stringToWrite, string filePath)
        {
            using (var tw = new StreamWriter(filePath, true))
            {
                tw.WriteLine(stringToWrite);
                tw.Close();
            }
        }
    }
}
