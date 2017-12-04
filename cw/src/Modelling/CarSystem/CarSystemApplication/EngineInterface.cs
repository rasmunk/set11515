using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class EngineInterface
    {
        // Imports
        // Speedmonitor needs to be public because the increase_speed method Contract requires that the caller can call the speedmonitors methods
        public readonly SpeedMonitor speedmonitor;
        // Random number generator -> seed it with the current system time
        private readonly Random rand = new Random(DateTime.Now.Millisecond);

        // The EngineInterface class is imported into the controller -> hence it must be able to get the internal engine_state value directly.
        // However the caller can only change the state of the engine by using the public methods
        public EngineState engine_state { [Pure] get; set; }
        // Boolean to evaluate whether the engine still works or not
        public bool engine_good { [Pure] get; private set; }

        // Tells the instantiator that it can rely on this object having set the engine state to being off upon completion and that the engine is good
        public EngineInterface(int maximum_speed)
        {
            Contract.Requires(maximum_speed > 0);
            //Contract.Ensures((engine_state == EngineState.engine_off) && engine_good && (speedmonitor.maximum_speed > 0) && (speedmonitor.speed == 0) && (speedmonitor != null));
            Contract.Ensures(engine_state == EngineState.engine_off);
            Contract.Ensures(engine_good);
            Contract.Ensures(speedmonitor.maximum_speed > 0);
            Contract.Ensures(speedmonitor != null);
            speedmonitor = new SpeedMonitor(maximum_speed);
            engine_turn_off();
            engine_good = true;
        }

        [ContractInvariantMethod]
        private void Invariant()
        {
            // imports can't be null
            Contract.Invariant(speedmonitor != null);
            Contract.Invariant(rand != null);
            Contract.Invariant(Enum.IsDefined(typeof(EngineState), engine_state));
        }

        // The name get_engine_state clashes with the getter method standard -> hence _internal()
        // Either return the state that the engine was set to previously, or change the state to failed, 50/50 chance.
        public void check_engine_state()
        {
            Contract.Ensures(engine_good || engine_good == false);
            Console.WriteLine("Engine state is being checked");
            int num = rand.Next(2);
            if (num == 1)
            {
                this.set_engine_good();
            } else
            {
                this.set_engine_bad();
            }
        }

        [Pure]
        public void engine_turn_on()
        {
            // Making it clear to CC what postcondition it can expect the internal engine_state to be in after executing this method 
            Contract.Requires(engine_good);
            Contract.Ensures(engine_state == EngineState.engine_on && engine_good);
            engine_state = EngineState.engine_on;
            Console.WriteLine("Engine has been turned on");
        }

        // Method will only turn off the engine -> promise not any other state
        [Pure]
        public void engine_turn_off()
        {
            // Making it clear to CC what postcondition it can expect the internal engine_state to be in after executing this method 
            Contract.Ensures(engine_state == EngineState.engine_off);
            engine_state = EngineState.engine_off;
            Console.WriteLine("Engine has been turned off");
        }

        // Method dosen't alter the engineinterface state, only the speed monitor
        // Relies on the associated speed monitor object to decrease, increase or get the current speed of the car
        [Pure]
        public void increase_speed(int speed)
        {
            // We need to check that the speedmonitors current speed is greater than 0 -> else the contract can't be proven
            int newspeed = speedmonitor.get_current_speed() + speed;
            if (newspeed >= 0 && (newspeed <= speedmonitor.maximum_speed))
            {
                speedmonitor.set_newspeed(newspeed);
                Console.WriteLine("Speed is now: " + speedmonitor.get_current_speed());
            }
        }

        [Pure] // Method dosen't alter the engineinterface state only the speed monitor speed variable
        public void decrease_speed(int speed)
        {
            int newspeed = speedmonitor.get_current_speed() - speed;
            if ((newspeed >= 0) && (newspeed <= speedmonitor.maximum_speed))
            {
                speedmonitor.set_newspeed(newspeed);
                Console.WriteLine("Speed is now: " + speedmonitor.get_current_speed());
            }
        }

        // These two methods are used for testing purposes
        [Pure]
        public void set_engine_good()
        {
            Contract.Ensures(engine_good);
            engine_good = true;
            Console.WriteLine("Engine is good");
        }

        [Pure]
        public void set_engine_bad()
        {
            Contract.Ensures(!engine_good);
            engine_good = false;
            Console.WriteLine("Engine has failed");
        }
    }
}
