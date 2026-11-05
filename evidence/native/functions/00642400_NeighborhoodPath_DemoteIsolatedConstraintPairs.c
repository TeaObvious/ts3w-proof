/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Two stack words, path and option bits; RET8. Null path returns AL0. For more than3 0x40-byte
   nodes and maskC0000280 clear, adjacent equal constraint1/10/11 pairs become0 only when the
   outside neighbors have none of those constraints. Other admitted paths return AL1. Upper return
   bits are not normalized by all leaves. */

uint NeighborhoodPath_DemoteIsolatedConstraintPairs(int param_1,uint param_2)

{
  int iVar1;
  uint in_EAX;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  if (param_1 != 0) {
    iVar4 = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6;
    if ((3 < iVar4) && ((param_2 & 0xc0000280) == 0)) {
      iVar5 = 0;
      if (0 < iVar4 + -1) {
        iVar3 = 0;
        do {
          iVar1 = iVar3 + *(int *)(param_1 + 8);
          in_EAX = *(uint *)(iVar1 + 0x1c);
          if ((in_EAX == *(uint *)(iVar1 + 0x5c)) &&
             (((in_EAX == 10 || (in_EAX == 1)) || (in_EAX == 0xb)))) {
            if (iVar5 < 1) {
              iVar2 = 0;
            }
            else {
              iVar2 = *(int *)(iVar3 + -0x24 + *(int *)(param_1 + 8));
            }
            if (iVar5 < iVar4 + -2) {
              in_EAX = *(uint *)(iVar3 + 0x9c + *(int *)(param_1 + 8));
            }
            else {
              in_EAX = 0;
            }
            if ((((iVar2 != 10) && (in_EAX != 10)) &&
                ((iVar2 != 1 && ((in_EAX != 1 && (iVar2 != 0xb)))))) && (in_EAX != 0xb)) {
              in_EAX = 0;
              *(undefined4 *)(iVar1 + 0x1c) = 0;
              *(undefined4 *)(iVar1 + 0x5c) = 0;
            }
          }
          iVar5 = iVar5 + 1;
          iVar3 = iVar3 + 0x40;
        } while (iVar5 < iVar4 + -1);
      }
    }
    return CONCAT31((int3)(in_EAX >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

