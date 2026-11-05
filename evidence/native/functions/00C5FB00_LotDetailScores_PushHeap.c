/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Bubbles16-byte score record toward heap root using
   signed priority and float score; supports finite-score comparator ordering. Equal scores are not
   a stable ordering contract. */

void __cdecl LotDetailScores_PushHeap(void *first,int top,int hole,void *value)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  
  while (top < hole) {
    iVar2 = hole + -1 >> 1;
    puVar3 = (undefined4 *)(iVar2 * 0x10 + (int)first);
    if (puVar3[2] == *(int *)((int)value + 8)) {
      if (*(float *)((int)value + 0xc) < (float)puVar3[3] ||
          *(float *)((int)value + 0xc) == (float)puVar3[3]) break;
    }
    else if ((int)puVar3[2] <= *(int *)((int)value + 8)) break;
    puVar1 = (undefined4 *)(hole * 0x10 + (int)first);
    *puVar1 = *puVar3;
    puVar1[1] = puVar3[1];
    puVar1[2] = puVar3[2];
    puVar1[3] = puVar3[3];
    hole = iVar2;
  }
  puVar3 = (undefined4 *)(hole * 0x10 + (int)first);
  *puVar3 = *(undefined4 *)value;
  puVar3[1] = *(undefined4 *)((int)value + 4);
  puVar3[2] = *(undefined4 *)((int)value + 8);
  puVar3[3] = *(undefined4 *)((int)value + 0xc);
  return;
}

