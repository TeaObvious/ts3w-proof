/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original PC1.67; descriptive analyst name. ECX goal owner plus lot pointer, destination-vector
   pointer and low-byte below-sea flag, RET0C; EAX number of collected locations. Calls63E0A0 with
   lot+48/+4C GUID and local empty12-byte point vector/preferred=-1. For each collected XZ, queries
   world heightC6A090 and constructs destination data at64-byte stride. Preferred surviving index
   loads100.0 from010F6BF4 and uses654980; other entries load50.0 from00FEE3A8 and append or grow
   via654070. Scalar bytes0000C842/00004842 verified in original PE. Releases local locations
   via4E44E0. This owner does not establish full downstream score-function ordering or
   first-reachable policy; C SIMD temporary aliases are not literal uninitialized source fields. */

uint __thiscall
LotRouteGoals_AppendWeightedLotEdgeDestinations(void *this,int param_1,void *param_2,char param_3)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  uint uVar4;
  float10 fVar5;
  uint local_dc;
  uint local_d8;
  void *local_d4;
  int local_d0;
  undefined4 local_cc;
  char *local_c8;
  void *local_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_d4 = (void *)0x0;
  local_d0 = 0;
  local_cc = 0;
  local_c8 = "Routing/locations";
  uVar4 = 0;
  local_d8 = 0xffffffff;
  local_c4 = this;
  iVar3 = LotRouting_CollectAdmittedLotEdgeLocations
                    (*(void **)((int)this + 8),*(uint *)(param_1 + 0x48),*(uint *)(param_1 + 0x4c),
                     (int *)&local_d4,(int *)&local_d8,param_3);
  if (iVar3 != 0) {
    uVar4 = (local_d0 - (int)local_d4) / 0xc;
    local_dc = 0;
    if (uVar4 != 0) {
      local_50 = 0.0;
      fStack_4c = 0.0;
      fStack_48 = 0.0;
      fStack_44 = 0.0;
      iVar3 = 0;
      do {
        fStack_bc = fStack_2c;
        fStack_b8 = fStack_28;
        fStack_b4 = fStack_24;
        local_c0 = *(float *)(iVar3 + (int)local_d4);
        fStack_6c = fStack_2c;
        fStack_64 = fStack_24;
        fStack_68 = *(float *)(iVar3 + 4 + (int)local_d4);
        fStack_1c = fStack_2c;
        fStack_14 = fStack_24;
        fStack_3c = fStack_2c;
        fStack_34 = fStack_24;
        fStack_5c = fStack_2c;
        fStack_54 = fStack_24;
        local_70 = local_c0;
        local_60 = local_c0;
        fStack_58 = fStack_68;
        local_40 = local_c0;
        fStack_38 = fStack_68;
        local_20 = local_c0;
        fStack_18 = fStack_68;
        fVar5 = WorldSurface_QueryHeight
                          (*(void **)((int)local_c4 + 0xc),local_c0,fStack_68,0,'\x01','\0',
                           (undefined1 *)0x0,(undefined1 *)0x0,'\0','\x01');
        fVar2 = _DAT_00fee3a8;
        fStack_ac = (float)fVar5;
        local_30 = local_60;
        fStack_28 = fStack_58;
        fStack_24 = fStack_54;
        fStack_5c = fStack_ac;
        fStack_2c = fStack_ac;
        if ((local_d8 == 0xffffffff) || (local_dc != local_d8)) {
          pfVar1 = *(float **)((int)param_2 + 4);
          local_b0 = local_60;
          fStack_a8 = fStack_58;
          fStack_a4 = fStack_54;
          local_a0 = local_50;
          fStack_9c = fStack_4c;
          fStack_98 = fStack_48;
          fStack_94 = fStack_44;
          local_90 = _DAT_00fee3a8;
          local_8c = 0;
          local_88 = 0;
          local_84 = 0;
          local_80 = 0;
          if (pfVar1 < *(float **)((int)param_2 + 8)) {
            *(float **)((int)param_2 + 4) = pfVar1 + 0x10;
            if (pfVar1 != (float *)0x0) {
              *pfVar1 = local_60;
              pfVar1[1] = fStack_ac;
              pfVar1[2] = fStack_58;
              pfVar1[3] = fStack_54;
              pfVar1[4] = local_50;
              pfVar1[5] = fStack_4c;
              pfVar1[6] = fStack_48;
              pfVar1[7] = fStack_44;
              pfVar1[8] = fVar2;
              pfVar1[9] = 0.0;
              pfVar1[10] = 0.0;
              pfVar1[0xb] = 0.0;
              pfVar1[0xc] = 0.0;
            }
          }
          else {
            FUN_00654070(param_2,pfVar1,&local_b0);
          }
        }
        else {
          local_b0 = local_60;
          fStack_a8 = fStack_58;
          fStack_a4 = fStack_54;
          local_a0 = local_50;
          fStack_9c = fStack_4c;
          fStack_98 = fStack_48;
          fStack_94 = fStack_44;
          local_90 = DAT_010f6bf4;
          local_8c = 0;
          local_88 = 0;
          local_84 = 0;
          local_80 = 0;
          FUN_00654980(param_2,&local_b0);
        }
        local_dc = local_dc + 1;
        iVar3 = iVar3 + 0xc;
      } while (local_dc < uVar4);
    }
  }
  if (local_d4 != (void *)0x0) {
    Memory_FreeIfNonNull(local_d4);
  }
  return uVar4;
}

