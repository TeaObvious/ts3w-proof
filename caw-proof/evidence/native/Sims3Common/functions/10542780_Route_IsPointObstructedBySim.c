/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_IsPointObstructedBySim. Export ordinal(s):
   673. Entry VA: 0x10542780. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600016B. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

longlong __cdecl Route_IsPointObstructedBySim(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  bool bVar3;
  int *piVar4;
  int *piVar5;
  bool bVar6;
  char cVar7;
  int *piVar8;
  void *this;
  void *this_00;
  float *pfVar9;
  void *pvVar10;
  undefined4 uVar11;
  int iVar12;
  float10 fVar13;
  longlong lVar14;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  int *piStack_80;
  int *piStack_7c;
  undefined4 uStack_78;
  char *pcStack_74;
  float fStack_6c;
  float fStack_68;
  undefined4 *puStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
                    /* 0x542780  673  Route_IsPointObstructedBySim */
  if (DAT_10c78944 == (void *)0x0) {
    return 0;
  }
  piVar8 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar8 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar8 + 0x10))();
  this = (void *)thunk_FUN_10627370();
  this_00 = (void *)FUN_1061ae10((int)this);
  pvVar10 = DAT_10c700c4;
  fStack_84 = 0.0;
  fStack_88 = 0.0;
  fStack_8c = 0.0;
  fStack_90 = 0.0;
  fStack_50 = 0.0;
  fStack_4c = 0.0;
  fStack_48 = 0.0;
  fStack_44 = 0.0;
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  uStack_30 = DAT_10acb0d4;
  fStack_2c = 0.0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  pfVar9 = (float *)FUN_1055db20(&stack0x00000008,&fStack_60);
  fStack_50 = *pfVar9;
  fStack_4c = pfVar9[1];
  fStack_48 = pfVar9[2];
  fStack_44 = pfVar9[3];
  if ((pvVar10 == (void *)0x0) ||
     (fStack_90 = fStack_50, fStack_8c = fStack_4c, fStack_88 = fStack_48, fStack_84 = fStack_44,
     pvVar10 = FUN_1023d070(pvVar10,fStack_50,fStack_48), pvVar10 == (void *)0x0))
  goto LAB_10542ae5;
  fStack_90 = DAT_10aae184;
  fStack_8c = DAT_10aae184;
  fStack_88 = 0.0;
  FUN_100a3200(pvVar10,&fStack_50,&fStack_90);
  fStack_2c = fStack_88;
  if ((*(int *)((int)pvVar10 + 0x408) == 1) &&
     ((*(int *)((int)pvVar10 + 0x40c) == 0x50 && (fStack_88 == 0.0)))) {
    bVar3 = true;
LAB_105428ea:
    if (bVar3) goto LAB_105428f4;
    cVar7 = '\x01';
  }
  else {
    bVar3 = false;
    if ((-1 < (int)fStack_88) || (bVar6 = FUN_100c6de0(pvVar10,&fStack_90), !bVar6))
    goto LAB_105428ea;
LAB_105428f4:
    cVar7 = '\0';
  }
  fStack_60 = fStack_50;
  fStack_5c = fStack_4c;
  fStack_58 = fStack_48;
  fStack_54 = fStack_44;
  fVar13 = FUN_1053b720(fStack_50,fStack_48,(int)fStack_2c,'\x01',cVar7);
  fStack_5c = (float)fVar13;
  fStack_60 = fStack_50;
  fStack_58 = fStack_48;
  fStack_54 = fStack_44;
  fStack_4c = fStack_5c;
  FUN_10426f90(this_00,*(undefined4 *)((int)pvVar10 + 0x48),*(undefined4 *)((int)pvVar10 + 0x4c),
               fStack_50,fStack_48,&fStack_6c,&fStack_68);
  piStack_80 = (int *)0x0;
  piStack_7c = (int *)0x0;
  uStack_78 = 0;
  pcStack_74 = "Routing/RoutingHost/TemporaryFootprintSet";
  uVar11 = FUN_10620040(this,&fStack_50,_DAT_10aae19c,(int *)&piStack_80,'\0',piVar8[0xf]);
  piVar5 = piStack_7c;
  piVar4 = piStack_80;
  if ((char)uVar11 != '\0') {
    for (; piVar4 != piVar5; piVar4 = piVar4 + 1) {
      puVar2 = (undefined4 *)*piVar4;
      puStack_64 = puVar2;
      if (puVar2 != (undefined4 *)0x0) {
        puVar2[1] = puVar2[1] + 1;
        piVar1 = puVar2 + -1;
        if ((piVar1 != (int *)0x0) && (iVar12 = (**(code **)(*piVar1 + 0xc))(), iVar12 == 0x14)) {
          lVar14 = (**(code **)(*piVar1 + 0x84))();
          if ((lVar14 != *(longlong *)(piVar8 + 0x10)) &&
             (((uVar11 = FUN_1060e1d0(piVar8 + 0x56,(int)lVar14,(int)((ulonglong)lVar14 >> 0x20)),
               (char)uVar11 == '\0' && (cVar7 = (**(code **)(*piVar1 + 0xc0))(), cVar7 != '\0')) &&
              (cVar7 = (**(code **)(*piVar1 + 0xd4))(0,fStack_6c,fStack_68,_DAT_10aae19c),
              cVar7 != '\0')))) {
            FUN_10274040((int *)&puStack_64);
            FUN_10108aa0((int *)&piStack_80);
            (**(code **)(*piVar8 + 0x14))();
            return lVar14;
          }
        }
        iVar12 = puVar2[1];
        puVar2[1] = iVar12 + -1;
        if (iVar12 + -1 == 0) {
          puVar2[1] = 1;
          (**(code **)*puVar2)(1);
        }
      }
    }
  }
  FUN_1006f840(piStack_80,piStack_7c);
  if (piStack_80 != (int *)0x0) {
    FUN_10918e90((int)piStack_80);
  }
LAB_10542ae5:
  (**(code **)(*piVar8 + 0x14))();
  return 0;
}

