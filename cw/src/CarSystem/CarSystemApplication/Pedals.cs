using System;
using System.Diagnostics.Contracts;

namespace CarSystemApplication
{
    class Pedals
    {
        private PedalState accelerator_status, brake_pedal_status = PedalState.pedal_released;


        // Checks whether the member variables have a valid enum index number.
        // Relies on the compiler to validate that the right enum is used.
        [ContractInvariantMethod]
        private void Invariant()
        {
            Contract.Invariant(Enum.IsDefined(typeof(PedalState), accelerator_status));
            Contract.Invariant(Enum.IsDefined(typeof(PedalState), brake_pedal_status));
        }

        
        // binary state return -> returns the oppesit of what it was previously
        public PedalState get_accelerator_status()
        {
            if (accelerator_status == PedalState.pedal_released)
            {
                accelerator_status = PedalState.pedal_pressed;
                Console.WriteLine("Accelerator is now pressed");
            }
            else
            {
                accelerator_status = PedalState.pedal_released;
                Console.WriteLine("Accelerator is now released");
            }
            return accelerator_status;
        }

        // binary state return -> returns the oppesit of what it was previously
        public PedalState get_brake_pedal_status()
        {
            if (brake_pedal_status == PedalState.pedal_pressed)
            {
                brake_pedal_status = PedalState.pedal_released;
                Console.WriteLine("BrakePedal is now released");
            }
            else
            {
                brake_pedal_status = PedalState.pedal_pressed;
                Console.WriteLine("BrakePedal is now pressed");
            }
            return brake_pedal_status;
        }
    }
}
