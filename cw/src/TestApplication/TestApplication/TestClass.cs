using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestApplication
{
    class TestClass
    {
        public int maximum_speed;


        private int speed;
        public int Speed
        {
            get { return speed;  }
            set { this.speed = value; }
        }

        public TestClass()
        {
        }

    }
}
