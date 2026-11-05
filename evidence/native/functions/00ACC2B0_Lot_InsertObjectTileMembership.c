/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXlot+1object/RET4 lowAL result. Requires Location,
   selected specialowner admission, computes object compactboundsAB8D70 and appends fullGUID to each
   admitted tile/level vector. Serial/cell order, clamped live lotlevels and special
   fireplace/rug/basement/water paths are actual native side effects. Calls
   liveRugManager_AddRugRecord only for selectedrug predicate. Current host ordinary family is
   narrower; no universal tile-registration or native specialcase equivalence. */

uint __thiscall Lot_InsertObjectTileMembership(void *this,undefined4 *param_1)

{
  float *pfVar1;
  bool bVar2;
  char cVar3;
  undefined4 *in_EAX;
  uint uVar4;
  void *pvVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  undefined3 extraout_var;
  uint extraout_EAX;
  undefined4 *puVar9;
  uint extraout_EAX_00;
  int iVar10;
  uint uVar11;
  float fVar12;
  void *pvVar13;
  undefined4 local_2c;
  void *local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  undefined4 uStack_14;
  void *local_10;
  uint local_c;
  int local_8;
  char *local_4;
  
  if (param_1 == (undefined4 *)0x0) {
LAB_00acc2d4:
    return (uint)in_EAX & 0xffffff00;
  }
  local_28 = Object_GetComponentByMask(param_1,DAT_011edf08);
  in_EAX = (undefined4 *)0x0;
  if (local_28 == (void *)0x0) goto LAB_00acc2d4;
  uVar4 = FUN_00b04980((int)param_1);
  if ((((char)uVar4 != '\0') &&
      (in_EAX = *(undefined4 **)((int)this + 0x2e8), in_EAX != (undefined4 *)0x0)) &&
     (in_EAX != param_1)) goto LAB_00acc2d4;
  local_1c = (float)param_1[2];
  local_18 = (float)param_1[3];
  local_2c = (float)(-(uint)(*(uint *)((int)local_28 + 0x18) != 0x7fffffff) &
                    *(uint *)((int)local_28 + 0x18));
  bVar2 = false;
  local_20 = local_2c;
  FUN_00ab8d70(param_1,(float *)&local_10,&local_20,(float *)&local_2c,0);
  pvVar13 = local_10;
  fVar12 = local_20;
  if (((int)local_10 < local_8) && ((int)local_c < (int)local_4)) {
    local_24 = local_20;
    if ((int)local_20 <= (int)local_2c) {
      do {
        iVar10 = (int)local_24 - *(int *)((int)this + 0x17c);
        if (-1 < iVar10) {
          bVar2 = true;
          pvVar13 = local_10;
          uVar11 = local_c;
          do {
            pvVar5 = (void *)FUN_00acbe70(*(void **)((int)this + 0x2d0),(uint)pvVar13,uVar11,iVar10)
            ;
            pfVar1 = *(float **)((int)pvVar5 + 4);
            if (pfVar1 < *(float **)((int)pvVar5 + 8)) {
              *(float **)((int)pvVar5 + 4) = pfVar1 + 2;
              if (pfVar1 != (float *)0x0) {
                *pfVar1 = local_1c;
                pfVar1[1] = local_18;
              }
            }
            else {
              FUN_00abec50(pvVar5,pfVar1,&local_1c);
            }
            pvVar13 = (void *)((int)pvVar13 + 1);
          } while (((int)pvVar13 < local_8) ||
                  (uVar11 = uVar11 + 1, pvVar13 = local_10, (int)uVar11 < (int)local_4));
        }
        local_24 = (float)((int)local_24 + 1);
      } while ((int)local_24 <= (int)local_2c);
    }
    pvVar13 = local_10;
    fVar12 = local_20;
    FUN_00c89680(local_28,(char)local_10,(char)local_c,(char)local_8,(char)local_4,SUB41(local_20,0)
                 ,SUB41(local_2c,0));
  }
  uVar6 = FUN_00b00520((int)param_1);
  if (((char)uVar6 != '\0') &&
     (pvVar5 = Object_GetComponentByMask(param_1,DAT_011e9fc4), pvVar5 != (void *)0x0)) {
    FUN_00948d80(pvVar5,*(uint *)((int)pvVar5 + 0x50) | 0x20000);
  }
  uVar6 = FUN_00b005c0((int)param_1);
  if ((char)uVar6 != '\0') {
    local_2c = (float)((local_c & 0xff) << 8);
    local_2c = (float)CONCAT13(local_4._0_1_,CONCAT12((undefined1)local_8,(undefined2)local_2c));
    local_2c = (float)CONCAT31(local_2c._1_3_,(char)pvVar13);
    RugManager_AddRugRecord
              (*(void **)((int)this + 0x2d8),param_1[2],param_1[3],(undefined1 *)&local_2c,
               SUB41(fVar12,0),1);
  }
  if ((char)uVar4 != '\0') {
    if (*(undefined4 **)((int)this + 0x2e8) != param_1) {
      puVar9 = *(undefined4 **)((int)this + 0x2e8);
      if (param_1 != puVar9) {
        LOCK();
        param_1[1] = param_1[1] + 1;
        UNLOCK();
        *(undefined4 **)((int)this + 0x2e8) = param_1;
        if (puVar9 != (undefined4 *)0x0) {
          piVar7 = puVar9 + 1;
          LOCK();
          iVar10 = *piVar7;
          *piVar7 = *piVar7 + -1;
          UNLOCK();
          if (iVar10 == 1) {
            LOCK();
            *piVar7 = 1;
            UNLOCK();
            (**(code **)*puVar9)(1);
          }
        }
      }
      local_1c = -1.0;
      *(float *)((int)this + 0x300) = -1.0;
      local_18 = -1.0;
      *(float *)((int)this + 0x304) = -1.0;
      *(undefined4 *)((int)this + 0x308) = 0;
      *(undefined1 *)((int)this + 0x2fc) = 0;
      pfVar1 = (float *)((int)this + 0x2ec);
      *pfVar1 = 0.0;
      *(undefined4 *)((int)this + 0x2f0) = 0;
      *(undefined4 *)((int)this + 0x2f4) = 0;
      *(undefined4 *)((int)this + 0x2f8) = 0;
      if (*(void **)((int)this + 0x2e8) != (void *)0x0) {
        local_10 = (void *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = "World/Lot/SetBuildableShellObject";
        Seasons_TransformObjectBoundsIntoLotSpace
                  (this,*(void **)((int)this + 0x2e8),(int *)&local_10,pfVar1);
        if (((((*(void **)((int)this + 0x2e8) != (void *)0x0) &&
              (pvVar13 = Object_GetComponentByMask(*(void **)((int)this + 0x2e8),DAT_011ea114),
              pvVar13 != (void *)0x0)) && (iVar10 = FUN_00950290((int)pvVar13), iVar10 != 0)) &&
            ((iVar10 = FUN_009502a0(pvVar13,0), iVar10 != 0 &&
             (*(void **)(iVar10 + 0x1c) != (void *)0x0)))) &&
           (pvVar13 = (void *)FUN_0074bb80(*(void **)(iVar10 + 0x1c)), pvVar13 != (void *)0x0)) {
          *(undefined1 *)((int)this + 0x2fc) = 1;
          FUN_00c894e0(pvVar13,(int *)((int)this + 0x300),(undefined4 *)((int)this + 0x304),
                       (undefined4 *)((int)this + 0x308));
        }
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
        }
      }
      piVar7 = FUN_00adf150();
      if (piVar7 == (int *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        *piVar7 = (int)&PTR_FUN_01065f8c;
        LOCK();
        piVar7[1] = 0;
        UNLOCK();
        *piVar7 = (int)&PTR_FUN_01065f8c;
        piVar7[10] = (int)-1.0;
        piVar7[0xb] = (int)-1.0;
        piVar7[0xc] = 0;
        (**(code **)(*piVar7 + 4))();
      }
      piVar7[2] = *(int *)((int)this + 0x48);
      piVar7[3] = *(int *)((int)this + 0x4c);
      piVar7[4] = param_1[2];
      piVar7[5] = param_1[3];
      piVar7[6] = (int)*pfVar1;
      piVar7[7] = *(int *)((int)this + 0x2f0);
      piVar7[8] = *(int *)((int)this + 0x2f4);
      piVar7[9] = *(int *)((int)this + 0x2f8);
      *(undefined1 *)(piVar7 + 0xd) = *(undefined1 *)((int)this + 0x2fc);
      piVar7[10] = *(int *)((int)this + 0x300);
      piVar7[0xb] = *(int *)((int)this + 0x304);
      piVar7[0xc] = *(int *)((int)this + 0x308);
      if (((*(char *)((int)this + 0xc9) == '\0') && (*(int *)((int)this + 0x364) != 0)) &&
         (piVar8 = (int *)FUN_0044c4f0(), piVar8 != (int *)0x0)) {
        (**(code **)(*piVar8 + 0x1c))(0xa80b189,piVar7,0,*(undefined4 *)((int)this + 0x364));
      }
      (**(code **)(*piVar7 + 8))();
    }
    FUN_00ab3d00(this,'\0');
    if (((*(int *)((int)this + 0x290) != 0) && (*(int *)((int)this + 0xc) != 0)) &&
       ((iVar10 = *(int *)(*(int *)((int)this + 0xc) + 0x154), iVar10 == 0xc9 ||
        ((iVar10 == 0xca || (iVar10 == 0xcc)))))) {
      local_10 = (void *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Lot/AddObjectToLotTile/tilePartArray";
      FUN_00ad2190((int)this,&local_10);
      FUN_00a9a010(*(void **)((int)this + 0x290),&local_10);
      if (local_10 != (void *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
    }
  }
  cVar3 = CachedGlobalMask8000_Query();
  uVar4 = CONCAT31(extraout_var,cVar3);
  if (((cVar3 == '\0') || (uVar4 = FUN_00b00600((int)param_1), (char)uVar4 == '\0')) ||
     (*(undefined4 **)((int)this + 0x318) == param_1)) goto LAB_00acc820;
  EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0xf0));
  puVar9 = *(undefined4 **)((int)this + 0x318);
  if (param_1 != puVar9) {
    LOCK();
    param_1[1] = param_1[1] + 1;
    UNLOCK();
    *(undefined4 **)((int)this + 0x318) = param_1;
    if (puVar9 != (undefined4 *)0x0) {
      piVar7 = puVar9 + 1;
      LOCK();
      iVar10 = *piVar7;
      *piVar7 = *piVar7 + -1;
      UNLOCK();
      if (iVar10 == 1) {
        LOCK();
        *piVar7 = 1;
        UNLOCK();
        (**(code **)*puVar9)(1);
      }
    }
  }
  if (*(void **)((int)this + 0x318) == (void *)0x0) {
    if (*(int *)((int)this + 0x31c) != 0) {
LAB_00acc7d5:
      if (*(char *)((int)this + 0x3a5) != '\0') {
        *(undefined1 *)((int)this + 800) = 1;
      }
    }
    puVar9 = *(undefined4 **)((int)this + 0x31c);
    if (puVar9 != (undefined4 *)0x0) {
      piVar7 = puVar9 + 1;
      *(undefined4 *)((int)this + 0x31c) = 0;
      LOCK();
      iVar10 = *piVar7;
      *piVar7 = *piVar7 + -1;
      UNLOCK();
      if (iVar10 == 1) {
        LOCK();
        *piVar7 = 1;
        UNLOCK();
        (**(code **)*puVar9)(1);
      }
    }
  }
  else {
    pvVar13 = Object_GetComponentByMask(*(void **)((int)this + 0x318),DAT_011edf08);
    if (pvVar13 == (void *)0x0) goto LAB_00acc7d5;
    local_1c = -1.0;
    local_18 = -1.0;
    uStack_14 = 0;
    FUN_00c89500(pvVar13,&local_1c);
    pvVar13 = (void *)FUN_004e4500(0x18,"Lot/Greenhouse",0);
    if (pvVar13 == (void *)0x0) {
      puVar9 = (undefined4 *)0x0;
    }
    else {
      puVar9 = (undefined4 *)FUN_00b09440(pvVar13,local_1c,local_18,0x41b80000);
    }
    FUN_00874fb0((void *)((int)this + 0x31c),puVar9);
    if (*(char *)((int)this + 0x3a5) != '\0') {
      *(undefined1 *)((int)this + 800) = 1;
    }
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0xf0));
  uVar4 = extraout_EAX;
LAB_00acc820:
  if (bVar2) {
    uVar4 = *(uint *)((int)this + 0xc);
    pvVar13 = local_28;
    if ((*(int *)(uVar4 + 0x154) == 200) &&
       (uVar4 = FUN_00b00850((int)param_1), pvVar13 = local_28, (char)uVar4 != '\0')) {
      uVar4 = FUN_00c89960(local_28,1);
    }
    if ((*(uint *)((int)pvVar13 + 0x2c) >> 1 & 1) != 0) {
      LocationComponent_PostReachingConfiguration(pvVar13);
      uVar4 = extraout_EAX_00;
    }
  }
  return CONCAT31((int3)(uVar4 >> 8),1);
}

