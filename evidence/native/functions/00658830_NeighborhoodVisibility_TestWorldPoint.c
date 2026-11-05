/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original: Nine stack words, plain RET; AL truth, unrelated high EAX unspecified. Early
   bridge/special upper-region path precedes ground mask 0x10. Lot finder is called only for mask
   0x05; bit 0x01 rejects a containing lot. Outside special upper-world region, bit 0x04 rejects
   no-lot surface height at or below sea, bit 0x20 independently rejects pond membership, bit 0x02
   queries bridge collision, and bit 0x40 uses component outlines or global collision. Optional
   reason receives 16,1,4,32,2,64 in branch order or 0 on ordinary success; early bridge success
   bypasses reason output. Sidewalk mask 0x7C omits lot rejection. Current decompiler type widths
   are not a full-EAX boolean guarantee. */

uint __cdecl
NeighborhoodVisibility_TestWorldPoint
          (byte param_1,void *param_2,undefined4 param_3,void *param_4,float param_5,float param_6,
          undefined4 param_7,undefined4 *param_8,float param_9)

{
  int *piVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  undefined4 *puVar5;
  undefined4 *extraout_EAX;
  uint uVar6;
  void *pvVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  ushort in_FPUControlWord;
  float10 fVar11;
  int *local_6c;
  undefined8 local_68;
  int local_5c [3];
  float local_50 [19];
  
  if ((((param_2 == (void *)0x0) || (param_5 < *(float *)((int)param_2 + 0xb4))) ||
      (param_6 <= *(float *)((int)param_2 + 0xc0))) ||
     ((*(float *)((int)param_2 + 0xbc) <= param_5 ||
      (*(float *)((int)param_2 + 0xc4) + *(float *)((int)param_2 + 0xc0) <= param_6)))) {
    bVar3 = false;
    uVar8 = FUN_00b77f60(*(void **)((int)param_2 + 0x5c),param_5,param_6,'\x01','\0',&local_6c,
                         (float *)0x0,'\0');
    if ((char)uVar8 != '\0') {
      puVar5 = (undefined4 *)
               ((uint)CONCAT21((short)((uint)uVar8 >> 0x10),
                               (param_9 == DAT_00fee188) << 6 |
                               (NAN(param_9) || NAN(DAT_00fee188)) << 2 | 2U |
                               param_9 < DAT_00fee188) << 8);
      if (param_9 == DAT_00fee188) goto LAB_00658c0f;
      fVar11 = FUN_00b73130(local_6c,param_5,param_6);
      local_6c = (int *)ABS((float)((float10)param_9 - fVar11));
      puVar5 = extraout_EAX;
      if ((float)local_6c < _DAT_0104487c) goto LAB_00658c0f;
    }
  }
  else {
    bVar3 = true;
  }
  if (((param_1 & 0x10) != 0) &&
     (bVar2 = WorldSurface_TestGroundAdmission(param_2,param_5,param_6), !bVar2)) {
    if (((param_1 & 4) != 0) ||
       (bVar2 = WorldSurface_TestLowerRegionGroundAdmission(param_2,param_5,param_6), !bVar2)) {
LAB_006589cb:
      if (param_8 != (undefined4 *)0x0) {
        *param_8 = 0x10;
      }
      return (uint)param_8 & 0xffffff00;
    }
    fVar11 = WorldSurface_QueryHeight
                       (param_2,param_5,param_6,0,'\0','\x01',(undefined1 *)0x0,(undefined1 *)0x0,
                        '\0','\x01');
    local_6c = (int *)(float)fVar11;
    fVar11 = WorldWater_GetSeaLevel((int)param_2);
    if ((fVar11 < (float10)(float)local_6c) &&
       ((uVar6 = WorldTemplate_GetEffectiveWorldType((void *)((int)param_2 + 0x270)), uVar6 == 4 ||
        (pvVar7 = FUN_00c60880(param_2,param_5,param_6,'\0'), pvVar7 == (void *)0x0))))
    goto LAB_006589cb;
  }
  pvVar7 = (void *)0x0;
  if ((param_1 & 5) != 0) {
    pvVar7 = LotSpatialIndex_FindContainingLotAtWorldXZ(param_2,param_5,param_6);
  }
  if (((param_1 & 1) != 0) && (pvVar7 != (void *)0x0)) {
    if (param_8 != (undefined4 *)0x0) {
      *param_8 = 1;
    }
    return (uint)param_8 & 0xffffff00;
  }
  if (!bVar3) {
    if (((param_1 & 4) != 0) && (pvVar7 == (void *)0x0)) {
      fVar11 = WorldSurface_QueryHeight
                         (param_2,param_5,param_6,0,'\0','\x01',(undefined1 *)0x0,(undefined1 *)0x0,
                          '\0','\x01');
      local_6c = (int *)(float)fVar11;
      fVar11 = WorldWater_GetSeaLevel((int)param_2);
      if ((float10)(float)local_6c <= fVar11) {
        if (param_8 != (undefined4 *)0x0) {
          *param_8 = 4;
        }
        return (uint)param_8 & 0xffffff00;
      }
    }
    if (((param_1 & 0x20) != 0) &&
       (pvVar7 = FUN_00c60880(param_2,param_5,param_6,'\x01'), pvVar7 != (void *)0x0)) {
      if (param_8 != (undefined4 *)0x0) {
        *param_8 = 0x20;
      }
      return (uint)param_8 & 0xffffff00;
    }
    if (((param_1 & 2) != 0) &&
       (uVar8 = FUN_00b865c0(*(void **)((int)param_2 + 0x5c),param_5,param_6,'\x01','\x01'),
       (char)uVar8 != '\0')) {
      if (param_8 != (undefined4 *)0x0) {
        *param_8 = 2;
      }
      return (uint)param_8 & 0xffffff00;
    }
    if ((param_1 & 0x40) != 0) {
      if ((param_4 == (void *)0x0) ||
         (piVar1 = *(int **)((int)param_4 + 0x10), piVar1 == (int *)0x0)) {
        pvVar7 = (void *)CollisionService_GetGlobal();
        cVar4 = FUN_00687080(pvVar7,param_5,param_6,local_50);
        if (cVar4 != '\0') {
          if (param_8 != (undefined4 *)0x0) {
            *param_8 = 0x40;
          }
          return (uint)param_8 & 0xffffff00;
        }
      }
      else {
        local_5c[1] = 0xffffffff;
        local_5c[2] = 1;
        local_68._0_4_ =
             (float)(longlong)ROUND((param_6 - *(float *)((int)param_2 + 0xb8)) * _DAT_00fee240);
        iVar9 = (int)(float)local_68 * *piVar1;
        local_6c = (int *)(in_FPUControlWord | 0xc00);
        local_68 = (longlong)ROUND((param_5 - *(float *)((int)param_2 + 0xb4)) * DAT_00fa2bb0);
        iVar9 = (int)(float)local_68 - iVar9;
        iVar10 = 0;
        local_5c[0] = 0;
        do {
          uVar6 = local_5c[iVar10] + iVar9;
          if ((uVar6 < (uint)(piVar1[1] * *piVar1)) &&
             (local_6c = FUN_00658540(param_4,uVar6), local_6c != (int *)0x0)) {
            local_68 = CONCAT44(param_6,param_5);
            FUN_00627780(local_50);
            bVar3 = Geometry_DiscOverlapsAnyPolygon(local_6c,(float *)&local_68,_DAT_00fee42c);
            if (bVar3) {
              if (param_8 != (undefined4 *)0x0) {
                *param_8 = 0x40;
              }
              uVar6 = FUN_007996b0((int *)local_50);
              return uVar6 & 0xffffff00;
            }
            FUN_007996b0((int *)local_50);
          }
          iVar10 = iVar10 + 1;
        } while (iVar10 < 3);
      }
    }
  }
  puVar5 = param_8;
  if (param_8 != (undefined4 *)0x0) {
    *param_8 = 0;
  }
LAB_00658c0f:
  return CONCAT31((int3)((uint)puVar5 >> 8),1);
}

