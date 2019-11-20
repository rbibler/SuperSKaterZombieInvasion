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
            System.IO.File.WriteAllText(filePath, stringToWrite);
        }
    }
}
