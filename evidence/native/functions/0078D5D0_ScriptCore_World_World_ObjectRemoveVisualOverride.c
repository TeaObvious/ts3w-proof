/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163648 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      pvVar2 = ObjectRegistry_FindBorrowed
                         (pvVar2,CONCAT26((short)((uint)param_2 >> 0x10),
                                          CONCAT24((short)param_2,param_1)));
      if (pvVar2 != (void *)0x0) {
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea2a8);
        if (pvVar2 != (void *)0x0) {
          uVar3 = FUN_0095e860(pvVar2,param_3);
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
      }
    }
  }
  return 0;
}

