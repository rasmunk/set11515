Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Controller_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Controller_i))==(Machine(Controller));
  Level(Implementation(Controller_i))==(1);
  Upper_Level(Implementation(Controller_i))==(Machine(Controller))
END
&
THEORY LoadedStructureX IS
  Implementation(Controller_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Controller_i))==(WaterMonitor,MethaneMonitor,Interface)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Controller_i))==(Pump);
  Inherited_List_Includes(Implementation(Controller_i))==(Pump)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Controller_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Controller_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Controller_i))==(?);
  Context_List_Variables(Implementation(Controller_i))==(?);
  Abstract_List_Variables(Implementation(Controller_i))==(?);
  Local_List_Variables(Implementation(Controller_i))==(?);
  List_Variables(Implementation(Controller_i))==(pump_status);
  External_List_Variables(Implementation(Controller_i))==(pump_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Controller_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Controller_i))==(?);
  External_List_VisibleVariables(Implementation(Controller_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Controller_i))==(?);
  List_VisibleVariables(Implementation(Controller_i))==(interface_state,methane_level,water_level);
  Internal_List_VisibleVariables(Implementation(Controller_i))==(interface_state,methane_level,water_level)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Controller_i))==(btrue);
  Abstract_List_Invariant(Implementation(Controller_i))==(btrue);
  Expanded_List_Invariant(Implementation(Controller_i))==(pump_status: PUMP_STATUS);
  Context_List_Invariant(Implementation(Controller_i))==(current_status: INTERFACE_STATUS);
  List_Invariant(Implementation(Controller_i))==(water_level: WATER_LEVEL & methane_level: METHANE_LEVEL & interface_state: INTERFACE_STATUS & (interface_state = enabled & methane_level = methane_high => pump_status = off) & (interface_state = enabled & methane_level = methane_low & water_level = water_high => pump_status = on) & (interface_state = enabled & methane_level = methane_low & water_level = water_low => pump_status = off) & (interface_state = disabled => pump_status = off))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Controller_i))==(btrue);
  Expanded_List_Assertions(Implementation(Controller_i))==(btrue);
  Context_List_Assertions(Implementation(Controller_i))==(btrue);
  List_Assertions(Implementation(Controller_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Controller_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Controller_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Controller_i))==(pump_status:=off;water_level:=water_low;methane_level:=methane_low;interface_state:=disabled);
  Context_List_Initialisation(Implementation(Controller_i))==(skip);
  List_Initialisation(Implementation(Controller_i))==(water_level:=water_low;methane_level:=methane_low;interface_state:=disabled)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Controller_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Controller_i),Machine(Pump))==(?);
  List_Instanciated_Parameters(Implementation(Controller_i),Machine(WaterMonitor))==(?);
  List_Instanciated_Parameters(Implementation(Controller_i),Machine(MethaneMonitor))==(?);
  List_Instanciated_Parameters(Implementation(Controller_i),Machine(Interface))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Controller_i),Machine(Pump))==(btrue);
  List_Constraints(Implementation(Controller_i))==(btrue);
  List_Context_Constraints(Implementation(Controller_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Controller_i))==(operate);
  List_Operations(Implementation(Controller_i))==(operate)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Controller_i),operate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Controller_i),operate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Controller_i),operate)==(operate)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Controller_i),operate)==(btrue);
  List_Precondition(Implementation(Controller_i),operate)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Controller_i),operate)==(btrue | (btrue | interface_state:=current_status);(interface_state = disabled ==> (btrue | pump_status:=off) [] not(interface_state = disabled) ==> ((btrue | @xx.(xx: WATER_LEVEL ==> water_level:=xx));(btrue | @xx.(xx: METHANE_LEVEL ==> methane_level:=xx));(methane_level = methane_high ==> (btrue | pump_status:=off) [] not(methane_level = methane_high) ==> (water_level = water_high ==> (btrue | pump_status:=on) [] not(water_level = water_high) ==> (btrue | pump_status:=off))))));
  List_Substitution(Implementation(Controller_i),operate)==(interface_state <-- get_interface_status;IF interface_state = disabled THEN pump_off ELSE BEGIN water_level <-- get_water_level;methane_level <-- get_methane_level;IF methane_level = methane_high THEN pump_off ELSE IF water_level = water_high THEN pump_on ELSE pump_off END END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Controller_i))==(?);
  Inherited_List_Constants(Implementation(Controller_i))==(?);
  List_Constants(Implementation(Controller_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Controller_i),PUMP_STATUS)==({on,off});
  Context_List_Enumerated(Implementation(Controller_i))==(WATER_LEVEL,METHANE_LEVEL,INTERFACE_STATUS);
  Context_List_Defered(Implementation(Controller_i))==(?);
  Context_List_Sets(Implementation(Controller_i))==(WATER_LEVEL,METHANE_LEVEL,INTERFACE_STATUS);
  List_Own_Enumerated(Implementation(Controller_i))==(?);
  List_Valuable_Sets(Implementation(Controller_i))==(?);
  Inherited_List_Enumerated(Implementation(Controller_i))==(PUMP_STATUS);
  Inherited_List_Defered(Implementation(Controller_i))==(?);
  Inherited_List_Sets(Implementation(Controller_i))==(PUMP_STATUS);
  List_Enumerated(Implementation(Controller_i))==(?);
  List_Defered(Implementation(Controller_i))==(?);
  List_Sets(Implementation(Controller_i))==(?);
  Set_Definition(Implementation(Controller_i),INTERFACE_STATUS)==({enabled,disabled});
  Set_Definition(Implementation(Controller_i),METHANE_LEVEL)==({methane_high,methane_low});
  Set_Definition(Implementation(Controller_i),WATER_LEVEL)==({water_high,water_low})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Controller_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Controller_i))==(?);
  List_HiddenConstants(Implementation(Controller_i))==(?);
  External_List_HiddenConstants(Implementation(Controller_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Controller_i))==(btrue);
  Context_List_Properties(Implementation(Controller_i))==(WATER_LEVEL: FIN(INTEGER) & not(WATER_LEVEL = {}) & METHANE_LEVEL: FIN(INTEGER) & not(METHANE_LEVEL = {}) & INTERFACE_STATUS: FIN(INTEGER) & not(INTERFACE_STATUS = {}));
  Inherited_List_Properties(Implementation(Controller_i))==(PUMP_STATUS: FIN(INTEGER) & not(PUMP_STATUS = {}));
  List_Properties(Implementation(Controller_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Controller_i))==(aa: aa);
  List_Values(Implementation(Controller_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Controller_i),Machine(Interface))==(enable,disable,get_interface_status);
  Seen_Context_List_Enumerated(Implementation(Controller_i))==(?);
  Seen_Context_List_Invariant(Implementation(Controller_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Controller_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Controller_i))==(btrue);
  Seen_List_Constraints(Implementation(Controller_i))==(btrue);
  Seen_List_Precondition(Implementation(Controller_i),get_interface_status)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(Controller_i),get_interface_status)==(ss:=current_status);
  Seen_List_Precondition(Implementation(Controller_i),disable)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(Controller_i),disable)==(current_status:=disabled);
  Seen_List_Precondition(Implementation(Controller_i),enable)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(Controller_i),enable)==(current_status:=enabled);
  Seen_List_Operations(Implementation(Controller_i),Machine(Interface))==(enable,disable,get_interface_status);
  Seen_Expanded_List_Invariant(Implementation(Controller_i),Machine(Interface))==(btrue);
  Seen_Internal_List_Operations(Implementation(Controller_i),Machine(MethaneMonitor))==(get_methane_level);
  Seen_List_Precondition(Implementation(Controller_i),get_methane_level)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(Controller_i),get_methane_level)==(@xx.(xx: METHANE_LEVEL ==> ss:=xx));
  Seen_List_Operations(Implementation(Controller_i),Machine(MethaneMonitor))==(get_methane_level);
  Seen_Expanded_List_Invariant(Implementation(Controller_i),Machine(MethaneMonitor))==(btrue);
  Seen_Internal_List_Operations(Implementation(Controller_i),Machine(WaterMonitor))==(get_water_level);
  Seen_List_Precondition(Implementation(Controller_i),get_water_level)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(Controller_i),get_water_level)==(@xx.(xx: WATER_LEVEL ==> ss:=xx));
  Seen_List_Operations(Implementation(Controller_i),Machine(WaterMonitor))==(get_water_level);
  Seen_Expanded_List_Invariant(Implementation(Controller_i),Machine(WaterMonitor))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Controller_i),Machine(Pump))==(pump_on,pump_off);
  List_Included_Operations(Implementation(Controller_i),Machine(Interface))==(enable,disable,get_interface_status);
  List_Included_Operations(Implementation(Controller_i),Machine(MethaneMonitor))==(get_methane_level);
  List_Included_Operations(Implementation(Controller_i),Machine(WaterMonitor))==(get_water_level)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Controller_i))==(Type(water_level) == Mvv(etype(WATER_LEVEL,?,?));Type(methane_level) == Mvv(etype(METHANE_LEVEL,?,?));Type(interface_state) == Mvv(etype(INTERFACE_STATUS,?,?)));
  Operations(Implementation(Controller_i))==(Type(operate) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants_Env(Implementation(Controller_i),Machine(Pump))==(Type(on) == Cst(etype(PUMP_STATUS,0,1));Type(off) == Cst(etype(PUMP_STATUS,0,1)));
  Enumerate_Definition(Implementation(Controller_i),Machine(Pump),PUMP_STATUS)==({on,off});
  List_Constants_Env(Implementation(Controller_i),Machine(Interface))==(Type(enabled) == Cst(etype(INTERFACE_STATUS,0,1));Type(disabled) == Cst(etype(INTERFACE_STATUS,0,1)));
  Enumerate_Definition(Implementation(Controller_i),Machine(Interface),INTERFACE_STATUS)==({enabled,disabled});
  List_Constants_Env(Implementation(Controller_i),Machine(MethaneMonitor))==(Type(methane_high) == Cst(etype(METHANE_LEVEL,0,1));Type(methane_low) == Cst(etype(METHANE_LEVEL,0,1)));
  Enumerate_Definition(Implementation(Controller_i),Machine(MethaneMonitor),METHANE_LEVEL)==({methane_high,methane_low});
  List_Constants_Env(Implementation(Controller_i),Machine(WaterMonitor))==(Type(water_high) == Cst(etype(WATER_LEVEL,0,1));Type(water_low) == Cst(etype(WATER_LEVEL,0,1)));
  Enumerate_Definition(Implementation(Controller_i),Machine(WaterMonitor),WATER_LEVEL)==({water_high,water_low})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Controller_i)) == (? | PUMP_STATUS,on,off | ? | pump_status | operate | ? | seen(Machine(WaterMonitor)),seen(Machine(MethaneMonitor)),seen(Machine(Interface)),imported(Machine(Pump)) | ? | Controller_i);
  List_Of_HiddenCst_Ids(Implementation(Controller_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Controller_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Controller_i)) == (interface_state,methane_level,water_level | ?);
  List_Of_Ids_SeenBNU(Implementation(Controller_i)) == (?: ?);
  List_Of_Ids(Machine(Pump)) == (PUMP_STATUS,on,off | ? | pump_status | ? | pump_on,pump_off | ? | ? | ? | Pump);
  List_Of_HiddenCst_Ids(Machine(Pump)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pump)) == (?);
  List_Of_VisibleVar_Ids(Machine(Pump)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Pump)) == (?: ?);
  List_Of_Ids(Machine(Interface)) == (INTERFACE_STATUS,enabled,disabled | ? | current_status | ? | enable,disable,get_interface_status | ? | ? | ? | Interface);
  List_Of_HiddenCst_Ids(Machine(Interface)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Interface)) == (?);
  List_Of_VisibleVar_Ids(Machine(Interface)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Interface)) == (?: ?);
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
  Sets(Implementation(Controller_i)) == (Type(PUMP_STATUS) == Cst(SetOf(etype(PUMP_STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Controller_i)) == (Type(off) == Cst(etype(PUMP_STATUS,0,1));Type(on) == Cst(etype(PUMP_STATUS,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Controller_i)) == (Type(interface_state) == Mvv(etype(INTERFACE_STATUS,?,?));Type(methane_level) == Mvv(etype(METHANE_LEVEL,?,?));Type(water_level) == Mvv(etype(WATER_LEVEL,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Controller_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Controller_i))==(water_level: WATER_LEVEL & methane_level: METHANE_LEVEL & interface_state: INTERFACE_STATUS)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Controller_i),Machine(Pump))==(pump_status);
  ImportedVisVariablesList(Implementation(Controller_i),Machine(Pump))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
