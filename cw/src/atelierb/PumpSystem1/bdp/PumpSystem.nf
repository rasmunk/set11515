Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PumpSystem))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PumpSystem))==(Machine(PumpSystem));
  Level(Machine(PumpSystem))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PumpSystem)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PumpSystem))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PumpSystem))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PumpSystem))==(Interface,Controller,MethaneMonitor,WaterMonitor);
  List_Includes(Machine(PumpSystem))==(WaterMonitor,MethaneMonitor,Controller,Interface)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PumpSystem))==(enable,disable,operate)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PumpSystem))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PumpSystem))==(?);
  Context_List_Variables(Machine(PumpSystem))==(?);
  Abstract_List_Variables(Machine(PumpSystem))==(?);
  Local_List_Variables(Machine(PumpSystem))==(?);
  List_Variables(Machine(PumpSystem))==(current_status);
  External_List_Variables(Machine(PumpSystem))==(current_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PumpSystem))==(?);
  Abstract_List_VisibleVariables(Machine(PumpSystem))==(?);
  External_List_VisibleVariables(Machine(PumpSystem))==(?);
  Expanded_List_VisibleVariables(Machine(PumpSystem))==(?);
  List_VisibleVariables(Machine(PumpSystem))==(?);
  Internal_List_VisibleVariables(Machine(PumpSystem))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PumpSystem))==(btrue);
  Gluing_List_Invariant(Machine(PumpSystem))==(btrue);
  Abstract_List_Invariant(Machine(PumpSystem))==(btrue);
  Expanded_List_Invariant(Machine(PumpSystem))==(current_status: INTERFACE_STATUS);
  Context_List_Invariant(Machine(PumpSystem))==(btrue);
  List_Invariant(Machine(PumpSystem))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(PumpSystem))==(btrue);
  Expanded_List_Assertions(Machine(PumpSystem))==(btrue);
  Context_List_Assertions(Machine(PumpSystem))==(btrue);
  List_Assertions(Machine(PumpSystem))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PumpSystem))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PumpSystem))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PumpSystem))==(current_status:=disabled);
  Context_List_Initialisation(Machine(PumpSystem))==(skip);
  List_Initialisation(Machine(PumpSystem))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PumpSystem))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(PumpSystem),Machine(WaterMonitor))==(?);
  List_Instanciated_Parameters(Machine(PumpSystem),Machine(MethaneMonitor))==(?);
  List_Instanciated_Parameters(Machine(PumpSystem),Machine(Controller))==(?);
  List_Instanciated_Parameters(Machine(PumpSystem),Machine(Interface))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(PumpSystem),Machine(Interface))==(btrue);
  List_Context_Constraints(Machine(PumpSystem))==(btrue);
  List_Constraints(Machine(PumpSystem))==(btrue);
  List_Constraints(Machine(PumpSystem),Machine(Controller))==(btrue);
  List_Constraints(Machine(PumpSystem),Machine(MethaneMonitor))==(btrue);
  List_Constraints(Machine(PumpSystem),Machine(WaterMonitor))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PumpSystem))==(operate,enable,disable);
  List_Operations(Machine(PumpSystem))==(operate,enable,disable)
END
&
THEORY ListInputX IS
  List_Input(Machine(PumpSystem),disable)==(?);
  List_Input(Machine(PumpSystem),enable)==(?);
  List_Input(Machine(PumpSystem),operate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PumpSystem),disable)==(?);
  List_Output(Machine(PumpSystem),enable)==(?);
  List_Output(Machine(PumpSystem),operate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PumpSystem),disable)==(disable);
  List_Header(Machine(PumpSystem),enable)==(enable);
  List_Header(Machine(PumpSystem),operate)==(operate)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(PumpSystem),disable)==(btrue);
  List_Precondition(Machine(PumpSystem),disable)==(btrue);
  Own_Precondition(Machine(PumpSystem),enable)==(btrue);
  List_Precondition(Machine(PumpSystem),enable)==(btrue);
  Own_Precondition(Machine(PumpSystem),operate)==(btrue);
  List_Precondition(Machine(PumpSystem),operate)==(btrue)
