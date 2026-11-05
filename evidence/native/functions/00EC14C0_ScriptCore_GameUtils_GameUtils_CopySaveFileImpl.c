/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011971b0 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_CopySaveFileImpl [assembly=ScriptCore token=0x06000248; oldName:
   System.String, newName: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.GameUtils::GameUtils_CopySaveFileImpl(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  short *psVar3;
  uint uVar4;
  
  iVar1 = FUN_00aa99c0();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    piVar2 = (int *)(**(code **)(*piVar2 + 0x58))(param_1);
    if ((psVar3 != (short *)0x0) && (piVar2 != (int *)0x0)) {
      uVar4 = FUN_00aaf470(psVar3,(short *)piVar2,1);
      return uVar4;
    }
  }
  return (uint)piVar2 & 0xffffff00;
}

