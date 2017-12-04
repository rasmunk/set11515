using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class SpeedMonitor
    {
        // The maximum_speed and speed member variables have to be public so that the EngineInterface can verify
        // that when it calls the setspeed() function it doesn't violate the Required Contracts which ensures that the SpeedMonitors ContractInvariant isen't broken 
        public readonly int maximum_speed = 100;

        int speed;
        
        public SpeedMonitor(int maximum_speed)
        {
            Contract.Requires(maximum_speed > 0);
            Contract.Ensures(this.maximum_speed > 0);
            this.maximum_speed = maximum_speed;
            speed = 0;
        }

        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(speed >= 0);
            Contract.Invariant(speed <= maximum_speed);
            Contract.Invariant(maximum_speed > 0);
        }

        // Only returns the current speed -> donse't make any visible state changes
        [Pure]
        public int get_current_speed()
        {
            return speed;
        }


        [Pure]
        public void set_newspeed(int speed)
        {
            Contract.Requires(speed >= 0);
            Contract.Requires(speed <= this.maximum_speed);
            Contract.Ensures(this.speed == speed);
            this.speed = speed;
        }
    }
}
