/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. partial_sort over16-byte records{lotPtr,float
   distanceSquared,int32 priority,float score}. Builds heap[first,middle), replaces worst root with
   better tail candidates, sorts heap prefix. For finite scores priority desc then score asc;
   equal-score tie order is not stable. Original unordered floating-point branches remain
   authoritative; no NaN total-order guarantee. Tail beyond middle is not globally sorted. */

void __cdecl LotDetailScores_PartialSort(void *first,void *middle,void *last)

{
  undefined4 *puVar1;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  LotDetailScores_MakeHeap(first,middle);
  puVar1 = middle;
  do {
    if (last <= puVar1) {
      LotDetailScores_SortHeap(first,middle);
      return;
    }
    if (puVar1[2] == *(int *)((int)first + 8)) {
      if ((float)puVar1[3] <= *(float *)((int)first + 0xc) &&
          *(float *)((int)first + 0xc) != (float)puVar1[3]) goto LAB_00c63bb4;
    }
    else if (*(int *)((int)first + 8) < (int)puVar1[2]) {
LAB_00c63bb4:
      local_c = puVar1[1];
      local_10 = *puVar1;
      local_8 = puVar1[2];
      local_4 = puVar1[3];
      *puVar1 = *(undefined4 *)first;
      puVar1[1] = *(undefined4 *)((int)first + 4);
      puVar1[2] = *(undefined4 *)((int)first + 8);
      puVar1[3] = *(undefined4 *)((int)first + 0xc);
      LotDetailScores_AdjustHeap(first,0,(int)middle - (int)first >> 4,0,&local_10);
    }
    puVar1 = puVar1 + 4;
  } while( true );
}

