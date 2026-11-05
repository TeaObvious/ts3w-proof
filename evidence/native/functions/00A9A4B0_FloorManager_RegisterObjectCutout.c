/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXFloorManager+8stackDWORDs RET20hex, ALBoolean. Existing
   fullGUID map entry rejects; cutlevel signed<=lottop required. CollectrotatedrectangleA90420,
   DIVSS scales.5/halfextent, allocateID/record, then for eachcoveredonlot/livelevel tile
   writeownerID throughA94D30 andemitA99C50. Registration canexistwithoutadmittedcell
   belowlivebottom; no universal minlevel/finite/positive-extent validation inthisbody. Current Game
   remove+append revision and CPUmesh clone are separate adapters. */

bool __thiscall
FloorManager_RegisterObjectCutout
          (void *this,uint param_1,uint param_2,int param_3,int *param_4,int *param_5,float param_6,
          float *param_7,undefined4 param_8)

{
  int iVar1;
  int iVar2;
  int iVar3;
  float *pfVar4;
  byte bVar5;
  int *piVar6;
  uint uVar7;
  uint uVar8;
  uint *puVar9;
  byte local_f9;
  uint *local_f8;
  float local_f4;
  float local_f0;
  uint *local_ec;
  uint *local_e8;
  undefined4 local_e4;
  char *local_e0;
  undefined4 local_dc [3];
  byte local_d0;
  undefined4 local_c8 [7];
  void *local_ac;
  byte local_88 [8];
  undefined1 local_80 [28];
  void *local_64;
  undefined4 local_40 [7];
  void *local_24;
  
  iVar1 = *(int *)(*(int *)((int)this + 0x1a0) + *(int *)((int)this + 0x1a4) * 4);
  piVar6 = U64PairMap_Find((void *)((int)this + 0x19c),&local_f4,(ulonglong *)&param_1);
  pfVar4 = param_7;
  iVar3 = param_3;
  if ((*piVar6 == iVar1) && (param_3 <= *(int *)(*(int *)((int)this + 4) + 0x180))) {
    local_ec = (uint *)0x0;
    local_e8 = (uint *)0x0;
    local_e4 = 0;
    local_e0 = "Lot/FloorManager/SetFloorCutout/tilePartArray";
    FloorCutout_CollectRotatedRectangleQuarters
              (*(int *)((int)this + 4),(char)param_3,param_5,param_6,param_7,&local_ec);
    local_f4 = 0.5 / *pfVar4;
    local_f0 = 0.5 / pfVar4[1];
    bVar5 = FUN_00a8fb10(this,param_1,param_2);
    local_f9 = bVar5;
    FUN_00a92bf0(local_40,param_4,param_5,param_6,&local_f4,(int *)&local_ec,iVar3,(char)param_8);
    local_d0 = bVar5;
    FUN_00a8f400(local_c8,local_40);
    if (local_24 != (void *)0x0) {
      Memory_FreeIfNonNull(local_24);
    }
    local_88[0] = local_d0;
    FUN_00a8f400(local_80,local_c8);
    local_f8 = (uint *)((uint)local_f8 & 0xffffff00);
    FUN_00a90d70((void *)((int)this + 0x17c),local_dc,local_88);
    if (local_64 != (void *)0x0) {
      Memory_FreeIfNonNull(local_64);
    }
    if (local_ac != (void *)0x0) {
      Memory_FreeIfNonNull(local_ac);
    }
    iVar1 = *(int *)((int)this + 0x10);
    local_f8 = local_e8;
    puVar9 = local_ec;
    if (local_ec != local_e8) {
      do {
        uVar7 = (uint)(char)*puVar9;
        iVar2 = *(int *)((int)this + 4);
        uVar8 = (uint)*(char *)((int)puVar9 + 1);
        if ((((-1 < (int)uVar7) && ((int)uVar7 < *(int *)(iVar2 + 0x174))) && (-1 < (int)uVar8)) &&
           ((((int)uVar8 < *(int *)(iVar2 + 0x178) &&
             (*(int *)(iVar2 + 0x17c) <= (int)*(char *)((int)puVar9 + 2))) &&
            ((int)*(char *)((int)puVar9 + 2) <= *(int *)(iVar2 + 0x180))))) {
          FloorOwnerGrid_WriteTileOwnerId
                    (*(void **)((int)this + 0xd0),(char *)&local_f9,uVar7,uVar8,iVar3 - iVar1);
          FloorManager_EmitCutoutSurfaceMessage
                    (this,param_4,param_5,(uint)param_6,(int *)&local_f4,puVar9,(char)param_8,'\0');
        }
        puVar9 = puVar9 + 1;
      } while (puVar9 != local_f8);
    }
    if (local_ec != (uint *)0x0) {
      Memory_FreeIfNonNull(local_ec);
    }
    return true;
  }
  return false;
}

