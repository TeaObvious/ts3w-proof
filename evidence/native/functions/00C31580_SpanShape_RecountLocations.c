/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): ECX shape, no physical stack
   arguments, plain RET; void. Clear count +30; traverse every retained level and row, then linked
   spans. MOVSX first/last X bytes at span +4/+5 and add signed(last-first)+1 into count. Native
   count mutation and unchecked arithmetic are distinct from current HashSet/rectangle-area/overlap
   validation; no perimeter, optimal rectangle count or malformed-span repair is proven here. C32240
   calls after trimming dirty boundary levels. */

void __thiscall SpanShape_RecountLocations(void *this)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  
  *(undefined4 *)((int)this + 0x30) = 0;
  iVar1 = *(int *)((int)this + 0x14);
  iVar6 = *(int *)((int)this + 0x18);
  iVar7 = *(int *)((int)this + 0xc);
  while (iVar7 != *(int *)((int)this + 0x1c)) {
    puVar2 = *(undefined4 **)(iVar7 + 0x10);
    puVar3 = *(undefined4 **)(iVar7 + 0x18);
    puVar5 = *(undefined4 **)(iVar7 + 8);
    iVar8 = *(int *)(iVar7 + 0x14);
    while (puVar5 != puVar3) {
      for (puVar4 = (undefined4 *)*puVar5; puVar4 != (undefined4 *)0x0;
          puVar4 = (undefined4 *)*puVar4) {
        *(int *)((int)this + 0x30) =
             *(int *)((int)this + 0x30) +
             ((int)*(char *)((int)puVar4 + 5) - (int)*(char *)(puVar4 + 1)) + 1;
      }
      puVar5 = puVar5 + 2;
      if (puVar5 == puVar2) {
        puVar5 = *(undefined4 **)(iVar8 + 4);
        iVar8 = iVar8 + 4;
        puVar2 = puVar5 + 0x40;
      }
    }
    iVar7 = iVar7 + 0x30;
    if (iVar7 == iVar1) {
      iVar7 = *(int *)(iVar6 + 4);
      iVar6 = iVar6 + 4;
      iVar1 = iVar7 + 0xc0;
    }
  }
  return;
}

