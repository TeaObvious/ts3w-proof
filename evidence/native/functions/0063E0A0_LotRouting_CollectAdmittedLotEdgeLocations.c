/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original PC1.67; descriptive analyst name. ECX routing manager plus five stack slots: lot-ID
   low/high, output12-byte point vector, preferred-index output and low-byte below-sea exclusion;
   RET14, EAX count. Requires admitted lot, prepares selected UInt16 component from lotrecord+16C,
   retains nonnull portal+58 bit1 entries in original order and maps lotrecord+14 preferred original
   ordinal through filtering. Cyclic midpoint uses From+14/+18 and separate ADDSS/MULSS with
   Float32.5 at00F9B5B4. Each midpoint receives AB0590 level and must pass633F70; optional ordered
   lot-local sea>floor rejection uses FCOMIP/JA.62F360 transforms XZ while copying raw level, then
   append and compact preferred index. Nonempty edge path clears output and sets preferred=-1 before
   lot lookup; early empty/unavailable paths return0 without promising those writes. Complete two
   existing ranges822bytes/258instructions; seven gap bytes excluded. C float/pointer aliases are
   artifacts; no types or ABI edited. */

int __thiscall
LotRouting_CollectAdmittedLotEdgeLocations
          (void *this,uint param_1,uint param_2,int *param_3,int *param_4,char param_5)

{
  int *piVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  void *this_00;
  undefined1 uVar5;
  char cVar6;
  undefined4 uVar7;
  uint *puVar8;
  int *piVar9;
  undefined3 extraout_var;
  uint uVar10;
  uint uVar11;
  int *piVar12;
  float *pfVar13;
  float10 fVar14;
  int *local_50;
  float local_48;
  void *local_44;
  TS3WPortalXZLevel local_40;
  float local_34;
  float local_30;
  TS3WPortalXZLevel local_28;
  LotXZLevel local_1c;
  float *local_10;
  float *local_c;
  float *local_8;
  char *local_4;
  
  local_44 = this;
  uVar7 = LotRouting_HasAdmittedLotRecord(this,param_1,param_2);
  if ((char)uVar7 == '\0') {
    return 0;
  }
  puVar8 = (uint *)FUN_0062f2d0((void *)((int)this + 0x48),&param_1);
  LotRouting_EnsureComponentPortalAdjacency(this,puVar8,(ushort)puVar8[0x5b]);
  piVar1 = (int *)(puVar8[0x24] + 4 + (uint)(ushort)puVar8[0x5b] * 0x44);
  uVar10 = 0;
  local_10 = (float *)0x0;
  local_c = (float *)0x0;
  local_8 = (float *)0x0;
  local_4 = "Routing/edgePortals";
  FUN_004d5650(&local_10,puVar8[4]);
  uVar11 = piVar1[1] - *piVar1 >> 2;
  local_50 = (int *)0xffffffff;
  pfVar13 = local_c;
  if (uVar11 != 0) {
    do {
      local_48 = *(float *)(*piVar1 + uVar10 * 4);
      if ((local_48 != 0.0) && ((*(byte *)((int)local_48 + 0x58) >> 1 & 1) != 0)) {
        if (pfVar13 < local_8) {
          local_c = pfVar13 + 1;
          if (pfVar13 != (float *)0x0) {
            *pfVar13 = local_48;
          }
        }
        else {
          FUN_00982420(&local_10,pfVar13,&local_48);
        }
        pfVar13 = local_c;
        if ((puVar8[5] != 0xffffffff) && (uVar10 == puVar8[5])) {
          local_50 = (int *)(((int)local_c - (int)local_10 >> 2) + -1);
        }
      }
      uVar10 = uVar10 + 1;
    } while (uVar10 < uVar11);
  }
  piVar1 = param_3;
  if (local_10 != pfVar13) {
    param_3[1] = *param_3;
    piVar12 = (int *)((int)pfVar13 - (int)local_10 >> 2);
    FUN_00629880(param_3,(uint)piVar12);
    *param_4 = -1;
    local_34 = *(float *)((int)pfVar13[-1] + 0x14);
    local_30 = *(float *)((int)pfVar13[-1] + 0x18);
    piVar9 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (piVar9 != (int *)0x0) {
      param_3 = (int *)0x0;
      if (piVar12 != (int *)0x0) {
        do {
          fVar2 = local_10[(int)param_3];
          local_40.x = (*(float *)((int)fVar2 + 0x14) + local_34) * _DAT_00f9b5b4;
          local_40.z = (local_30 + *(float *)((int)fVar2 + 0x18)) * _DAT_00f9b5b4;
          uVar5 = Lot_IsCommercialDivingLot((int)piVar9);
          this_00 = local_44;
          local_40.level = CONCAT31(extraout_var,uVar5);
          local_34 = *(float *)((int)fVar2 + 0x14);
          local_30 = *(float *)((int)fVar2 + 0x18);
          cVar6 = LotRouting_IsPortalLocationAdmitted(local_44,param_1,param_2,&local_40.x);
          if (cVar6 != '\0') {
            if (param_5 != '\0') {
              local_1c.x = local_40.x;
              local_1c.z = local_40.z;
              local_1c.level = local_40.level;
              fVar14 = LotLevelHeight_SampleLocalPosition((void *)piVar9[0xa4],&local_1c);
              local_48 = (float)fVar14;
              fVar14 = Lot_GetLocalSeaLevel(piVar9);
              if ((float10)local_48 < fVar14) goto LAB_0063e398;
            }
            LotRouteGraph_ApplyInverseLotPositionMatrix
                      (this_00,CONCAT44(param_2,param_1),&local_40,&local_28);
            pfVar13 = (float *)piVar1[1];
            if (pfVar13 < (float *)piVar1[2]) {
              piVar1[1] = (int)(pfVar13 + 3);
              if (pfVar13 != (float *)0x0) {
                *pfVar13 = local_28.x;
                pfVar13[1] = local_28.z;
                pfVar13[2] = (float)local_28.level;
              }
            }
            else {
              FUN_0062a7b0(piVar1,pfVar13,&local_28.x);
            }
            if ((local_50 != (int *)0xffffffff) && (param_3 == local_50)) {
              *param_4 = (piVar1[1] - *piVar1) / 0xc + -1;
            }
          }
LAB_0063e398:
          param_3 = (int *)((int)param_3 + 1);
        } while (param_3 < piVar12);
      }
      iVar3 = piVar1[1];
      iVar4 = *piVar1;
      if (local_10 != (float *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
      return (iVar3 - iVar4) / 0xc;
    }
  }
  if (local_10 != (float *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return 0;
}

