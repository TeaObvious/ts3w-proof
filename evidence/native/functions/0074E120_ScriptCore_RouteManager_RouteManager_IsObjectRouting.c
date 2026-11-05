/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161be8 (original PC 1.67 TS3W.exe).
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
  int iVar2;
  void *this;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  if (param_1 != 0 || param_2 != 0) {
    iVar2 = FUN_00937570();
    this = (void *)FUN_00937f80(iVar2);
    if (this != (void *)0x0) {
      iVar2 = FUN_00934260(this,DAT_011ea138);
      if (iVar2 != 0) {
        piVar1 = (int *)(iVar2 + 8);
        iVar2 = FUN_00839640((int)piVar1);
        if (iVar2 != 0) {
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

