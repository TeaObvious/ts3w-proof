/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. PhysicalECXFloorManager+TWOstackDWORDs ownerGUIDlo/high RET8
   ALBoolean; formerfastcall1 discardedstackGUID. LookupGUID->ID, ID->record; missingrecordfalse.
   For coveredadmittedtiles clearownerID and emitdefaultmask/key/centre0/scale1 usingA99C50
   removeflag1. ReleaseID/records/maps, AL1.
   Doesnotrestoreanunderlyingearliercutoutasgeneralstackofmaskowners. Actualsavedthiscall2word
   signature restoresGUID inC. */

bool __thiscall FloorManager_RemoveObjectCutout(void *this,dword ownerGuidLow,dword ownerGuidHigh)

{
  int iVar1;
  int iVar2;
  byte *pbVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint *puVar7;
  byte *pbVar8;
  byte local_29;
  uint *local_28;
  void *local_24;
  int local_20;
  int *local_1c;
  float local_18;
  float local_14;
  int local_10 [4];
  
  local_24 = (void *)((int)this + 0x19c);
  local_29 = 0;
  U64PairMap_Find(local_24,local_10 + 2,(ulonglong *)&ownerGuidLow);
  if (local_10[2] != *(int *)(*(int *)((int)this + 0x1a0) + *(int *)((int)this + 0x1a4) * 4)) {
    local_29 = *(byte *)(local_10[2] + 8);
  }
  FUN_00a8e720((void *)((int)this + 0x17c),&local_20,&local_29);
  if (local_20 == *(int *)(*(int *)((int)this + 0x180) + *(int *)((int)this + 0x184) * 4)) {
    return false;
  }
  iVar1 = *(int *)(local_20 + 0x34);
  local_28 = *(uint **)(local_20 + 0x28);
  puVar7 = *(uint **)(local_20 + 0x24);
  iVar2 = *(int *)((int)this + 0x10);
  iVar6 = local_20;
  if (puVar7 != local_28) {
    do {
      uVar4 = (uint)(char)*puVar7;
      iVar6 = *(int *)((int)this + 4);
      uVar5 = (uint)*(char *)((int)puVar7 + 1);
      if ((((-1 < (int)uVar4) && ((int)uVar4 < *(int *)(iVar6 + 0x174))) && (-1 < (int)uVar5)) &&
         ((((int)uVar5 < *(int *)(iVar6 + 0x178) &&
           (*(int *)(iVar6 + 0x17c) <= (int)*(char *)((int)puVar7 + 2))) &&
          ((int)*(char *)((int)puVar7 + 2) <= *(int *)(iVar6 + 0x180))))) {
        local_29 = 0;
        FloorOwnerGrid_WriteTileOwnerId
                  (*(void **)((int)this + 0xd0),(char *)&local_29,uVar4,uVar5,iVar1 - iVar2);
        local_18 = 1.0;
        local_14 = 1.0;
        local_10[0] = 0;
        local_10[1] = 0;
        FloorManager_EmitCutoutSurfaceMessage
                  (this,&DAT_011ec8d0,local_10,0,(int *)&local_18,puVar7,0,'\x01');
      }
      puVar7 = puVar7 + 1;
      iVar6 = local_20;
    } while (puVar7 != local_28);
  }
  pbVar3 = *(byte **)((int)this + 500);
  pbVar8 = (byte *)(local_10[2] + 8);
  if (pbVar3 + 1 == *(byte **)((int)this + 0x1fc)) {
    FUN_00a8d9d0((void *)((int)this + 0x1dc),pbVar8);
  }
  else {
    *(byte **)((int)this + 500) = pbVar3 + 1;
    if (pbVar3 != (byte *)0x0) {
      *pbVar3 = *pbVar8;
    }
  }
  FUN_00a90200((void *)((int)this + 0x17c),local_10 + 2,iVar6,local_1c);
  FUN_00a8d780((void *)((int)this + 0x1bc),pbVar8);
  FUN_00c7cd80(local_24,&ownerGuidLow);
  return true;
}

