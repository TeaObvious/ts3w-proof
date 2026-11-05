/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Repeatedly extracts worst heap root into the end,
   yielding finite-score priority-desc/score-asc order within selected prefix. */

void __cdecl LotDetailScores_SortHeap(void *first,void *middle)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar1 = (int)middle - (int)first >> 4;
  if (1 < iVar1) {
    puVar2 = (undefined4 *)((int)middle + -0x10);
    do {
      local_10 = *puVar2;
      local_c = puVar2[1];
      local_8 = puVar2[2];
      local_4 = puVar2[3];
      *puVar2 = *(undefined4 *)first;
      puVar2[1] = *(undefined4 *)((int)first + 4);
      puVar2[2] = *(undefined4 *)((int)first + 8);
      puVar2[3] = *(undefined4 *)((int)first + 0xc);
      LotDetailScores_AdjustHeap(first,0,iVar1 + -1,0,&local_10);
      puVar2 = puVar2 + -4;
      iVar1 = (0x10 - (int)first) + (int)puVar2 >> 4;
    } while (1 < iVar1);
  }
  return;
}

