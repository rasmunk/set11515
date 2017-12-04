Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(WaterMonitor))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(WaterMonitor))==(Machine(WaterMonitor));
  Level(Machine(WaterMonitor))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(WaterMonitor)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(WaterMonitor))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(WaterMonitor))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(WaterMonitor))==(?);
  List_Includes(Machine(WaterMonitor))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(WaterMonitor))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(WaterMonitor))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(WaterMonitor))==(?);
  Context_List_Variables(Machine(WaterMonitor))==(?);
  Abstract_List_Variables(Machine(WaterMonitor))==(?);
  Local_List_Variables(Machine(WaterMonitor))==(?);
  List_Variables(Machine(WaterMonitor))==(?);
  External_List_Variables(Machine(WaterMonitor))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(WaterMonitor))==(?);
  Abstract_List_VisibleVariables(Machine(WaterMonitor))==(?);
  External_List_VisibleVariables(Machine(WaterMonitor))==(?);
  Expanded_List_VisibleVariables(Machine(WaterMonitor))==(?);
  List_VisibleVariables(Machine(WaterMonitor))==(?);
  Internal_List_VisibleVariables(Machine(WaterMonitor))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(WaterMonitor))==(btrue);
  Gluing_List_Invariant(Machine(WaterMonitor))==(btrue);
  Expanded_List_Invariant(Machine(WaterMonitor))==(btrue);
  Abstract_List_Invariant(Machine(WaterMonitor))==(btrue);
  Context_List_Invariant(Machine(WaterMonitor))==(btrue);
  List_Invariant(Machine(WaterMonitor))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(WaterMonitor))==(btrue);
  Abstract_List_Assertions(Machine(WaterMonitor))==(btrue);
  Context_List_Assertions(Machine(WaterMonitor))==(btrue);
  List_Assertions(Machine(WaterMonitor))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(WaterMonitor))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(WaterMonitor))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(WaterMonitor))==(skip);
  Context_List_Initialisation(Machine(WaterMonitor))==(skip);
  List_Initialisation(Machine(WaterMonitor))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(WaterMonitor))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(WaterMonitor))==(btrue);
  List_Constraints(Machine(WaterMonitor))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(WaterMonitor))==(get_water_level);
  List_Operations(Machine(WaterMonitor))==(get_water_level)
END
&
THEORY ListInputX IS
  List_Input(Machine(WaterMonitor),get_water_level)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(WaterMonitor),get_water_level)==(ss)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(WaterMonitor),get_water_level)==(ss <-- get_water_level)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(WaterMonitor),get_water_level)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(WaterMonitor),get_water_level)==(btrue | @xx.(xx: WATER_LEVEL ==> ss:=xx));
  List_Substitution(Machine(WaterMonitor),get_water_level)==(ANY xx WHERE xx: WATER_LEVEL THEN ss:=xx END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(WaterMonitor))==(?);
  Inherited_List_Constants(Machine(WaterMonitor))==(?);
  List_Constants(Machine(WaterMonitor))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(WaterMonitor),WATER_LEVEL)==({water_high,water_low});
  Context_List_Enumerated(Machine(WaterMonitor))==(?);
  Context_List_Defered(Machine(WaterMonitor))==(?);
  Context_List_Sets(Machine(WaterMonitor))==(?);
  List_Valuable_Sets(Machine(WaterMonitor))==(?);
  Inherited_List_Enumerated(Machine(WaterMonitor))==(?);
  Inherited_List_Defered(Machine(WaterMonitor))==(?);
  Inherited_List_Sets(Machine(WaterMonitor))==(?);
  List_Enumerated(Machine(WaterMonitor))==(WATER_LEVEL);
  List_Defered(Machine(WaterMonitor))==(?);
  List_Sets(Machine(WaterMonitor))==(WATER_LEVEL)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(WaterMonitor))==(?);
  Expanded_List_HiddenConstants(Machine(WaterMonitor))==(?);
  List_HiddenConstants(Machine(WaterMonitor))==(?);
  External_List_HiddenConstants(Machine(WaterMonitor))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(WaterMonitor))==(btrue);
  Context_List_Properties(Machine(WaterMonitor))==(btrue);
  Inherited_List_Properties(Machine(WaterMonitor))==(btrue);
  List_Properties(Machine(WaterMonitor))==(WATER_LEVEL: FIN(INTEGER) & not(WATER_LEVEL = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(WaterMonitor),get_water_level)==(Var(xx) == etype(WATER_LEVEL,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(WaterMonitor)) == (WATER_LEVEL,water_high,water_low | ? | ? | ? | get_water_level | ? | ? | ? | WaterMonitor);
  List_Of_HiddenCst_Ids(Machine(WaterMonitor)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(WaterMonitor)) == (?);
  List_Of_VisibleVar_Ids(Machine(WaterMonitor)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(WaterMonitor)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(WaterMonitor)) == (Type(WATER_LEVEL) == Cst(SetOf(etype(WATER_LEVEL,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(WaterMonitor)) == (Type(water_high) == Cst(etype(WATER_LEVEL,0,1));Type(water_low) == Cst(etype(WATER_LEVEL,0,1)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(WaterMonitor)) == (Type(get_water_level) == Cst(etype(WATER_LEVEL,?,?),No_type));
  Observers(Machine(WaterMonitor)) == (Type(get_water_level) == Cst(etype(WATER_LEVEL,?,?),No_type))
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
