/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb18 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_SetBonePosition [assembly=ScriptCore token=0x06000DB6; objId:
   System.UInt64, boneId: System.UInt32, pos: Sims3.SimIFace.Vector3, interpTime: System.Single;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.Animation::Animation_SetBonePosition
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,float param_7)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *pvVar3;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = (void *)FUN_00934260(this,DAT_011dd484);
    if (pvVar3 != (void *)0x0) {
      iVar2 = FUN_0093cba0(pvVar3,15000);
      if (iVar2 != 0) {
        pvVar3 = (void *)(**(code **)(*(int *)(iVar2 + 8) + 4))(0x664ed68);
        if (pvVar3 != (void *)0x0) {
          uStack_20 = param_4;
          uStack_1c = param_5;
          uStack_18 = param_6;
          uStack_14 = param_4;
          FUN_0056bda0(pvVar3,param_3,&uStack_20,param_7);
        }
      }
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

