/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Builds comparator heap on16-byte score records; signed
   priority then float score comparison, supporting LotDetailScores_PartialSort. Uses signed
   record-index arithmetic. */

void __cdecl LotDetailScores_MakeHeap(void *first,void *middle)

{
  int count;
  void *pvVar1;
  int top;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  count = (int)middle - (int)first >> 4;
  if (1 < count) {
    top = (count + -2 >> 1) + 1;
    pvVar1 = (void *)(top * 0x10 + (int)first);
    do {
      local_c = *(undefined4 *)((int)pvVar1 + -0xc);
      local_10 = *(undefined4 *)((int)pvVar1 + -0x10);
      local_8 = *(undefined4 *)((int)pvVar1 + -8);
      top = top + -1;
      local_4 = *(undefined4 *)((int)pvVar1 + -4);
      LotDetailScores_AdjustHeap(first,top,count,top,&local_10);
      pvVar1 = (void *)((int)pvVar1 + -0x10);
    } while (top != 0);
  }
  return;
}

