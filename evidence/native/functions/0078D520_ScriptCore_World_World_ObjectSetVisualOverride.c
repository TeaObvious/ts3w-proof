/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163640 (original PC 1.67 TS3W.exe).
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
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  uint uVar5;
  uint local_8;
  void *local_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = 0;
  if (piVar1 != (int *)0x0) {
    local_4 = (void *)0x0;
    local_8 = 0;
    if (param_4 != 0) {
      (**(code **)(*piVar1 + 0x78))(param_4,&local_4,&local_8);
      uVar5 = local_8;
      if (((local_8 != 0) && (local_4 == (void *)0x0)) || (9 < local_8)) goto LAB_0078d5bc;
    }
    iVar2 = FUN_00937570();
    uVar5 = 0;
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_00937f80(iVar2);
      uVar5 = 0;
      if (pvVar3 != (void *)0x0) {
        pvVar3 = (void *)FUN_00934260(pvVar3,DAT_011ea2a8);
        uVar5 = 0;
        if (pvVar3 != (void *)0x0) {
          uVar4 = FUN_0095e840(pvVar3,param_3,local_4,local_8);
          return CONCAT31((int3)((uint)uVar4 >> 8),1);
        }
      }
    }
  }
LAB_0078d5bc:
  return uVar5 & 0xffffff00;
}

