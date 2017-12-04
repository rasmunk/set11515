using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class OilMonitor
    {
        private readonly Random rand = new Random(DateTime.Now.Millisecond);

        public OilMonitor()
        {
        }


        [ContractInvariantMethod]
        // Only validates whether the local variable current enum value is within the valid range -> dosen't check that it is of the right type
        private void Invariant()
        {
            Contract.Invariant(rand != null);

        }

        public OilPressureState get_pressure_level()
        {
            OilPressureState oil_pressure_state;
            int num = rand.Next(2);
            if (num == 1)
            {
                oil_pressure_state = OilPressureState.oil_pressure_low;
                Console.WriteLine("Oil Pressure is Low");
            }
            else
            {
                oil_pressure_state = OilPressureState.oil_pressure_high;
                Console.WriteLine("Oil Pressure is High");
            }

            return oil_pressure_state;
        }

        public OilTemperatureState get_temperature_level()
        {
            OilTemperatureState oil_temperature_state;
            int num = rand.Next(2);
            if (num == 1)
            {
                oil_temperature_state = OilTemperatureState.oil_temperature_high;
                Console.WriteLine("Oil Temp is High");
            }
            else
            {
                oil_temperature_state = OilTemperatureState.oil_temperature_low;
                Console.WriteLine("Oil Temp is Low");
            }
            return oil_temperature_state;
        }
    }
}
