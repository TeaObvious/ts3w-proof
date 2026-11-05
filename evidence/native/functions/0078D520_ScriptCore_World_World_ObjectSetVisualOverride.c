/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163640 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetVisualOverride [assembly=ScriptCore token=0x060007CC; objId:
   System.UInt64, type: System.UInt32, parameters: System.Single[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectSetVisualOverride
          (undefined4 param_1,undefined4 param_2,undefined2 param_3,int param_4)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  uint uVar4;
  uint local_8;
  void *local_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = 0;
  if (piVar1 != (int *)0x0) {
    local_4 = (void *)0x0;
    local_8 = 0;
    if (param_4 != 0) {
      (**(code **)(*piVar1 + 0x78))(param_4,&local_4,&local_8);
      uVar4 = local_8;
      if (((local_8 != 0) && (local_4 == (void *)0x0)) || (9 < local_8)) goto LAB_0078d5bc;
    }
    pvVar2 = ObjectRegistry_GetGlobal();
    uVar4 = 0;
    if (pvVar2 != (void *)0x0) {
      pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
      uVar4 = 0;
      if (pvVar2 != (void *)0x0) {
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea2a8);
        uVar4 = 0;
        if (pvVar2 != (void *)0x0) {
          uVar3 = FUN_0095e840(pvVar2,param_3,local_4,local_8);
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
      }
    }
  }
LAB_0078d5bc:
  return uVar4 & 0xffffff00;
}

