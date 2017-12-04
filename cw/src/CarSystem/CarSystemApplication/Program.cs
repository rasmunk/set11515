using System;

namespace CarSystemApplication
{
    class Program
    {
        static void Main(string[] args)
        {
            // The maxmimum speed that the car can drive
            const int maximum_speed = 100;
            // Instantiate a new CarSystem
            CarSystem carsystem = new CarSystem(maximum_speed);
            // Run the car system for a 1000 iterations
            for (int i = 0; i < 1000000; ++i)
            {
                Console.WriteLine("**********");
                carsystem.operate();
                Console.WriteLine("**********");
                if (i > 1000)
                {
                    Console.WriteLine("Test");
                }
            }
        }
    }
}
