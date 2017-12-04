using System;
using CarSystemApplication;

using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CarSystemTests
{
    [TestClass]
    public class CarSystemTests
    {
        // If the action 
        private const string ContractExceptionName = "System.Diagnostics.Contracts.__ContractsRuntime+ContractException";
        const int maxspeed = 100;

        // Test whether the engine can be turned on while the key had been withdrawn
        [TestMethod]
        public void FailToStartEngineWithoutKey()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.key_withdrawn_test);
            ExceptContractFailure(myAction);
        }

        // Can the engine start with the key in the ignition
        [TestMethod]
        public void StartEngineWithKey()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.key_with_key_test);
            ExpectNoContractFailure(myAction);
        }

        // Is the invariant broken if the brakes are released when the engine has failed
        [TestMethod]
        public void FailToReleaseBrakesWhenEngineFailed()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.engine_failure_brakes_good_not_applied_test);
            ExceptContractFailure(myAction);
        }

        // Does applying the brakes when the engine has failed produce any errors
        [TestMethod]
        public void ApplyBrakesWhenEngineFailed()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.engine_failure_brakes_good_applied_test);
            ExpectNoContractFailure(myAction);
        }

        // Is the invariant broken if engine keeps running when the brakes have failed.
        [TestMethod]
        public void FailRunningEngineWhenBrakesFailed()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.brakes_failed_engine_running_test);
            ExceptContractFailure(myAction);
        }

        // Does turning off the engine when the brakes have failed produce any errors
        [TestMethod]
        public void TurnOffEngineWhenBrakesFailed()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.brakes_failed_engine_off_test);
            ExpectNoContractFailure(myAction);
        }

        // If the controller instructs the engine to go above the maximum speed does it stop at the maximum speed
        [TestMethod]
        public void FailToGoAboveTheMaximumSpeed()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Func<int> myFunc = new Func<int>(carsystem.failed_to_go_above_maximum_speed_test);
            int result = myFunc();
            Assert.AreEqual(maxspeed, myFunc());
        }

        // Going to the maximum speed and down to 0 again work as expected.
        [TestMethod]
        public void GoToMaximumSpeedAndBackDownToZero()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Func<int> myFunc = new Func<int>(carsystem.go_to_maximum_speed_and_to_zero_test);
            Assert.AreEqual(0, myFunc());
        }

        // Is the invariant broken if the petrol is low and the dashboard light isen't turned on
        [TestMethod]
        public void FailPetrolLowShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.petrol_low_fail_dashboard_light_test);
            ExceptContractFailure(myAction);
        }

        // Does turning on the dashboard warning light produce any errors when the petrol is low
        [TestMethod]
        public void PetrolLowShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.petrol_low_dashboard_light);
            ExpectNoContractFailure(myAction);
        }

        // Is the invariant broken if the oil temperature is low and the dashboard light isen't turned on
        [TestMethod]
        public void FailOilTempHighShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.oil_temp_high_fail_dashboard_light_test);
            ExceptContractFailure(myAction);
        }

        // Does turning on the dashboard warning light produce any errors when the oil temperature is high
        [TestMethod]
        public void OilTempHighShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.oil_temp_high_dashboard_light_test);
            ExpectNoContractFailure(myAction);
        }

        // Is the invariant broken if the oil pressure is low and the dashboard light isen't turned on
        [TestMethod]
        public void FailOilPresHighShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.oil_pressure_high_fail_dashboard_light_test);
            ExceptContractFailure(myAction);
        }

        // Does turning on the dashboard warning light produce any errors when the oil pressure is high
        [TestMethod]
        public void OilPresHighShowDashboardLight()
        {
            CarSystem carsystem = new CarSystem(maxspeed);
            Action myAction = new Action(carsystem.oil_pressure_high_dashboard_light_test);
            ExpectNoContractFailure(myAction);
        }
        




        // http://stackoverflow.com/questions/2639960/how-come-you-cannot-catch-code-contract-exceptions
        public static void ExceptContractFailure(Action action)
        {
            try
            {
                action();
                Assert.Fail("Expected Contract Failure");
            }
            catch (Exception e)
            {
                if (e.GetType().FullName != ContractExceptionName)
                {
                    throw;
                }
            }
        }

        public static void ExpectNoContractFailure(Action action)
        {
            try
            {
                action();
            } catch (Exception e)
            {
                Assert.Fail("Didn't expect any exceptions, however: " + e.Message + " was thrown");
            }
        }
    }
}
