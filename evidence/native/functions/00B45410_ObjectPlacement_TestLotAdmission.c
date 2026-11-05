/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 placement/source boundary. cdecl two words/plainRET/AL status. Require lot,
   inclusive localX/Z extents and signedlevel min..max; only after those checks does context+29
   ignore-restrictions return1. Special level1 branch, detailed footprint/wall/room tests and
   feedback remain original responsibilities. MoveObjects is not an unconditional valid placement
   result outside the lot.
   
   Additional PC1.67 wall-flag caller boundary: B45590 pushes optional diagnostics and context,
   calls B404B0 and cleans8bytes; AL test controls admission. Prior context+98 nonzero returns
   retained result before wall flags; context byte+81 bypasses wall-flag test. Diagnostics-null
   failures stop immediately; diagnostics mode preserves aggregate0 while later checks run. This
   caller context is separate from project spatial opening scores and wall material-span union. */

undefined1 __cdecl ObjectPlacement_TestLotAdmission(int *param_1,void *param_2)

{
  LotPaintPoint *point;
  undefined *lot;
  int iVar1;
  char cVar2;
  bool bVar3;
  byte bVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  uint errorCode;
  float local_50 [19];
  
  lot = (undefined *)param_1[1];
  if (lot == (undefined *)0x0) {
    return 0;
  }
  if (((((float)param_1[2] < 0.0) || ((float)*(int *)(lot + 0x174) < (float)param_1[2])) ||
      ((float)param_1[3] < 0.0)) || ((float)*(int *)(lot + 0x178) < (float)param_1[3])) {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    errorCode = 2;
  }
  else {
    iVar1 = param_1[4];
    if ((*(int *)(lot + 0x17c) <= iVar1) && (iVar1 <= *(int *)(lot + 0x180))) {
      if ((param_1[7] == 0) ||
         (uVar5 = FUN_0054e0a0((int *)(param_1[7] + 0x168),&DAT_011ec8d0), (char)uVar5 == '\0')) {
        bVar3 = false;
      }
      else {
        bVar3 = true;
      }
      if ((iVar1 != 1) || (!bVar3)) {
LAB_00b45537:
        if (*(char *)((int)param_1 + 0x29) != '\0') {
          return 1;
        }
        uVar6 = 1;
        if ((*param_1 == 0) || (bVar3 = Object_HasSimComponent(*param_1), !bVar3)) {
          cVar2 = Placement_ValidateEnabledFootprintAreas(param_1,param_2);
        }
        else {
          cVar2 = FUN_00b452b0(param_1,param_2);
        }
        if (cVar2 == '\0') {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar6 = 0;
        }
        if (param_1[0x26] != 0) {
          return uVar6;
        }
        if ((*(char *)((int)param_1 + 0x81) == '\0') &&
           (bVar4 = Placement_TestWallFlagConstraints(param_1,param_2), bVar4 == 0)) {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar6 = 0;
        }
        uVar5 = FUN_00b3c9c0((int)param_1,param_2);
        if ((char)uVar5 == '\0') {
          if (param_2 == (void *)0x0) {
            return 0;
          }
          uVar6 = 0;
        }
        bVar3 = Placement_ValidateBuildSurface(param_1,param_2);
        if (bVar3) {
          return uVar6;
        }
        if (param_2 == (void *)0x0) {
          return 0;
        }
        return 0;
      }
      if (*(char *)((int)param_1 + 0x29) != '\0') {
        return 1;
      }
      if (*(void **)(lot + 0x290) == (void *)0x0) goto LAB_00b45537;
      point = (LotPaintPoint *)(param_1 + 2);
      cVar2 = FUN_00a8cfa0(*(void **)(lot + 0x290),(float *)point);
      if ((cVar2 == '\0') || (param_2 == (void *)0x0)) goto LAB_00b45537;
      if ((param_1[7] == 0) || ((*(uint *)(param_1[7] + 0x9c) >> 0x16 & 1) == 0)) {
        BuildEditErrorRecord_InitializeAtLotPoint(local_50,0x45,(undefined *)param_1[1],point,0,0);
      }
      else {
        BuildEditErrorRecord_InitializeAtLotPoint(local_50,0x53,(undefined *)param_1[1],point,0,0);
      }
      goto LAB_00b455f2;
    }
    if (param_2 == (void *)0x0) {
      return 0;
    }
    errorCode = 3;
  }
  BuildEditErrorRecord_InitializeAtLotPoint
            (local_50,errorCode,lot,(LotPaintPoint *)(param_1 + 2),0,0);
LAB_00b455f2:
  FUN_00ad8570(param_2,local_50);
  FUN_00ad70d0((int)local_50);
  return 0;
}

