/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197190 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_HasValidFilenameChars [assembly=ScriptCore token=0x06000244;
   name: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_HasValidFilenameChars(undefined4 param_1)

{
  short sVar1;
  bool bVar2;
  int *piVar3;
  short *psVar4;
  uint3 extraout_var;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_1);
  sVar1 = *psVar4;
  while( true ) {
    if (sVar1 == 0) {
      return 1;
    }
    bVar2 = FUN_004ec960(sVar1,5);
    if (!bVar2) break;
    sVar1 = psVar4[1];
    psVar4 = psVar4 + 1;
  }
  return (uint)extraout_var << 8;
}

