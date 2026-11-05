/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_PlanFromPoint. Export ordinal(s): 678.
   Entry VA: 0x10556d50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000173. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int * __cdecl
Route_PlanFromPoint(int *param_1,uint param_2,float param_3,float param_4,float param_5)

{
  float fVar1;
  bool bVar2;
  int *this;
  void *pvVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  bool bVar8;
  float10 fVar9;
  float fStack_8c;
  char cStack_88;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  int aiStack_58 [21];
  
                    /* 0x556d50  678  Route_PlanFromPoint */
  pvVar3 = DAT_10c78944;
  bVar8 = DAT_10c78944 == (void *)0x0;
  *param_1 = 2;
  param_1[1] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  if (bVar8) {
    return param_1;
  }
  this = (int *)FUN_1053c0f0(pvVar3,param_2);
  if (this == (int *)0x0) {
    param_1[1] = 0;
    param_1[3] = 0;
    param_1[8] = 0;
    param_1[9] = 0;
    *param_1 = 2;
    param_1[4] = 0;
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[7] = 0;
    return param_1;
  }
  (**(code **)(*this + 0x10))();
  if (DAT_10c700c4 == (void *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    pvVar3 = FUN_1023d070(DAT_10c700c4,param_3,param_5);
  }
  fStack_78 = param_5;
  fStack_74 = param_3;
  fStack_7c = param_4;
  fStack_80 = param_3;
  fStack_70 = param_3;
  fStack_6c = param_4;
  fStack_68 = param_5;
  fStack_64 = param_3;
  fStack_8c = 0.0;
  if (pvVar3 != (void *)0x0) {
    fStack_80 = DAT_10aae184;
    fStack_7c = DAT_10aae184;
    fStack_78 = 0.0;
    FUN_100a3140(pvVar3,&fStack_70,&fStack_80);
    fVar1 = fStack_78;
    fStack_8c = fStack_78;
    if ((int)fStack_78 < 0) {
      bVar2 = FUN_100c6de0(pvVar3,&fStack_80);
      bVar8 = true;
      if (!bVar2) goto LAB_10556e84;
    }
    else {
LAB_10556e84:
      bVar8 = false;
    }
    if ((((int)fVar1 < 0) && (!bVar8)) &&
       (uVar4 = FUN_100c6890(pvVar3,&fStack_80,1), (char)uVar4 == '\0')) {
      fStack_8c = 0.0;
    }
    if ((((*(int *)((int)pvVar3 + 0x408) == 1) && (*(int *)((int)pvVar3 + 0x40c) == 0x50)) &&
        (fStack_78 == 0.0)) || (bVar8)) {
      cStack_88 = '\0';
      goto LAB_10556ed9;
    }
  }
  cStack_88 = '\x01';
LAB_10556ed9:
  iVar5 = thunk_FUN_10627370();
  if (iVar5 == 0) {
    fStack_7c = 0.0;
  }
  else {
    fVar9 = FUN_1061a870(iVar5,param_3,param_5,(int)fStack_8c,'\x01',cStack_88);
    fStack_7c = (float)fVar9;
  }
  fStack_80 = fStack_70;
  fStack_78 = fStack_68;
  fStack_74 = fStack_64;
  fStack_6c = fStack_7c;
  piVar6 = FUN_10555dd0(this,aiStack_58,&fStack_70);
  piVar7 = param_1;
  for (iVar5 = 0x12; iVar5 != 0; iVar5 = iVar5 + -1) {
    *piVar7 = *piVar6;
    piVar6 = piVar6 + 1;
    piVar7 = piVar7 + 1;
  }
  (**(code **)(*this + 0x14))();
  return param_1;
}

