/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_PlayPose. Export ordinal(s): 13. Entry
   VA: 0x1052cfd0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000662. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Animation_PlayPose(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *pvVar3;
  undefined4 *this_00;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x52cfd0  13  Animation_PlayPose */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    iVar2 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_10918eb0(0x600,"Animation/ClipController",0);
      if (pvVar3 == (void *)0x0) {
        this_00 = (undefined4 *)0x0;
      }
      else {
        this_00 = FUN_10364ff0(pvVar3,iVar2 + 8,0.0);
        if (this_00 != (undefined4 *)0x0) {
          this_00[1] = this_00[1] + 1;
        }
      }
      local_10 = param_6;
      local_4 = param_5;
      local_c = param_7;
      local_8 = 0x6b20c4f3;
      FUN_10366630(this_00,&local_10);
      pvVar3 = (void *)FUN_10918eb0(0x38,"Animation/TimeScaleController",0);
      if (pvVar3 == (void *)0x0) {
        puVar4 = (undefined4 *)0x0;
      }
      else {
        puVar4 = FUN_1036bbf0(pvVar3,iVar2 + 8,(int)this_00,0);
        if (puVar4 != (undefined4 *)0x0) {
          puVar4[1] = puVar4[1] + 1;
        }
      }
      pvVar3 = (void *)FUN_10918eb0(0x30,"Animation/SuppressEventsController",0);
      if (pvVar3 == (void *)0x0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        puVar5 = FUN_1036bf70(pvVar3,iVar2 + 8,(int)puVar4);
        if (puVar5 != (undefined4 *)0x0) {
          puVar5[1] = puVar5[1] + 1;
        }
      }
      (**(code **)(*(int *)(iVar2 + 8) + 0x14))(param_3,puVar5,2,DAT_10aae184,DAT_10aae184,1,0,0,1);
      if ((puVar5 != (undefined4 *)0x0) &&
         (iVar2 = puVar5[1], puVar5[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar5[1] = 1;
        (**(code **)*puVar5)(1);
      }
      if ((puVar4 != (undefined4 *)0x0) &&
         (iVar2 = puVar4[1], puVar4[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
      if ((this_00 != (undefined4 *)0x0) &&
         (iVar2 = this_00[1], this_00[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        this_00[1] = 1;
        (**(code **)*this_00)(1);
      }
    }
    piVar1 = this + 1;
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

