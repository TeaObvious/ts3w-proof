/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_SetRotation. Export ordinal(s): 490.
   Entry VA: 0x10536bd0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Objects_SetRotation(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 *this;
  void *pvVar2;
  int *piVar3;
  undefined4 uVar4;
  int *piVar5;
  float10 fVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fStack_70;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x536bd0  490  Objects_SetRotation */
  iVar1 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar1);
  if (this != (undefined4 *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar1 == 0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d998);
      if (iVar1 != 0) {
        FUN_10748750(iVar1);
      }
    }
    else {
      (**(code **)(*(int *)(iVar1 + 8) + 0x28))();
    }
    iVar1 = FUN_10726da0(this,DAT_10c70408);
    if (iVar1 != 0) {
      *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) | 0x10;
    }
    pvVar2 = (void *)FUN_10726da0(this,DAT_10c8d998);
    if (pvVar2 != (void *)0x0) {
      auVar7._4_4_ = param_3;
      auVar7._0_4_ = param_3;
      auVar7._8_4_ = param_3;
      auVar7._12_4_ = param_3;
      auVar8._4_4_ = _DAT_10aadffc;
      auVar8._0_4_ = _DAT_10aadffc;
      auVar8._8_4_ = _DAT_10aadffc;
      auVar8._12_4_ = _DAT_10aadffc;
      auVar8 = divps(auVar7,auVar8);
      fStack_70 = auVar8._0_4_;
      fVar6 = (float10)fsin((float10)fStack_70);
      fStack_14 = (float)fVar6;
      fVar6 = (float10)fcos((float10)fStack_70);
      fStack_40 = fStack_14 * 0.0;
      fStack_3c = fStack_14 * 0.0;
      fStack_48 = fStack_14 * 0.0;
      fStack_34 = fStack_14 * 0.0;
      fStack_30 = DAT_10acb0d4 * fStack_14;
      fStack_4c = DAT_10acb0d4 * fStack_14;
      fStack_28 = DAT_10acb0d4 * fStack_14;
      fStack_24 = DAT_10acb0d4 * fStack_14;
      fStack_50 = fStack_14 * 0.0;
      fStack_1c = fStack_14 * 0.0;
      fStack_18 = fStack_14 * 0.0;
      fStack_14 = fStack_14 * 0.0;
      fStack_44 = (float)fVar6;
      fStack_38 = fStack_48;
      fStack_2c = fStack_4c;
      fStack_20 = fStack_50;
      FUN_1074ae90(pvVar2,&fStack_50);
    }
    iVar1 = FUN_10726da0(this,DAT_10c8d93c);
    piVar3 = (int *)FUN_10726da0(this,DAT_10c8d978);
    if (((iVar1 == 0) &&
        (((piVar3 == (int *)0x0 || (uVar4 = FUN_10744a70((int)piVar3), (char)uVar4 == '\0')) &&
         (iVar1 = FUN_10726da0(this,DAT_10c70408), iVar1 != 0)))) &&
       ((piVar5 = (int *)FUN_10967620((int)this), piVar5 != (int *)0x0 &&
        (pvVar2 = (void *)(**(code **)(*piVar5 + 0xc))(0x90566b0e), pvVar2 != (void *)0x0)))) {
      FUN_10093280(pvVar2,this);
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x38))();
    }
    return;
  }
  return;
}

