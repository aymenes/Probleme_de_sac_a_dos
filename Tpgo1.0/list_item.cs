using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tpgo1._0
{
    public class list_item
    {
        public int id { get; set; }
        public string objet { get; set; }
        public int poids { get; set; }
        public int gain { get; set; }
        override
        public string ToString()
        {
            return objet;
        }

    }
}