END
&
THEORY ListSubstitutionX IS
  List_Substitution(Machine(PumpSystem),disable)==(current_status:=disabled);
  Expanded_List_Substitution(Machine(PumpSystem),disable)==(btrue | current_status:=disabled);
  List_Substitution(Machine(PumpSystem),enable)==(current_status:=enabled);
  Expanded_List_Substitution(Machine(PumpSystem),enable)==(btrue | current_status:=enabled);
  List_Substitution(Machine(PumpSystem),operate)==(skip);
  Expanded_List_Substitution(Machine(PumpSystem),operate)==(btrue | skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PumpSystem))==(?);
  Inherited_List_Constants(Machine(PumpSystem))==(?);
  List_Constants(Machine(PumpSystem))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(PumpSystem),INTERFACE_STATUS)==({enabled,disabled});
  Context_List_Enumerated(Machine(PumpSystem))==(?);
  Context_List_Defered(Machine(PumpSystem))==(?);
  Context_List_Sets(Machine(PumpSystem))==(?);
  List_Valuable_Sets(Machine(PumpSystem))==(?);
  Inherited_List_Enumerated(Machine(PumpSystem))==(WATER_LEVEL,METHANE_LEVEL,INTERFACE_STATUS);
  Inherited_List_Defered(Machine(PumpSystem))==(?);
  Inherited_List_Sets(Machine(PumpSystem))==(WATER_LEVEL,METHANE_LEVEL,INTERFACE_STATUS);
  List_Enumerated(Machine(PumpSystem))==(?);
  List_Defered(Machine(PumpSystem))==(?);
  List_Sets(Machine(PumpSystem))==(?);
  Set_Definition(Machine(PumpSystem),METHANE_LEVEL)==({methane_high,methane_low});
  Set_Definition(Machine(PumpSystem),WATER_LEVEL)==({water_high,water_low})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PumpSystem))==(?);
  Expanded_List_HiddenConstants(Machine(PumpSystem))==(?);
  List_HiddenConstants(Machine(PumpSystem))==(?);
  External_List_HiddenConstants(Machine(PumpSystem))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PumpSystem))==(btrue);
  Context_List_Properties(Machine(PumpSystem))==(btrue);
  Inherited_List_Properties(Machine(PumpSystem))==(WATER_LEVEL: FIN(INTEGER) & not(WATER_LEVEL = {}) & METHANE_LEVEL: FIN(INTEGER) & not(METHANE_LEVEL = {}) & INTERFACE_STATUS: FIN(INTEGER) & not(INTERFACE_STATUS = {}));
  List_Properties(Machine(PumpSystem))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PumpSystem),disable)==(?);
  List_ANY_Var(Machine(PumpSystem),enable)==(?);
  List_ANY_Var(Machine(PumpSystem),operate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PumpSystem)) == (? | INTERFACE_STATUS,enabled,disabled,METHANE_LEVEL,methane_high,methane_low,WATER_LEVEL,water_high,water_low | ? | V,current_status | ? | enable,disable,operate | included(Machine(WaterMonitor)),included(Machine(MethaneMonitor)),included(Machine(Controller)),included(Machine(Interface)) | ? | PumpSystem);
  List_Of_HiddenCst_Ids(Machine(PumpSystem)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PumpSystem)) == (?);
  List_Of_VisibleVar_Ids(Machine(PumpSystem)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PumpSystem)) == (?: ?);
  List_Of_Ids(Machine(Interface)) == (INTERFACE_STATUS,enabled,disabled | ? | current_status | ? | enable,disable,get_interface_status | ? | ? | ? | Interface);
  List_Of_HiddenCst_Ids(Machine(Interface)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Interface)) == (?);
  List_Of_VisibleVar_Ids(Machine(Interface)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Interface)) == (?: ?);
  List_Of_Ids(Machine(Controller)) == (? | ? | ? | ? | operate | ? | ? | ? | Controller);
  List_Of_HiddenCst_Ids(Machine(Controller)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Controller)) == (?);
  List_Of_VisibleVar_Ids(Machine(Controller)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Controller)) == (?: ?);
  List_Of_Ids(Machine(MethaneMonitor)) == (METHANE_LEVEL,methane_high,methane_low | ? | ? | ? | get_methane_level | ? | ? | ? | MethaneMonitor);
  List_Of_HiddenCst_Ids(Machine(MethaneMonitor)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MethaneMonitor)) == (?);
  List_Of_VisibleVar_Ids(Machine(MethaneMonitor)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MethaneMonitor)) == (?: ?);
  List_Of_Ids(Machine(WaterMonitor)) == (WATER_LEVEL,water_high,water_low | ? | ? | ? | get_water_level | ? | ? | ? | WaterMonitor);
  List_Of_HiddenCst_Ids(Machine(WaterMonitor)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(WaterMonitor)) == (?);
  List_Of_VisibleVar_Ids(Machine(WaterMonitor)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(WaterMonitor)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(PumpSystem)) == (Type(WATER_LEVEL) == Cst(SetOf(etype(WATER_LEVEL,0,1)));Type(METHANE_LEVEL) == Cst(SetOf(etype(METHANE_LEVEL,0,1)));Type(INTERFACE_STATUS) == Cst(SetOf(etype(INTERFACE_STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(PumpSystem)) == (Type(water_low) == Cst(etype(WATER_LEVEL,0,1));Type(water_high) == Cst(etype(WATER_LEVEL,0,1));Type(methane_low) == Cst(etype(METHANE_LEVEL,0,1));Type(methane_high) == Cst(etype(METHANE_LEVEL,0,1));Type(disabled) == Cst(etype(INTERFACE_STATUS,0,1));Type(enabled) == Cst(etype(INTERFACE_STATUS,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PumpSystem)) == (Type(current_status) == Mvl(etype(INTERFACE_STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PumpSystem)) == (Type(enable) == Cst(No_type,No_type);Type(disable) == Cst(No_type,No_type);Type(operate) == Cst(No_type,No_type));
  Observers(Machine(PumpSystem)) == (Type(operate) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
