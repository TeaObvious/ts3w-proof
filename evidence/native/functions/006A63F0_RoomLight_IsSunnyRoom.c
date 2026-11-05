/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX solver; one physical stack word with signed
   Int16 room, RET4. Room0 immediatelyAL1; otherwise hash lookup, return stored byte+70, missingAL0.
   Upper EAX incidental; do not assume all returned nonzero bytes are normalized full-EAX1. */

undefined1 __thiscall RoomLight_IsSunnyRoom(void *this,short param_1)

{
  int local_8 [2];
  
  if (param_1 == 0) {
    return 1;
  }
  _param_1 = (uint)param_1;
  FUN_006a6050((void *)((int)this + 0x230),local_8,(uint *)&param_1);
  if (local_8[0] != *(int *)(*(int *)((int)this + 0x234) + *(int *)((int)this + 0x238) * 4)) {
    return *(undefined1 *)(local_8[0] + 0x70);
  }
  return 0;
}

