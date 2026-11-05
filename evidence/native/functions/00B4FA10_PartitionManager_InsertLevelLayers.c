/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall manager plus signedcount/mode DWORD,RET8void; lowmodebyte selects top vsbottom.
   Six partitiongraph children viaC3F860, FOUR room-manager children viaC076B0, then A4bandlayer
   resize/zero initialization and signed min/max update at1C/20. All retained children are sent the
   resize; no host immutable revision or silent mismatch skip is inferred. Subsequent virtual/local
   bodies are actual tool output, not proof of complete side-effect equivalence. */

void __thiscall PartitionManager_InsertLevelLayers(void *this,int count,uint modeBits)

{
  int iVar1;
  int iVar2;
  void *_Dst;
  char cVar3;
  undefined4 *puVar4;
  int iVar5;
  int local_4;
  
  iVar1 = count;
  MessageDispatch_GetCurrent();
  puVar4 = (undefined4 *)((int)this + 0x54);
  local_4 = 6;
  do {
    FUN_00c3f860((void *)*puVar4,count,modeBits,0);
    puVar4 = puVar4 + 1;
    local_4 = local_4 + -1;
  } while (local_4 != 0);
  puVar4 = (undefined4 *)((int)this + 0x44);
  count = 4;
  do {
    RoomManager_InsertLevelLayers((void *)*puVar4,iVar1,modeBits);
    puVar4 = puVar4 + 1;
    count = count + -1;
  } while (count != 0);
  cVar3 = (char)modeBits;
  count = *(int *)((int)this + 0x1c);
  if (cVar3 == '\0') {
    iVar5 = *(int *)((int)this + 0x20);
    count = count - iVar1;
  }
  else {
    iVar5 = *(int *)((int)this + 0x20) + iVar1;
  }
  FUN_00b4f370(*(void **)((int)this + 0xa4),iVar1,cVar3,'\0');
  if (0 < iVar1) {
    if (cVar3 == '\0') {
      memset(*(void **)(*(int *)((int)this + 0xa4) + 0x14),0,
             *(int *)(*(int *)((int)this + 0xa4) + 0x10) * iVar1);
      *(int *)((int)this + 0x20) = iVar5;
      *(int *)((int)this + 0x1c) = count;
      return;
    }
    iVar1 = *(int *)(*(int *)((int)this + 0xa4) + 0x10);
    iVar2 = *(int *)(*(int *)((int)this + 0xa4) + 0x14);
    _Dst = (void *)((*(int *)((int)this + 0x20) + 1) * iVar1 + iVar2);
    memset(_Dst,0,((iVar5 + 1) * iVar1 - (int)_Dst) + iVar2);
  }
  *(int *)((int)this + 0x20) = iVar5;
  *(int *)((int)this + 0x1c) = count;
  return;
}

