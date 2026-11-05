/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_SetPosition. Export ordinal(s): 489.
   Entry VA: 0x10536710. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB6. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Objects_SetPosition(undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5)

{
  undefined1 auVar1 [16];
  int iVar2;
  undefined4 *this;
  void *pvVar3;
  void *pvVar4;
  float *pfVar5;
  int *piVar6;
  int *piVar7;
  undefined4 extraout_EDX;
  undefined4 uVar8;
  bool bVar9;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x536710  489  Objects_SetPosition */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    iVar2 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar2 == 0) {
      iVar2 = FUN_10726da0(this,DAT_10c8d998);
      if (iVar2 != 0) {
        FUN_10748750(iVar2);
      }
    }
    else {
      (**(code **)(*(int *)(iVar2 + 8) + 0x28))();
    }
    bVar9 = false;
    pvVar3 = (void *)FUN_10726da0(this,DAT_10c70408);
    pvVar4 = (void *)FUN_10726da0(this,DAT_10c8d998);
    if (pvVar4 != (void *)0x0) {
      FUN_1074a2b0(pvVar4,&fStack_20);
      fStack_28 = param_5;
      fStack_24 = param_3;
      fStack_2c = param_4;
      fStack_30 = param_3;
      auVar1._4_4_ = -(uint)(param_4 == fStack_1c);
      auVar1._0_4_ = -(uint)(param_3 == fStack_20);
      auVar1._8_4_ = -(uint)(param_5 == fStack_18);
      auVar1._12_4_ = -(uint)(param_3 == fStack_14);
      uVar8 = movmskps(extraout_EDX,auVar1);
      bVar9 = ((byte)uVar8 & 7) != 7;
      if ((bVar9) && (pvVar3 != (void *)0x0)) {
        *(uint *)((int)pvVar3 + 0x2c) = *(uint *)((int)pvVar3 + 0x2c) & 0xffffff7f;
      }
      pfVar5 = (float *)FUN_1055db20(&param_3,&fStack_30);
      FUN_1074ac30(pvVar4,pfVar5);
    }
    iVar2 = FUN_10726da0(this,DAT_10c8d93c);
    piVar6 = (int *)FUN_10726da0(this,DAT_10c8d978);
    if ((iVar2 == 0) &&
       (((piVar6 == (int *)0x0 || (uVar8 = FUN_10744a70((int)piVar6), (char)uVar8 == '\0')) &&
        (pvVar3 != (void *)0x0)))) {
      if (bVar9) {
        piVar7 = (int *)FUN_10967620((int)this);
        pvVar4 = (void *)FUN_10025030(piVar7);
        FUN_10261a40(pvVar3,(int *)0x0);
        piVar7 = (int *)FUN_10967620((int)this);
        pvVar3 = (void *)FUN_10025030(piVar7);
        if ((pvVar3 != (void *)0x0) && (pvVar4 == pvVar3)) {
          FUN_10093280(pvVar3,this);
        }
      }
      else {
        FUN_10261a40(pvVar3,(int *)0x0);
      }
    }
    if (piVar6 != (int *)0x0) {
      (**(code **)(*piVar6 + 0x34))();
    }
  }
  return;
}

