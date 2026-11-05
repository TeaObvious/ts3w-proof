/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX container; one signed16 key pointer stack argument; RET4. B54A60 searches 24-byte records
   using signed16 comparisons. Existing equal key returns that record payload+8; absent-key paths
   pass a prepared record and selected position to insertion children. B69350 overwrites the
   returned 16-byte payload for each successful wire row, so a repeated room key reuses and replaces
   its prior payload. Container insertion/allocation children and lifetime remain separate
   boundaries. */

short * __thiscall PoolRoomObjectMap_FindOrInsertSignedRoom(void *this,short *param_1)

{
  short *psVar1;
  short *psVar2;
  int local_28;
  undefined4 local_24;
  undefined2 local_20;
  undefined2 local_1c;
  short local_18 [4];
  int local_10;
  undefined4 local_c;
  undefined2 local_8;
  undefined1 local_6;
  undefined1 local_5;
  undefined2 local_4;
  
  psVar1 = *(short **)((int)this + 4);
  psVar2 = (short *)PoolRoomObjectMap_LowerBoundSignedRoom(*(int *)this,(int)psVar1,param_1);
  if ((psVar2 == psVar1) || (*param_1 < *psVar2)) {
    local_18[0] = *param_1;
    local_10 = local_28;
    local_c = local_24;
    local_20 = 0xffff;
    local_6 = 0;
    local_8 = 0xffff;
    local_5 = 0xff;
    local_4 = local_1c;
    if (((psVar2 != psVar1) && (*psVar2 <= local_18[0])) ||
       ((psVar2 != *(short **)this && (local_18[0] <= psVar2[-0xc])))) {
      FUN_00b690c0(this,&local_28,local_18);
      return (short *)(local_28 + 8);
    }
    psVar2 = (short *)FUN_00b69050(this,(undefined4 *)psVar2,(undefined4 *)local_18);
  }
  return psVar2 + 4;
}

