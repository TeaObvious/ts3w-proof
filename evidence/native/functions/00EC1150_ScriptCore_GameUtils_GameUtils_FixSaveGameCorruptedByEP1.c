/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197330 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_FixSaveGameCorruptedByEP1 [assembly=ScriptCore token=0x06000278;
   name: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_FixSaveGameCorruptedByEP1(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  iVar3 = FUN_00aa99c0();
  if (iVar3 != 0) {
    uVar4 = FUN_00aad410(psVar2);
    return uVar4;
  }
  return 0;
}

