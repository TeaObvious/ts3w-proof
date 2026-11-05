/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011610b0 (original PC 1.67 TS3W.exe).
   ScriptCore.EAText::EAText_Compare [assembly=ScriptCore token=0x060002D2; s1: System.String, s2:
   System.String; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_EAText__EAText_Compare(undefined4 param_1)

{
  int *piVar1;
  PCNZWCH pWVar2;
  PCNZWCH pWVar3;
  int iVar4;
  
  if (DAT_011d4f10 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_011d4f10 + -8;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (PCNZWCH)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (PCNZWCH)(**(code **)(*piVar1 + 0x58))(param_1);
  FUN_00453160((void *)(iVar4 + 8),pWVar2,pWVar3);
  return;
}

