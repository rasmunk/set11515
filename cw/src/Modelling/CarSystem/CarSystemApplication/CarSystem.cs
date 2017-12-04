using System.Diagnostics.Contracts;

namespace CarSystemApplication
{

    public class CarSystem
    {
        private readonly Ignition ignition;
        private readonly OilMonitor oilmonitor;
        private readonly Pedals pedals;
        private readonly PetrolMonitor petrolmonitor;
        private readonly Controller controller;

        public CarSystem(int maximum_speed)
        {
            Contract.Requires(maximum_speed > 0);
            ignition = new Ignition();
            oilmonitor = new OilMonitor();
            pedals = new Pedals();
            petrolmonitor = new PetrolMonitor();
            controller = new Controller(ignition, oilmonitor, pedals, petrolmonitor, maximum_speed);
        }

        // Invariant
        [ContractInvariantMethod]
        private void Invariant()
        {
            // This is to help the CC check.  Ensure components aren't null
            Contract.Invariant(ignition != null);
            Contract.Invariant(oilmonitor != null);
            Contract.Invariant(pedals != null);
            Contract.Invariant(petrolmonitor != null);
            Contract.Invariant(controller != null);
        }

        public void operate()
        {
            controller.operate();
        }



        /* Methods to call the controller test methods */

        public void key_withdrawn_test()
        {
            controller.key_withdrawn_test();
        }

        public void key_with_key_test()
        {
            controller.key_with_key_test();
        }

        public void engine_failure_brakes_good_not_applied_test()
        {
            controller.engine_failure_brakes_good_not_applied_test();
        }

        public void engine_failure_brakes_good_applied_test()
        {
            controller.engine_failure_brakes_good_applied_test();
        }

        public void brakes_failed_engine_running_test()
        {
            controller.brakes_failed_engine_running_test();
        }

        public void brakes_failed_engine_off_test()
        {
            controller.brakes_failed_engine_off_test();
        }

        public int failed_to_go_above_maximum_speed_test()
        {
            return controller.failed_to_go_above_maximum_speed_test();
        }

        public int go_to_maximum_speed_and_to_zero_test()
        {
            return controller.go_to_maximum_speed_and_to_zero_test();
        }

        public void petrol_low_fail_dashboard_light_test()
        {
            controller.petrol_low_fail_dashboard_light_test();
        }

        public void petrol_low_dashboard_light()
        {
            controller.petrol_low_dashboard_light();
        }

        public void oil_temp_high_fail_dashboard_light_test()
        {
            controller.oil_temp_high_fail_dashboard_light_test();
        }

        public void oil_temp_high_dashboard_light_test()
        {
            controller.oil_temp_high_dashboard_light_test();
        }

        public void oil_pressure_high_fail_dashboard_light_test()
        {
            controller.oil_pressure_high_fail_dashboard_light_test();
        }

        public void oil_pressure_high_dashboard_light_test()
        {
            controller.oil_pressure_high_dashboard_light_test();
        }
    }
}
