using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class Dashboard
    {
        // The dashboard variables does not have a possible failed state, meaning that it is not neccesary to have a get_light_status method for the three lights.
        // Also since the controller needs to insure the state of the lights via CC, Contracts needs public access to the variables to validate this.

        public DashboardState oil_pressure_light { [Pure] get; private set; } = DashboardState.off;
        public DashboardState oil_temperature_light { [Pure] get; private set; } = DashboardState.off;
        public DashboardState petrol_light { [Pure] get; private set; } = DashboardState.off;

        // Make sure that the internal variables are of the DashboardState type
        // Note!, Enums are values underneth, meaning that declaring a say petrol_light to be an int = 0 won't violate the contract
        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(Enum.IsDefined(typeof(DashboardState), oil_pressure_light));
            Contract.Invariant(Enum.IsDefined(typeof(DashboardState), oil_temperature_light));
            Contract.Invariant(Enum.IsDefined(typeof(DashboardState), petrol_light));
        }


        [Pure]
        //Tells the caller's CC that this method promises to change the internal state to on
        public void oil_pressure_light_on()
        {
            Contract.Ensures(oil_pressure_light == DashboardState.on);
            oil_pressure_light = DashboardState.on;
            Console.WriteLine("Dashboard Oil Pressure light is now on");
        }

        [Pure]
        public void oil_pressure_light_off()
        {
            Contract.Ensures(oil_pressure_light == DashboardState.off);
            oil_pressure_light = DashboardState.off;
            Console.WriteLine("Dashboard Oil Pressure light is now off");
        }

        [Pure]
        public void oil_temperature_light_on()
        {
            Contract.Ensures(oil_temperature_light == DashboardState.on);
            oil_temperature_light = DashboardState.on;
            Console.WriteLine("Dashboard Oil Temperature light is now on");
        }

        [Pure]
        public void oil_temperature_light_off()
        {
            Contract.Ensures(oil_temperature_light == DashboardState.off);
            oil_temperature_light = DashboardState.off;
            Console.WriteLine("Dashboard Oil Temperature light is now off");
        }

        [Pure]
        public void petrol_light_on()
        {
            Contract.Ensures(petrol_light == DashboardState.on);
            petrol_light = DashboardState.on;
            Console.WriteLine("Dashboard Petrol light is now on");
        }

        [Pure]
        public void petrol_light_off()
        {
            Contract.Ensures(petrol_light == DashboardState.off);
            petrol_light = DashboardState.off;
            Console.WriteLine("Dashboard Petrol light is now off");
        }
    }
}
