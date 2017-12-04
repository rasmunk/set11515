Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MethaneMonitor_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MethaneMonitor_i))==(Machine(MethaneMonitor));
  Level(Implementation(MethaneMonitor_i))==(1);
  Upper_Level(Implementation(MethaneMonitor_i))==(Machine(MethaneMonitor))
END
&
THEORY LoadedStructureX IS
  Implementation(MethaneMonitor_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MethaneMonitor_i))==(?);
  Inherited_List_Includes(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MethaneMonitor_i))==(?);
  Context_List_Variables(Implementation(MethaneMonitor_i))==(?);
  Abstract_List_Variables(Implementation(MethaneMonitor_i))==(?);
  Local_List_Variables(Implementation(MethaneMonitor_i))==(?);
  List_Variables(Implementation(MethaneMonitor_i))==(?);
  External_List_Variables(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MethaneMonitor_i))==(?);
  Abstract_List_VisibleVariables(Implementation(MethaneMonitor_i))==(?);
  External_List_VisibleVariables(Implementation(MethaneMonitor_i))==(?);
  Expanded_List_VisibleVariables(Implementation(MethaneMonitor_i))==(?);
  List_VisibleVariables(Implementation(MethaneMonitor_i))==(last_state);
  Internal_List_VisibleVariables(Implementation(MethaneMonitor_i))==(last_state)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MethaneMonitor_i))==(btrue);
  Expanded_List_Invariant(Implementation(MethaneMonitor_i))==(btrue);
  Abstract_List_Invariant(Implementation(MethaneMonitor_i))==(btrue);
  Context_List_Invariant(Implementation(MethaneMonitor_i))==(btrue);
  List_Invariant(Implementation(MethaneMonitor_i))==(last_state: METHANE_LEVEL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(MethaneMonitor_i))==(btrue);
  Abstract_List_Assertions(Implementation(MethaneMonitor_i))==(btrue);
  Context_List_Assertions(Implementation(MethaneMonitor_i))==(btrue);
  List_Assertions(Implementation(MethaneMonitor_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MethaneMonitor_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MethaneMonitor_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MethaneMonitor_i))==(last_state:=methane_high);
  Context_List_Initialisation(Implementation(MethaneMonitor_i))==(skip);
  List_Initialisation(Implementation(MethaneMonitor_i))==(last_state:=methane_high)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MethaneMonitor_i))==(btrue);
  List_Context_Constraints(Implementation(MethaneMonitor_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MethaneMonitor_i))==(get_methane_level);
  List_Operations(Implementation(MethaneMonitor_i))==(get_methane_level)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MethaneMonitor_i),get_methane_level)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MethaneMonitor_i),get_methane_level)==(ss)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MethaneMonitor_i),get_methane_level)==(ss <-- get_methane_level)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MethaneMonitor_i),get_methane_level)==(btrue);
  List_Precondition(Implementation(MethaneMonitor_i),get_methane_level)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MethaneMonitor_i),get_methane_level)==(btrue | last_state = methane_high ==> last_state:=methane_low [] not(last_state = methane_high) ==> last_state:=methane_high;ss:=last_state);
  List_Substitution(Implementation(MethaneMonitor_i),get_methane_level)==(IF last_state = methane_high THEN last_state:=methane_low ELSE last_state:=methane_high END;ss:=last_state)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MethaneMonitor_i))==(?);
  Inherited_List_Constants(Implementation(MethaneMonitor_i))==(?);
  List_Constants(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(MethaneMonitor_i),METHANE_LEVEL)==({methane_high,methane_low});
  Context_List_Enumerated(Implementation(MethaneMonitor_i))==(?);
  Context_List_Defered(Implementation(MethaneMonitor_i))==(?);
  Context_List_Sets(Implementation(MethaneMonitor_i))==(?);
  List_Own_Enumerated(Implementation(MethaneMonitor_i))==(METHANE_LEVEL);
  List_Valuable_Sets(Implementation(MethaneMonitor_i))==(?);
  Inherited_List_Enumerated(Implementation(MethaneMonitor_i))==(METHANE_LEVEL);
  Inherited_List_Defered(Implementation(MethaneMonitor_i))==(?);
  Inherited_List_Sets(Implementation(MethaneMonitor_i))==(METHANE_LEVEL);
  List_Enumerated(Implementation(MethaneMonitor_i))==(?);
  List_Defered(Implementation(MethaneMonitor_i))==(?);
  List_Sets(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MethaneMonitor_i))==(?);
  Expanded_List_HiddenConstants(Implementation(MethaneMonitor_i))==(?);
  List_HiddenConstants(Implementation(MethaneMonitor_i))==(?);
  External_List_HiddenConstants(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MethaneMonitor_i))==(METHANE_LEVEL: FIN(INTEGER) & not(METHANE_LEVEL = {}));
  Context_List_Properties(Implementation(MethaneMonitor_i))==(btrue);
  Inherited_List_Properties(Implementation(MethaneMonitor_i))==(btrue);
  List_Properties(Implementation(MethaneMonitor_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MethaneMonitor_i))==(aa: aa);
  List_Values(Implementation(MethaneMonitor_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(MethaneMonitor_i))==(Type(last_state) == Mvv(etype(METHANE_LEVEL,?,?)));
  Operations(Implementation(MethaneMonitor_i))==(Type(get_methane_level) == Cst(etype(METHANE_LEVEL,?,?),No_type));
  Constants(Implementation(MethaneMonitor_i))==(Type(methane_high) == Cst(etype(METHANE_LEVEL,0,1));Type(methane_low) == Cst(etype(METHANE_LEVEL,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MethaneMonitor_i)) == (? | ? | ? | ? | get_methane_level | ? | ? | ? | MethaneMonitor_i);
  List_Of_HiddenCst_Ids(Implementation(MethaneMonitor_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(MethaneMonitor_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(MethaneMonitor_i)) == (last_state | ?);
  List_Of_Ids_SeenBNU(Implementation(MethaneMonitor_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(MethaneMonitor_i)) == (Type(METHANE_LEVEL) == Cst(SetOf(etype(METHANE_LEVEL,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(MethaneMonitor_i)) == (Type(methane_low) == Cst(etype(METHANE_LEVEL,0,1));Type(methane_high) == Cst(etype(METHANE_LEVEL,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(MethaneMonitor_i)) == (Type(last_state) == Mvv(etype(METHANE_LEVEL,?,?)))
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
  List_Local_Operations(Implementation(MethaneMonitor_i))==(?)
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
  TypingPredicate(Implementation(MethaneMonitor_i))==(last_state: METHANE_LEVEL)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
