Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MethaneMonitor))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MethaneMonitor))==(Machine(MethaneMonitor));
  Level(Machine(MethaneMonitor))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MethaneMonitor)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MethaneMonitor))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MethaneMonitor))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MethaneMonitor))==(?);
  List_Includes(Machine(MethaneMonitor))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MethaneMonitor))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MethaneMonitor))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MethaneMonitor))==(?);
  Context_List_Variables(Machine(MethaneMonitor))==(?);
  Abstract_List_Variables(Machine(MethaneMonitor))==(?);
  Local_List_Variables(Machine(MethaneMonitor))==(?);
  List_Variables(Machine(MethaneMonitor))==(?);
  External_List_Variables(Machine(MethaneMonitor))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MethaneMonitor))==(?);
  Abstract_List_VisibleVariables(Machine(MethaneMonitor))==(?);
  External_List_VisibleVariables(Machine(MethaneMonitor))==(?);
  Expanded_List_VisibleVariables(Machine(MethaneMonitor))==(?);
  List_VisibleVariables(Machine(MethaneMonitor))==(?);
  Internal_List_VisibleVariables(Machine(MethaneMonitor))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MethaneMonitor))==(btrue);
  Gluing_List_Invariant(Machine(MethaneMonitor))==(btrue);
  Expanded_List_Invariant(Machine(MethaneMonitor))==(btrue);
  Abstract_List_Invariant(Machine(MethaneMonitor))==(btrue);
  Context_List_Invariant(Machine(MethaneMonitor))==(btrue);
  List_Invariant(Machine(MethaneMonitor))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MethaneMonitor))==(btrue);
  Abstract_List_Assertions(Machine(MethaneMonitor))==(btrue);
  Context_List_Assertions(Machine(MethaneMonitor))==(btrue);
  List_Assertions(Machine(MethaneMonitor))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MethaneMonitor))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MethaneMonitor))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MethaneMonitor))==(skip);
  Context_List_Initialisation(Machine(MethaneMonitor))==(skip);
  List_Initialisation(Machine(MethaneMonitor))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MethaneMonitor))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MethaneMonitor))==(btrue);
  List_Constraints(Machine(MethaneMonitor))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MethaneMonitor))==(get_methane_level);
  List_Operations(Machine(MethaneMonitor))==(get_methane_level)
END
&
THEORY ListInputX IS
  List_Input(Machine(MethaneMonitor),get_methane_level)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MethaneMonitor),get_methane_level)==(ss)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MethaneMonitor),get_methane_level)==(ss <-- get_methane_level)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MethaneMonitor),get_methane_level)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MethaneMonitor),get_methane_level)==(btrue | @xx.(xx: METHANE_LEVEL ==> ss:=xx));
  List_Substitution(Machine(MethaneMonitor),get_methane_level)==(ANY xx WHERE xx: METHANE_LEVEL THEN ss:=xx END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MethaneMonitor))==(?);
  Inherited_List_Constants(Machine(MethaneMonitor))==(?);
  List_Constants(Machine(MethaneMonitor))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MethaneMonitor),METHANE_LEVEL)==({methane_high,methane_low});
  Context_List_Enumerated(Machine(MethaneMonitor))==(?);
  Context_List_Defered(Machine(MethaneMonitor))==(?);
  Context_List_Sets(Machine(MethaneMonitor))==(?);
  List_Valuable_Sets(Machine(MethaneMonitor))==(?);
  Inherited_List_Enumerated(Machine(MethaneMonitor))==(?);
  Inherited_List_Defered(Machine(MethaneMonitor))==(?);
  Inherited_List_Sets(Machine(MethaneMonitor))==(?);
  List_Enumerated(Machine(MethaneMonitor))==(METHANE_LEVEL);
  List_Defered(Machine(MethaneMonitor))==(?);
  List_Sets(Machine(MethaneMonitor))==(METHANE_LEVEL)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MethaneMonitor))==(?);
  Expanded_List_HiddenConstants(Machine(MethaneMonitor))==(?);
  List_HiddenConstants(Machine(MethaneMonitor))==(?);
  External_List_HiddenConstants(Machine(MethaneMonitor))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MethaneMonitor))==(btrue);
  Context_List_Properties(Machine(MethaneMonitor))==(btrue);
  Inherited_List_Properties(Machine(MethaneMonitor))==(btrue);
  List_Properties(Machine(MethaneMonitor))==(METHANE_LEVEL: FIN(INTEGER) & not(METHANE_LEVEL = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MethaneMonitor),get_methane_level)==(Var(xx) == etype(METHANE_LEVEL,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MethaneMonitor)) == (METHANE_LEVEL,methane_high,methane_low | ? | ? | ? | get_methane_level | ? | ? | ? | MethaneMonitor);
  List_Of_HiddenCst_Ids(Machine(MethaneMonitor)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MethaneMonitor)) == (?);
  List_Of_VisibleVar_Ids(Machine(MethaneMonitor)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MethaneMonitor)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(MethaneMonitor)) == (Type(METHANE_LEVEL) == Cst(SetOf(etype(METHANE_LEVEL,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(MethaneMonitor)) == (Type(methane_high) == Cst(etype(METHANE_LEVEL,0,1));Type(methane_low) == Cst(etype(METHANE_LEVEL,0,1)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MethaneMonitor)) == (Type(get_methane_level) == Cst(etype(METHANE_LEVEL,?,?),No_type));
  Observers(Machine(MethaneMonitor)) == (Type(get_methane_level) == Cst(etype(METHANE_LEVEL,?,?),No_type))
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
