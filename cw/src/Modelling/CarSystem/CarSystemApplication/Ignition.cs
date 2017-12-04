using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class Ignition
    {
        private IgnitionState key_status = IgnitionState.withdrawn_key;
        private readonly Random rand = new Random(DateTime.Now.Millisecond);

        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(rand != null);
            Contract.Invariant(Enum.IsDefined(typeof(IgnitionState), key_status));
        }

        public IgnitionState get_key_status()
        {
            int num = rand.Next(2);
            if (num == 1)
            {
                key_status = IgnitionState.withdrawn_key;
                Console.WriteLine("Key is withdrawn");
            }
            else
            {
                key_status = IgnitionState.inserted_key;
                Console.WriteLine("Key is inserted");
            }
            return key_status;
        }
    }

}
