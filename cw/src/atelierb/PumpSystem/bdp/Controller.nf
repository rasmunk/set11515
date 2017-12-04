Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Controller))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Controller))==(Machine(Controller));
  Level(Machine(Controller))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Controller)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Controller))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Controller))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Controller))==(?);
  List_Includes(Machine(Controller))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Controller))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Controller))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Controller))==(?);
  Context_List_Variables(Machine(Controller))==(?);
  Abstract_List_Variables(Machine(Controller))==(?);
  Local_List_Variables(Machine(Controller))==(?);
  List_Variables(Machine(Controller))==(?);
  External_List_Variables(Machine(Controller))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Controller))==(?);
  Abstract_List_VisibleVariables(Machine(Controller))==(?);
  External_List_VisibleVariables(Machine(Controller))==(?);
  Expanded_List_VisibleVariables(Machine(Controller))==(?);
  List_VisibleVariables(Machine(Controller))==(?);
  Internal_List_VisibleVariables(Machine(Controller))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Controller))==(btrue);
  Gluing_List_Invariant(Machine(Controller))==(btrue);
  Expanded_List_Invariant(Machine(Controller))==(btrue);
  Abstract_List_Invariant(Machine(Controller))==(btrue);
  Context_List_Invariant(Machine(Controller))==(btrue);
  List_Invariant(Machine(Controller))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Controller))==(btrue);
  Abstract_List_Assertions(Machine(Controller))==(btrue);
  Context_List_Assertions(Machine(Controller))==(btrue);
  List_Assertions(Machine(Controller))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Controller))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Controller))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Controller))==(skip);
  Context_List_Initialisation(Machine(Controller))==(skip);
  List_Initialisation(Machine(Controller))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Controller))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Controller))==(btrue);
  List_Constraints(Machine(Controller))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Controller))==(operate);
  List_Operations(Machine(Controller))==(operate)
END
&
THEORY ListInputX IS
  List_Input(Machine(Controller),operate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Controller),operate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Controller),operate)==(operate)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Controller),operate)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Controller),operate)==(btrue | skip);
  List_Substitution(Machine(Controller),operate)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Controller))==(?);
  Inherited_List_Constants(Machine(Controller))==(?);
  List_Constants(Machine(Controller))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Controller))==(?);
  Context_List_Defered(Machine(Controller))==(?);
  Context_List_Sets(Machine(Controller))==(?);
  List_Valuable_Sets(Machine(Controller))==(?);
  Inherited_List_Enumerated(Machine(Controller))==(?);
  Inherited_List_Defered(Machine(Controller))==(?);
  Inherited_List_Sets(Machine(Controller))==(?);
  List_Enumerated(Machine(Controller))==(?);
  List_Defered(Machine(Controller))==(?);
  List_Sets(Machine(Controller))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Controller))==(?);
  Expanded_List_HiddenConstants(Machine(Controller))==(?);
  List_HiddenConstants(Machine(Controller))==(?);
  External_List_HiddenConstants(Machine(Controller))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Controller))==(btrue);
  Context_List_Properties(Machine(Controller))==(btrue);
  Inherited_List_Properties(Machine(Controller))==(btrue);
  List_Properties(Machine(Controller))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Controller),operate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Controller)) == (? | ? | ? | ? | operate | ? | ? | ? | Controller);
  List_Of_HiddenCst_Ids(Machine(Controller)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Controller)) == (?);
  List_Of_VisibleVar_Ids(Machine(Controller)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Controller)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Controller)) == (Type(operate) == Cst(No_type,No_type));
  Observers(Machine(Controller)) == (Type(operate) == Cst(No_type,No_type))
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
