Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Pump))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Pump))==(Machine(Pump));
  Level(Machine(Pump))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Pump)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Pump))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Pump))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Pump))==(?);
  List_Includes(Machine(Pump))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Pump))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Pump))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Pump))==(?);
  Context_List_Variables(Machine(Pump))==(?);
  Abstract_List_Variables(Machine(Pump))==(?);
  Local_List_Variables(Machine(Pump))==(pump_status);
  List_Variables(Machine(Pump))==(pump_status);
  External_List_Variables(Machine(Pump))==(pump_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Pump))==(?);
  Abstract_List_VisibleVariables(Machine(Pump))==(?);
  External_List_VisibleVariables(Machine(Pump))==(?);
  Expanded_List_VisibleVariables(Machine(Pump))==(?);
  List_VisibleVariables(Machine(Pump))==(?);
  Internal_List_VisibleVariables(Machine(Pump))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Pump))==(btrue);
  Gluing_List_Invariant(Machine(Pump))==(btrue);
  Expanded_List_Invariant(Machine(Pump))==(btrue);
  Abstract_List_Invariant(Machine(Pump))==(btrue);
  Context_List_Invariant(Machine(Pump))==(btrue);
  List_Invariant(Machine(Pump))==(pump_status: PUMP_STATUS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Pump))==(btrue);
  Abstract_List_Assertions(Machine(Pump))==(btrue);
  Context_List_Assertions(Machine(Pump))==(btrue);
  List_Assertions(Machine(Pump))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Pump))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Pump))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Pump))==(pump_status:=off);
  Context_List_Initialisation(Machine(Pump))==(skip);
  List_Initialisation(Machine(Pump))==(pump_status:=off)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Pump))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Pump))==(btrue);
  List_Constraints(Machine(Pump))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Pump))==(pump_on,pump_off);
  List_Operations(Machine(Pump))==(pump_on,pump_off)
END
&
THEORY ListInputX IS
  List_Input(Machine(Pump),pump_on)==(?);
  List_Input(Machine(Pump),pump_off)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Pump),pump_on)==(?);
  List_Output(Machine(Pump),pump_off)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Pump),pump_on)==(pump_on);
  List_Header(Machine(Pump),pump_off)==(pump_off)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Pump),pump_on)==(btrue);
  List_Precondition(Machine(Pump),pump_off)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Pump),pump_off)==(btrue | pump_status:=off);
  Expanded_List_Substitution(Machine(Pump),pump_on)==(btrue | pump_status:=on);
  List_Substitution(Machine(Pump),pump_on)==(pump_status:=on);
  List_Substitution(Machine(Pump),pump_off)==(pump_status:=off)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Pump))==(?);
  Inherited_List_Constants(Machine(Pump))==(?);
  List_Constants(Machine(Pump))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Pump),PUMP_STATUS)==({on,off});
  Context_List_Enumerated(Machine(Pump))==(?);
  Context_List_Defered(Machine(Pump))==(?);
  Context_List_Sets(Machine(Pump))==(?);
  List_Valuable_Sets(Machine(Pump))==(?);
  Inherited_List_Enumerated(Machine(Pump))==(?);
  Inherited_List_Defered(Machine(Pump))==(?);
  Inherited_List_Sets(Machine(Pump))==(?);
  List_Enumerated(Machine(Pump))==(PUMP_STATUS);
  List_Defered(Machine(Pump))==(?);
  List_Sets(Machine(Pump))==(PUMP_STATUS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Pump))==(?);
  Expanded_List_HiddenConstants(Machine(Pump))==(?);
  List_HiddenConstants(Machine(Pump))==(?);
  External_List_HiddenConstants(Machine(Pump))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Pump))==(btrue);
  Context_List_Properties(Machine(Pump))==(btrue);
  Inherited_List_Properties(Machine(Pump))==(btrue);
  List_Properties(Machine(Pump))==(PUMP_STATUS: FIN(INTEGER) & not(PUMP_STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Pump),pump_on)==(?);
  List_ANY_Var(Machine(Pump),pump_off)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Pump)) == (PUMP_STATUS,on,off | ? | pump_status | ? | pump_on,pump_off | ? | ? | ? | Pump);
  List_Of_HiddenCst_Ids(Machine(Pump)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Pump)) == (?);
  List_Of_VisibleVar_Ids(Machine(Pump)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Pump)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Pump)) == (Type(PUMP_STATUS) == Cst(SetOf(etype(PUMP_STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Pump)) == (Type(on) == Cst(etype(PUMP_STATUS,0,1));Type(off) == Cst(etype(PUMP_STATUS,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Pump)) == (Type(pump_status) == Mvl(etype(PUMP_STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Pump)) == (Type(pump_off) == Cst(No_type,No_type);Type(pump_on) == Cst(No_type,No_type))
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
