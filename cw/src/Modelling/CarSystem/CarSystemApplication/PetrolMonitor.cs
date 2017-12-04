using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class PetrolMonitor
    {
        private readonly Random rand = new Random(DateTime.Now.Millisecond);

        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(rand != null);
        }


        public PetrolState get_petrol_level()
        {
            int num = rand.Next(2);
            PetrolState petrol_state;
            if (num == 1)
            {
                petrol_state = PetrolState.petrol_high;
                Console.WriteLine("Petrol State is High");
            }
            else
            {
                petrol_state = PetrolState.petrol_low;
                Console.WriteLine("Petrol State is Low");
            }
            return petrol_state;
        }
    }
}
