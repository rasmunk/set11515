using System.Diagnostics.Contracts;
using System.Diagnostics.CodeAnalysis;
using System;

namespace CarSystemApplication
{
    class Controller
    {

        // Imports
        private readonly EngineInterface engineinterface;
        private readonly BrakeInterface brakeinterface;
        private readonly Dashboard dashboard;

        // Sees
        private readonly Ignition ignition;
        private readonly OilMonitor oilmonitor;
        private readonly Pedals pedals;
        private readonly PetrolMonitor petrolmonitor;


        // Local Controller State variables
        private IgnitionState ignition_state = IgnitionState.withdrawn_key;
        private PedalState accelerator_state = PedalState.pedal_released;
        private PedalState brake_pedal_state = PedalState.pedal_released;
        private PetrolState petrol_state = PetrolState.petrol_high;
        private OilPressureState oil_pressure_state = OilPressureState.oil_pressure_low;
        private OilTemperatureState oil_temperature_state = OilTemperatureState.oil_temperature_low;

        // The constructor that the car system calls, It passes on the maximum speed value to the engine interface which passes it on to the SpeedMonitor
        public Controller(Ignition ignition, OilMonitor oilmonitor, Pedals pedals, PetrolMonitor petrolmonitor, int maximum_speed)
        {
            // sees -> insure the parameters are not null
            Contract.Requires(ignition != null);
            Contract.Requires(oilmonitor != null);
            Contract.Requires(pedals != null);
            Contract.Requires(petrolmonitor != null);

            this.ignition = ignition;
            this.oilmonitor = oilmonitor;
            this.pedals = pedals;
            this.petrolmonitor = petrolmonitor;
            // Imports
            brakeinterface = new BrakeInterface();
            engineinterface = new EngineInterface(maximum_speed);
            dashboard = new Dashboard();
        }

        // Invariant
        [ContractInvariantMethod]
        private void Invariant()
        {
            // Make sure every import and sees is initialized
            Contract.Invariant(ignition != null);
            Contract.Invariant(oilmonitor != null);
            Contract.Invariant(pedals != null);
            Contract.Invariant(petrolmonitor != null);
            Contract.Invariant(brakeinterface != null);
            Contract.Invariant(engineinterface != null);
            Contract.Invariant(dashboard != null);

            // a => b is equivalent to (not a) or b
            // When the key is not in the ignition the engine should be off
            Contract.Invariant(!(ignition_state == IgnitionState.withdrawn_key) || engineinterface.engine_state == EngineState.engine_off);
            // The engine can only be on when the key is inserted.
            Contract.Invariant(!(engineinterface.engine_state == EngineState.engine_on) || ignition_state == IgnitionState.inserted_key);
            // If the engine has failed and the brakes havn't failed -> the brakes should be applied
            Contract.Invariant(!(engineinterface.engine_good == false && brakeinterface.brakes_good == true) || brakeinterface.brake_status == BrakeState.brakes_applied);
            // When the brakes have failed the engine should be turned off
            Contract.Invariant(!(brakeinterface.brakes_good == false) || engineinterface.engine_state == EngineState.engine_off);
            // When the petrol is low the dashboard petrol light should be turned on
            Contract.Invariant(!(petrol_state == PetrolState.petrol_low) || dashboard.petrol_light == DashboardState.on);
            // When the oil temperature is high the dashboard oil temperature light should be turned on
            Contract.Invariant(!(oil_temperature_state == OilTemperatureState.oil_temperature_high) || dashboard.oil_temperature_light == DashboardState.on);
            // When the oil pressure is high the dashboard oil pressure light warning must be on
            Contract.Invariant(!(oil_pressure_state == OilPressureState.oil_pressure_high) || dashboard.oil_pressure_light == DashboardState.on);
        }

        // The operation method which simulates the car system.
        public void operate()
        {
            ignition_state = ignition.get_key_status();
            if (ignition_state == IgnitionState.withdrawn_key)
            {
                engineinterface.engine_turn_off();
            }
            else
            {
                // Get the current levels of the petrol and oil sensors.
                petrol_state = petrolmonitor.get_petrol_level();
                oil_pressure_state = oilmonitor.get_pressure_level();
                oil_temperature_state = oilmonitor.get_temperature_level();
                
                if (petrol_state == PetrolState.petrol_low)
                {
                    dashboard.petrol_light_on();
                }
                // Explicit to let CC know???
                else
                {
                    dashboard.petrol_light_off();
                }
               

                // Check Oil Pressure State
                if (oil_pressure_state == OilPressureState.oil_pressure_high)
                {
                    dashboard.oil_pressure_light_on();
                }
                else
                {
                    dashboard.oil_pressure_light_off();
                }

                // Check Oil Temperature State
                if (oil_temperature_state == OilTemperatureState.oil_temperature_high)
                {
                    dashboard.oil_temperature_light_on();
                }
                else
                {
                    dashboard.oil_temperature_light_off();
                }

                // Turn on engine if it is off
                engineinterface.check_engine_state();
                if (engineinterface.engine_state == EngineState.engine_off && engineinterface.engine_good)
                {
                    engineinterface.engine_turn_on();
                }

                // Check the state of the engine, brakes and the two set of pedals.
                engineinterface.check_engine_state();
                brakeinterface.check_brake_state();
                accelerator_state = pedals.get_accelerator_status();
                brake_pedal_state = pedals.get_brake_pedal_status();

                // If the engine has failed or the brake pedals have been pressed -> apply the brakes aslong has they haven't failed
                if ((engineinterface.engine_good == false || brake_pedal_state == PedalState.pedal_pressed) && brakeinterface.brakes_good)
                {
                    brakeinterface.apply_brakes();
                    Console.WriteLine("Decreasing speed");
                    engineinterface.decrease_speed(1);
                }

                // If the brakes have failed
                if (brakeinterface.brakes_good == false)
                {
                    engineinterface.engine_turn_off();
                    Contract.Assert(engineinterface.engine_state == EngineState.engine_off && brakeinterface.brakes_good == false);
                }
                else // Brakes are good, engine might still have failed though  -> check whether to increase or decrease the speed 
                {

                    // Only release the brakes if the engine hasen't failed
                    if (brake_pedal_state == PedalState.pedal_released && engineinterface.engine_good)
                    {
                        brakeinterface.release_brakes();
                    }

                    if (accelerator_state == PedalState.pedal_released)
                    {
                        engineinterface.decrease_speed(1);  
                    }
                    // Increase speed if the accelerator is pressed and the engine is on
                    if (accelerator_state == PedalState.pedal_pressed && engineinterface.engine_state == EngineState.engine_on)
                    {
                        engineinterface.increase_speed(1);
                    }
                }
            }
        }


