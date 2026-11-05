/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011971b8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_HasBeenToWorldImpl [managed declarations=0; exact native
   prototype unresolved]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_HasBeenToWorldImpl(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  short *psVar3;
  LPCWSTR pWVar4;
  
  iVar1 = FUN_00aa99c0();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    piVar2 = (int *)(**(code **)(*piVar2 + 0x58))(param_1);
    if ((psVar3 != (short *)0x0) && (piVar2 != (int *)0x0)) {
      FUN_004ec7e0((undefined2 *)&stack0xfffffbe8);
      FUN_00aa9a60(&stack0xfffffbe8);
      FUN_004ee250(&stack0xfffffbe8,(short *)piVar2);
      FUN_004ee400(&stack0xfffffbe8,psVar3,0);
      pWVar4 = (LPCWSTR)FUN_007e51a0(&stack0xfffffbe8);
      piVar2 = (int *)FUN_004dbd70(pWVar4);
      if ((char)piVar2 != '\0') {
        return CONCAT31((int3)((uint)piVar2 >> 8),1);
      }
    }
  }
  return (uint)piVar2 & 0xffffff00;
}

