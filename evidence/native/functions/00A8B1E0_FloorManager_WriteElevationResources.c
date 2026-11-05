/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX FloorManager, context/instanceLow/instanceHigh/metadataGroup, RET10hex, AL sticky
   status byte. Used by both Lot_SaveCurrentState(ACAA10 callACAAD1) and
   Lot_ExportCurrentState(ACAF70 callACAFD4). First writes metadata type05E4FAF7 supplied group,
   version0D and byteflag this+114, closes. If context still succeeds, C6D880 writes B125533A
   group0093D6D4 from actual float grid this+24; then vector begin10/end14 difference >>2 supplies
   the complete DWORD count to typed write4DDFC0 thunk with context byte order. Finally closes.
   Header dimensions are actual retained grid fields, not target-lot inference. This is the matching
   ground/elevation producer; the distinct FloorManager writer A95BB0 begins with flags
   group0093D6A5 and is not this float payload. */

uchar __thiscall
FloorManager_WriteElevationResources
          (void *this,undefined *context,uint instanceLow,uint instanceHigh,uint metadataGroup)

{
  uint *puVar1;
  bool bVar2;
  byte readSucceeded;
  undefined4 uVar3;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  uint local_4;
  
  local_10 = instanceLow;
  local_c = instanceHigh;
  local_8 = 0x5e4faf7;
  local_4 = metadataGroup;
  bVar2 = ResourceStreamContext_OpenWrite(context,&local_10,1);
  if (bVar2) {
    readSucceeded = Stream_WriteUInt32(*(void **)(context + 8),0xd,*(uint *)(context + 0x10));
    StreamReader_AccumulateStatus(context,readSucceeded);
    bVar2 = Stream_WriteBoolean(*(void **)(context + 8),*(byte *)((int)this + 0x114));
    StreamReader_AccumulateStatus(context,bVar2);
    ResourceStreamContext_Close(context);
  }
  if (context[0x14] != '\0') {
    LotGrid_WriteHeaderResource
              (*(void **)((int)this + 0x24),context,0x93d6d4,instanceLow,instanceHigh);
    if (context[0x14] != '\0') {
      puVar1 = *(uint **)(*(int *)((int)this + 0x24) + 0x10);
      uVar3 = thunk_FUN_004ddfc0(*(int **)(context + 8),puVar1,
                                 *(int *)(*(int *)((int)this + 0x24) + 0x14) - (int)puVar1 >> 2,
                                 *(uint *)(context + 0x10));
      StreamReader_AccumulateStatus(context,(byte)uVar3);
    }
    ResourceStreamContext_Close(context);
  }
  return context[0x14];
}

