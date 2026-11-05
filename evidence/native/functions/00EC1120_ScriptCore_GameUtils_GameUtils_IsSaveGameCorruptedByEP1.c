/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197328 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_IsSaveGameCorruptedByEP1 [assembly=ScriptCore token=0x06000277;
   name: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_GameUtils__GameUtils_IsSaveGameCorruptedByEP1(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  short *psVar3;
  int iVar4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
  iVar4 = FUN_00aa99c0();
  if (iVar4 != 0) {
    bVar1 = FUN_00aa9cd0(psVar3);
    return bVar1;
  }
  return false;
}

