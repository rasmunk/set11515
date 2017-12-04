Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Interface))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Interface))==(Machine(Interface));
  Level(Machine(Interface))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Interface)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Interface))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Interface))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Interface))==(?);
  List_Includes(Machine(Interface))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Interface))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Interface))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Interface))==(?);
  Context_List_Variables(Machine(Interface))==(?);
  Abstract_List_Variables(Machine(Interface))==(?);
  Local_List_Variables(Machine(Interface))==(current_status);
  List_Variables(Machine(Interface))==(current_status);
  External_List_Variables(Machine(Interface))==(current_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Interface))==(?);
  Abstract_List_VisibleVariables(Machine(Interface))==(?);
  External_List_VisibleVariables(Machine(Interface))==(?);
  Expanded_List_VisibleVariables(Machine(Interface))==(?);
  List_VisibleVariables(Machine(Interface))==(?);
  Internal_List_VisibleVariables(Machine(Interface))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Interface))==(btrue);
  Gluing_List_Invariant(Machine(Interface))==(btrue);
  Expanded_List_Invariant(Machine(Interface))==(btrue);
  Abstract_List_Invariant(Machine(Interface))==(btrue);
  Context_List_Invariant(Machine(Interface))==(btrue);
  List_Invariant(Machine(Interface))==(current_status: INTERFACE_STATUS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Interface))==(btrue);
  Abstract_List_Assertions(Machine(Interface))==(btrue);
  Context_List_Assertions(Machine(Interface))==(btrue);
  List_Assertions(Machine(Interface))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Interface))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Interface))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Interface))==(current_status:=disabled);
  Context_List_Initialisation(Machine(Interface))==(skip);
  List_Initialisation(Machine(Interface))==(current_status:=disabled)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Interface))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Interface))==(btrue);
  List_Constraints(Machine(Interface))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Interface))==(enable,disable,get_interface_status);
  List_Operations(Machine(Interface))==(enable,disable,get_interface_status)
END
&
THEORY ListInputX IS
  List_Input(Machine(Interface),enable)==(?);
  List_Input(Machine(Interface),disable)==(?);
  List_Input(Machine(Interface),get_interface_status)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Interface),enable)==(?);
  List_Output(Machine(Interface),disable)==(?);
  List_Output(Machine(Interface),get_interface_status)==(ss)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Interface),enable)==(enable);
  List_Header(Machine(Interface),disable)==(disable);
  List_Header(Machine(Interface),get_interface_status)==(ss <-- get_interface_status)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Interface),enable)==(btrue);
  List_Precondition(Machine(Interface),disable)==(btrue);
  List_Precondition(Machine(Interface),get_interface_status)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Interface),get_interface_status)==(btrue | ss:=current_status);
  Expanded_List_Substitution(Machine(Interface),disable)==(btrue | current_status:=disabled);
  Expanded_List_Substitution(Machine(Interface),enable)==(btrue | current_status:=enabled);
  List_Substitution(Machine(Interface),enable)==(current_status:=enabled);
  List_Substitution(Machine(Interface),disable)==(current_status:=disabled);
  List_Substitution(Machine(Interface),get_interface_status)==(ss:=current_status)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Interface))==(?);
  Inherited_List_Constants(Machine(Interface))==(?);
  List_Constants(Machine(Interface))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Interface),INTERFACE_STATUS)==({enabled,disabled});
  Context_List_Enumerated(Machine(Interface))==(?);
  Context_List_Defered(Machine(Interface))==(?);
  Context_List_Sets(Machine(Interface))==(?);
  List_Valuable_Sets(Machine(Interface))==(?);
  Inherited_List_Enumerated(Machine(Interface))==(?);
  Inherited_List_Defered(Machine(Interface))==(?);
  Inherited_List_Sets(Machine(Interface))==(?);
  List_Enumerated(Machine(Interface))==(INTERFACE_STATUS);
  List_Defered(Machine(Interface))==(?);
  List_Sets(Machine(Interface))==(INTERFACE_STATUS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Interface))==(?);
  Expanded_List_HiddenConstants(Machine(Interface))==(?);
  List_HiddenConstants(Machine(Interface))==(?);
  External_List_HiddenConstants(Machine(Interface))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Interface))==(btrue);
  Context_List_Properties(Machine(Interface))==(btrue);
  Inherited_List_Properties(Machine(Interface))==(btrue);
  List_Properties(Machine(Interface))==(INTERFACE_STATUS: FIN(INTEGER) & not(INTERFACE_STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Interface),enable)==(?);
  List_ANY_Var(Machine(Interface),disable)==(?);
  List_ANY_Var(Machine(Interface),get_interface_status)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Interface)) == (INTERFACE_STATUS,enabled,disabled | ? | current_status | ? | enable,disable,get_interface_status | ? | ? | ? | Interface);
  List_Of_HiddenCst_Ids(Machine(Interface)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Interface)) == (?);
  List_Of_VisibleVar_Ids(Machine(Interface)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Interface)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Interface)) == (Type(INTERFACE_STATUS) == Cst(SetOf(etype(INTERFACE_STATUS,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Interface)) == (Type(enabled) == Cst(etype(INTERFACE_STATUS,0,1));Type(disabled) == Cst(etype(INTERFACE_STATUS,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Interface)) == (Type(current_status) == Mvl(etype(INTERFACE_STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Interface)) == (Type(get_interface_status) == Cst(etype(INTERFACE_STATUS,?,?),No_type);Type(disable) == Cst(No_type,No_type);Type(enable) == Cst(No_type,No_type));
  Observers(Machine(Interface)) == (Type(get_interface_status) == Cst(etype(INTERFACE_STATUS,?,?),No_type))
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
