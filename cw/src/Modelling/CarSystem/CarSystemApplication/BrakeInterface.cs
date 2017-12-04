using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class BrakeInterface
    {
        // Internal variable to keep track of what the brakes were set to previously.
        public BrakeState brake_status { [Pure] get; private set; }
        public bool brakes_good { get; private set; }

        // Random number generator -> seed it with the current system time
        private readonly Random rand = new Random(DateTime.Now.Millisecond);

        public BrakeInterface()
        {
            Contract.Ensures(brake_status == BrakeState.brakes_released && brakes_good);
            brakes_good = true;
            release_brakes();
        }


        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(rand != null);
            Contract.Invariant(Enum.IsDefined(typeof(BrakeState), brake_status));
        }

        // Either return the state that the brakes was set to previously, or change the state to failed, 50/50 chance.
        public void check_brake_state()
        {
            Contract.Ensures(brakes_good || brakes_good == false);
            // Used for random selection between switching the state to failed.
            Console.WriteLine("The Brakes are being checked");
            int num = rand.Next(2);
            if (num == 1)
            {
                set_brake_good();
            }
            else
            {
                set_brake_bad();
            }
        }

        public void apply_brakes()
        {
            Contract.Requires(brakes_good);
            Contract.Ensures(brake_status == BrakeState.brakes_applied && brakes_good);
            brake_status = BrakeState.brakes_applied;
            Console.WriteLine("The Brakes have been applied");
        }

        public void release_brakes()
        {
            Contract.Requires(brakes_good);
            Contract.Ensures(brake_status == BrakeState.brakes_released && brakes_good);
            brake_status = BrakeState.brakes_released;
            Console.WriteLine("The brakes have been released");
        }

        // These two methods are used for testing purposes
        // Only changes the brakes_good state
        [Pure]
        public void set_brake_good()
        {
            Contract.Ensures(brakes_good);
            brakes_good = true;
            Console.WriteLine("The Brakes are good");
        }

        // Only change the brakes_good state
        [Pure]
        public void set_brake_bad()
        {
            Contract.Ensures(!brakes_good);
            brakes_good = false;
            Console.WriteLine("The Brakes have failed");
        }
    }
}