        /* Test Methods */
        // Some of these methods by design brake the invariant on the controller -> hence the ContractVerification(false) -> don't try and prove them
        // Also those that don't aren't being called while the operate loop is being called -> dont account for them
        // Test whether the engine can be turned on while the key had been withdrawn
        [ContractVerification(false)]
        public void key_withdrawn_test()
        {
            ignition_state = IgnitionState.withdrawn_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
        }


        // expected to be good 
        [ContractVerification(false)]
        public void key_with_key_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
        }


        // Expected to fail
        [ContractVerification(false)]
        public void engine_failure_brakes_good_not_applied_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
            brakeinterface.set_brake_good();
            engineinterface.set_engine_bad();
            brakeinterface.release_brakes();
        }

        // expected to be good
        [ContractVerification(false)]
        public void engine_failure_brakes_good_applied_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
            brakeinterface.set_brake_good();
            engineinterface.set_engine_bad();
            brakeinterface.apply_brakes();
        }

        // Expected to fail
        [ContractVerification(false)]
        public void brakes_failed_engine_running_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
            brakeinterface.set_brake_bad();
        }

        // expected to be good
        [ContractVerification(false)]
        public void brakes_failed_engine_off_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
            brakeinterface.set_brake_bad();
            engineinterface.engine_turn_off();
        }


        // Expected to fail
        [ContractVerification(false)]
        public int failed_to_go_above_maximum_speed_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            engineinterface.engine_turn_on();
            brakeinterface.set_brake_good();
            engineinterface.speedmonitor.set_newspeed(0);
            int i = 0;
            // go 1 above the maximum speed
            while (i <= engineinterface.speedmonitor.maximum_speed)
            {
                engineinterface.increase_speed(1);
                i++;
            }
            return engineinterface.speedmonitor.get_current_speed();
        }

        // Expected to be good
        // Expected to return a value of 0 == the end speed after the test
        [ContractVerification(false)]
        public int go_to_maximum_speed_and_to_zero_test()
        {
            ignition_state = IgnitionState.inserted_key;
            engineinterface.set_engine_good();
            brakeinterface.set_brake_good();
            engineinterface.engine_turn_on();
            engineinterface.speedmonitor.set_newspeed(0);
            int i = 0;
            // go to the maximum speed
            while (i < engineinterface.speedmonitor.maximum_speed)
            {
                engineinterface.increase_speed(1);
                i++;
            }
            // go down to 0 again
            while (i > 0)
            {
                engineinterface.decrease_speed(1);
                i--;
            }
            return engineinterface.speedmonitor.get_current_speed();
        }

        // Expected to fail
        [ContractVerification(false)]
        public void petrol_low_fail_dashboard_light_test()
        {
            petrol_state = PetrolState.petrol_low;
            dashboard.petrol_light_off();
        }

        // Expected to be good
        [ContractVerification(false)]
        public void petrol_low_dashboard_light()
        {
            petrol_state = PetrolState.petrol_low;
            dashboard.petrol_light_on();
        }

        // Expected to fail
        [ContractVerification(false)]
        public void oil_temp_high_fail_dashboard_light_test()
        {
            oil_temperature_state = OilTemperatureState.oil_temperature_high;
            dashboard.oil_temperature_light_off();
        }

        // Expected to be good
        [ContractVerification(false)]
        public void oil_temp_high_dashboard_light_test()
        {
            oil_temperature_state = OilTemperatureState.oil_temperature_high;
            dashboard.oil_temperature_light_on();
        }

        // Expected to fail
        [ContractVerification(false)]
        public void oil_pressure_high_fail_dashboard_light_test()
        {
            oil_pressure_state = OilPressureState.oil_pressure_high;
            dashboard.oil_pressure_light_off();
        }


        // Expected to be good
        [ContractVerification(false)]
        public void oil_pressure_high_dashboard_light_test()
        {
            oil_pressure_state = OilPressureState.oil_pressure_high;
            dashboard.oil_pressure_light_on();
        }

    }
}



