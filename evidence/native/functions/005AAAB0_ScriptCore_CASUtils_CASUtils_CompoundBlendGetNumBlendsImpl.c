/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011565a0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_CompoundBlendGetNumBlendsImpl [assembly=ScriptCore
   token=0x0600034F; handle: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore.CASUtils::CASUtils_CompoundBlendGetNumBlendsImpl(uint param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
    if (iVar3 != 0) {
      iVar4 = 0;
      for (puVar1 = *(undefined4 **)(iVar3 + 0x40); puVar1 != (undefined4 *)(iVar3 + 0x40);
          puVar1 = (undefined4 *)*puVar1) {
        iVar4 = iVar4 + 1;
      }
      return iVar4;
    }
  }
  return 0;
}

