/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163648 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectRemoveVisualOverride [assembly=ScriptCore token=0x060007CD; objId:
   System.UInt64, type: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_ObjectRemoveVisualOverride
          (undefined4 param_1,undefined4 param_2,undefined2 param_3)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  iVar1 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar1 != 0) {
    iVar1 = FUN_00937570();
    if (iVar1 != 0) {
      pvVar2 = (void *)FUN_00937f80(iVar1);
      if (pvVar2 != (void *)0x0) {
        pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea2a8);
        if (pvVar2 != (void *)0x0) {
          uVar3 = FUN_0095e860(pvVar2,param_3);
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
      }
    }
  }
  return 0;
}

