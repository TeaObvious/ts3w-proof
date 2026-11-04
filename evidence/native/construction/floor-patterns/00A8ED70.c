/* Returns a borrowed optional cell payload via an 8-bit grid ID and manager-owned map, or null. ECX
   floor manager and packed signed cell pointer, RET 4. No reference increment or ownership transfer
   occurs in this body. Analyst-assigned name. */

int __thiscall FindFloorCellPayload(void *this,char *param_1)

{
  char cVar1;
  char cVar2;
  void *this_00;
  int relativeLevel;
  byte *pbVar3;
  int local_8 [2];

  /* 00A8ED77: Optional manager+ D0 byte grid must exist. Guard relativeLevel<depth and signed X/Z within half-open grid extents; there is no explicit relativeLevel>=0 check here. */
  this_00 = *(void **)((int)this + 0xd0);
  if (this_00 != (void *)0x0) {
    relativeLevel = (int)param_1[2] - *(int *)((int)this + 0x10);
    if (relativeLevel < *(int *)((int)this_00 + 0xc)) {
      cVar1 = param_1[1];
      if ((int)cVar1 < *(int *)((int)this_00 + 8)) {
        cVar2 = *param_1;
        if ((((int)cVar2 < *(int *)((int)this_00 + 4)) && (-1 < cVar1)) && (-1 < cVar2)) {
          /* 00A8EDB3: Read the byte cell ID. Zero means no payload and returns null; the quarter mask is not used by this lookup. */
          pbVar3 = ByteTileGrid_CellPointer(this_00,(int)cVar2,(int)cVar1,relativeLevel);
          param_1 = (char *)CONCAT31(param_1._1_3_,*pbVar3);
          if (*pbVar3 != 0) {
            /* 00A8EDD4: Lookup the byte ID in map at manager+17C. Compare returned node with map sentinel; hit returns node+8, miss returns zero. Payload lifetime and map mutation are outside this lookup. */
            FUN_00a8e720((void *)((int)this + 0x17c),local_8,(byte *)&param_1);
            if (local_8[0] !=
                *(int *)(*(int *)((int)this + 0x180) + *(int *)((int)this + 0x184) * 4)) {
              return local_8[0] + 8;
            }
          }
        }
      }
    }
  }
  return 0;
}
