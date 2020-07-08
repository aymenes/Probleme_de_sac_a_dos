using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tpgo1._0
{
    public class type_result
    {
        public List<List<int>> matrixa { get; set; }
        public List<list_item> Lista { get; set; }
        public int gain_max { get; set; }
        public type_result()
        {
            this.matrixa = new List<List<int>>();
            this.Lista = new List<list_item>();
            this.gain_max = 0;
        }

    }
}
