/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Unsigned lexicographic high32 then low32 GUID comparison;
   tree sentinel this+4 means no exact key. Writes iterator output pointer. This is GUID identity,
   not signed numeric comparison. */

void __thiscall LotRoomSeedTree_FindGuidNode(void *this,void *iteratorOut,ulonglong *guid)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  
  puVar1 = (undefined4 *)((int)this + 4);
  puVar4 = puVar1;
  if (*(undefined4 **)((int)this + 0xc) != (undefined4 *)0x0) {
    puVar2 = *(undefined4 **)((int)this + 0xc);
    do {
      if (((uint)puVar2[5] < *(uint *)((int)guid + 4)) ||
         ((puVar2[5] == *(uint *)((int)guid + 4) && ((uint)puVar2[4] < (uint)*guid)))) {
        puVar3 = (undefined4 *)*puVar2;
      }
      else {
        puVar3 = (undefined4 *)puVar2[1];
        puVar4 = puVar2;
      }
      puVar2 = puVar3;
    } while (puVar3 != (undefined4 *)0x0);
  }
  if (((puVar4 != puVar1) && ((uint)puVar4[5] <= *(uint *)((int)guid + 4))) &&
     ((*(uint *)((int)guid + 4) != puVar4[5] || ((uint)puVar4[4] <= (uint)*guid)))) {
    *(undefined4 **)iteratorOut = puVar4;
    return;
  }
  *(undefined4 **)iteratorOut = puVar1;
  return;
}

