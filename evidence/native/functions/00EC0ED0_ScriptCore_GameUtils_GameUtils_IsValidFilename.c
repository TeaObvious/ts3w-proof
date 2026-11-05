/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197188 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_IsValidFilename [assembly=ScriptCore token=0x06000241; name:
   System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_GameUtils__GameUtils_IsValidFilename(undefined4 param_1)

{
  ushort *puVar1;
  ushort uVar2;
  int *piVar3;
  ushort *puVar4;
  uint uVar5;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar4 = (ushort *)(**(code **)(*piVar3 + 0x58))(param_1);
  uVar5 = FUN_004ee640((short *)puVar4,5);
  if ((char)uVar5 != '\0') {
    uVar2 = *puVar4;
    uVar5 = (uint)uVar2;
    if ((uVar2 != 0x2e) && (uVar2 != 0)) {
      uVar5 = (uint)uVar2;
      do {
        if ((short)uVar5 != 0x20) {
          return CONCAT31((int3)(uVar5 >> 8),1);
        }
        puVar1 = puVar4 + 1;
        uVar5 = (uint)*puVar1;
        puVar4 = puVar4 + 1;
      } while (*puVar1 != 0);
    }
  }
  return uVar5 & 0xffffff00;
}

