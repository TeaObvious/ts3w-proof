/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 original static instructions. cdecl3DWORDargs/RET, result lowAL with upperEAX artifacts.
   Selected direct caller transforms authored footprint, computes bounds, applies category/lot/level
   gates then AD1990 append0/inset0. Additional terrain/special-floor and placementfailure children
   retain independent contracts; full placement policy not reconstructed by the coverage parent.
   Tool rectangle/cursor ownership not inferred solely from this function.
   
   PC1.67 capability closure: area signedbyte+5 adds to object signedlevel, actual
   transformedpolygon/corner bounds and AD1990 append0/inset0. Empty vector/no current area
   succeeds. Positive offset withAir40 above lot top has a selected early-success branch; other
   out-of-range cases can fail or be exempt. Complete support/feedback/object state remains this
   live query, not host mask admission. */

bool __cdecl
Placement_ValidateTransformedFootprintCoverage(int *param_1,float *param_2,void *param_3)

{
  float fVar1;
  int iVar2;
  void *this;
  char cVar3;
  bool bVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  float *pfVar8;
  int ***pppiVar9;
  bool bVar10;
  undefined *lot;
  float local_98;
  float local_94;
  float local_90;
  int iStack_8c;
  float fStack_88;
  int iStack_84;
  float local_80;
  float local_70;
  int iStack_6c;
  float fStack_68;
  int iStack_64;
  int local_60;
  int iStack_5c;
  int iStack_58;
  int iStack_54;
  float local_50 [19];
  
  iVar6 = param_1[0x27];
  if (iVar6 == 0) {
    return true;
  }
  if (*(int *)(iVar6 + 0x30) == *(int *)(iVar6 + 0x34)) {
    return true;
  }
  cVar3 = *(char *)(iVar6 + 5);
  *(undefined1 *)(param_1 + 10) = 1;
  param_1[9] = (int)cVar3 + param_1[4];
  lot = (undefined *)param_1[1];
  iVar2 = param_1[9];
  if ((*(int *)(lot + 0x180) < iVar2) || (iVar2 < *(int *)(lot + 0x17c))) {
    if (('\0' < *(char *)(iVar6 + 5)) &&
       (((*(byte *)(iVar6 + 0xc) & 0x40) != 0 && (*(int *)(lot + 0x180) < iVar2)))) {
      return true;
    }
    if (param_1[0x26] != 0) {
      return true;
    }
    if (param_3 == (void *)0x0) {
      return false;
    }
    goto LAB_00b450b3;
  }
  Geometry_TransformPolygonXZByMatrix3((int *)(iVar6 + 0x30),param_2,param_1 + 0x28);
  pfVar8 = (float *)(param_1 + 0x2c);
  Geometry_GetPolygonXZBounds(param_1 + 0x28,pfVar8);
  if (((param_1[4] < 1) || ((void *)param_1[7] == (void *)0x0)) ||
     (uVar5 = Catalog_TestIntersectionCategoryMask((void *)param_1[7]), (char)uVar5 == '\0')) {
    if ((char)param_1[0x22] != '\0') goto LAB_00b44e23;
    lot = (undefined *)param_1[1];
    uVar7 = FUN_0074aa40(lot,*pfVar8,(float)param_1[0x2d]);
    if ((char)uVar7 != '\0') {
      uVar7 = FUN_0074aa40(lot,(float)param_1[0x2e],(float)param_1[0x2f]);
      cVar3 = (char)uVar7;
      goto LAB_00b44df9;
    }
  }
  else {
    lot = (undefined *)param_1[1];
    cVar3 = FUN_00b3adc0(lot,*pfVar8,(float)param_1[0x2d]);
    if (cVar3 != '\0') {
      cVar3 = FUN_00b3adc0(lot,(float)param_1[0x2e],(float)param_1[0x2f]);
LAB_00b44df9:
      if (cVar3 != '\0') {
LAB_00b44e23:
        iVar6 = FUN_004067a0(*pfVar8);
        param_1[0x30] = iVar6;
        iVar6 = FUN_004067a0((float)param_1[0x2d]);
        param_1[0x31] = iVar6;
        iVar6 = FUN_004067d0((float)param_1[0x2e]);
        param_1[0x32] = iVar6;
        iVar6 = FUN_004067d0((float)param_1[0x2f]);
        param_1[0x33] = iVar6;
        FUN_00a8acd0((void *)param_1[1],param_1 + 0x30,param_1 + 0x31);
        FUN_00a8acd0((void *)param_1[1],param_1 + 0x32,param_1 + 0x33);
        LotGeometry_CollectPolygonQuarterCoverage
                  (param_1 + 0x28,pfVar8,param_1[1],(char)param_1[9],param_1 + 0x34,'\0','\0');
        uVar7 = FUN_00b3b650((void *)*param_1,&local_70);
        *(char *)(param_1 + 0x20) = (char)uVar7;
        if ((char)uVar7 != '\0') {
          param_1[0x18] = (int)local_70;
          param_1[0x19] = iStack_6c;
          param_1[0x1a] = (int)fStack_68;
          param_1[0x1b] = iStack_64;
          param_1[0x1c] = local_60;
          param_1[0x1d] = iStack_5c;
          param_1[0x1e] = iStack_58;
          param_1[0x1f] = iStack_54;
          this = (void *)param_1[7];
          if (((this != (void *)0x0) && ((*(uint *)((int)this + 0xa4) & 0x4002) != 0)) &&
             ((uVar5 = Catalog_TestIntersectionCategoryOrD0Bit4(this), (char)uVar5 == '\0' &&
              (((*(uint *)(param_1[7] + 0xd0) & 0x10000) == 0 &&
               (iVar6 = FUN_00789450(param_1[7]), iVar6 == 0)))))) {
            if ((_DAT_011ed198 & 1) == 0) {
              _DAT_011ed198 = _DAT_011ed198 | 1;
              DAT_011ed194 = -0.575;
            }
            local_80 = (float)param_1[0x1a];
            local_90 = DAT_011ed194;
            if (DAT_011ed194 < local_80) {
              local_90 = local_70;
              iStack_8c = iStack_6c;
              fStack_88 = fStack_68;
              iStack_84 = iStack_64;
              local_94 = -0.5;
              local_98 = fStack_68;
              pfVar8 = &local_94;
              if (-0.5 <= fStack_68) {
                pfVar8 = &local_98;
              }
              fVar1 = *pfVar8;
              param_1[0x18] = param_1[0x18];
              param_1[0x19] = param_1[0x19];
              param_1[0x1a] = (int)fVar1;
              param_1[0x1b] = param_1[0x1b];
            }
          }
        }
        bVar10 = true;
        if (((*(char *)((int)param_1 + 0x82) == '\0') && (param_1[0x26] == 0)) &&
           (cVar3 = FUN_00b3f540(param_1,param_3), cVar3 == '\0')) {
          if (param_3 == (void *)0x0) {
            return false;
          }
          bVar10 = false;
        }
        if (*(char *)((int)param_1 + 0x85) == '\0') {
          if (*(char *)((int)param_1 + 0x86) == '\0') {
            if ((*(char *)((int)param_1 + 0x87) != '\0') &&
               (pppiVar9 = FUN_00ab7e80((void *)param_1[1],(float *)(param_1 + 2),8),
               pppiVar9 != (int ***)&DAT_00000006)) {
              return false;
            }
          }
          else {
            pppiVar9 = FUN_00ab7e80((void *)param_1[1],(float *)(param_1 + 2),0x34);
            uVar7 = FUN_00afd570((int)pppiVar9);
            if ((char)uVar7 == '\0') {
              return false;
            }
          }
        }
        else {
          pppiVar9 = FUN_00ab7e80((void *)param_1[1],(float *)(param_1 + 2),0x34);
          uVar7 = FUN_00afd530((int)pppiVar9);
          if ((char)uVar7 == '\0') {
            return false;
          }
        }
        bVar4 = Placement_ValidateFootprintAndCollectFailures(param_1,param_3);
        if (bVar4) {
          return bVar10;
        }
        if (param_3 == (void *)0x0) {
          return false;
        }
        return false;
      }
    }
  }
  if (param_1[0x26] != 0) {
    return true;
  }
  if (param_3 == (void *)0x0) {
    return false;
  }
LAB_00b450b3:
  BuildEditErrorRecord_InitializeAtLotPoint(local_50,2,lot,(LotPaintPoint *)(param_1 + 2),0,0);
  FUN_00ad8570(param_3,local_50);
  FUN_00ad70d0((int)local_50);
  return false;
}

