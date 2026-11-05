/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_MeasureControllerDistanceTravelled.
   Export ordinal(s): 11. Entry VA: 0x1052d910. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600066D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
Animation_MeasureControllerDistanceTravelled
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  undefined4 *this;
  void *this_00;
  int *piVar2;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x52d910  11  Animation_MeasureControllerDistanceTravelled */
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  iVar1 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar1);
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    iVar1 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar1 != 0) {
      this_00 = (void *)FUN_10918eb0(0x600,"Animation/ClipController",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_10364ff0(this_00,iVar1 + 8,0.0);
        if (piVar2 != (int *)0x0) {
          piVar2[1] = piVar2[1] + 1;
        }
      }
      local_4c = param_7;
      local_50 = param_6;
      local_48 = param_4;
      local_44 = param_5;
      FUN_10366630(piVar2,&local_50);
      local_30 = 0;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0;
      uStack_34 = DAT_10acb0d4;
      uStack_38 = 0;
      uStack_3c = 0;
      local_40 = 0;
      local_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      uStack_14 = DAT_10acb0d4;
      FUN_1063a560(piVar2,&local_30,&local_20);
      FUN_1055dbd0(&local_5c,&local_30);
      if ((piVar2 != (int *)0x0) && (iVar1 = piVar2[1], piVar2[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar2[1] = 1;
        (**(code **)*piVar2)(1);
      }
    }
  }
  *param_1 = local_5c;
  param_1[1] = local_58;
  param_1[2] = local_54;
  if (this != (undefined4 *)0x0) {
    piVar2 = this + 1;
    LOCK();
    iVar1 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return param_1;
}

