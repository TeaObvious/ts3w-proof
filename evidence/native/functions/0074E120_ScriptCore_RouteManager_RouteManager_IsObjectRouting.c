/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161be8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_IsObjectRouting [assembly=ScriptCore token=0x0600105D;
   footprintId: System.UInt64, position: Sims3.SimIFace.Vector3&, velocity: Sims3.SimIFace.Vector3&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.RouteManager::RouteManager_IsObjectRouting
          (int param_1,int param_2,undefined4 *param_3,undefined4 *param_4)

{
  int *piVar1;
  void *pvVar2;
  int iVar3;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  if (param_1 != 0 || param_2 != 0) {
    pvVar2 = ObjectRegistry_GetGlobal();
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
    if (pvVar2 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea138);
      if (pvVar2 != (void *)0x0) {
        piVar1 = (int *)((int)pvVar2 + 8);
        iVar3 = FUN_00839640((int)piVar1);
        if (iVar3 != 0) {
          (**(code **)(*piVar1 + 0x1c))(local_30);
          (**(code **)(*piVar1 + 0x38))(&uStack_24);
          *param_3 = uStack_38;
          param_3[1] = uStack_34;
          param_3[2] = local_30[0];
          *param_4 = uStack_28;
          param_4[1] = uStack_24;
          param_4[2] = uStack_20;
          return CONCAT31((int3)((uint)param_4 >> 8),1);
        }
      }
    }
  }
  return 0;
}

