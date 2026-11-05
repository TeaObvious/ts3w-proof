/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Three stack words, path/runner/option byte; RET0xC. Optional next-node handling rejects
   constraints1/10/11, while equal adjacent floor fields can return AL1 before later rules.
   Otherwise usage20 with qualifying neighboring usage19 is refused; remaining acceptance requires
   constraint0/8/9. Some leaves only write or clear AL, so an inferred unsigned return is not a
   stable full-width Boolean contract. */

uint NeighborhoodPathRunner_CanSweepNode(int param_1,uint *param_2,char param_3)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar1 = *param_2;
  uVar3 = uVar1 * 0x40;
  iVar5 = *(int *)(param_1 + 8) + uVar3;
  iVar2 = *(int *)(iVar5 + 0x1c);
  if ((param_3 != '\0') && (uVar1 < (*(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6) - 1U)) {
    if ((iVar2 == 1) || ((iVar2 == 10 || (iVar2 == 0xb)))) goto LAB_006423a7;
    iVar4 = uVar3 + *(int *)(param_1 + 8);
    if (*(short *)(iVar4 + 0xc) == *(short *)(iVar4 + 0x4c)) {
      return CONCAT31((int3)((uint)iVar4 >> 8),1);
    }
  }
  if ((*(int *)(iVar5 + 0x38) != 0x14) ||
     (((uVar3 = 0, uVar1 < 2 || (*(int *)(iVar5 + -8) != 0x13)) &&
      (((*(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6) - 1U <= uVar1 ||
       (*(int *)(iVar5 + 0x78) != 0x13)))))) {
    if (((iVar2 != 0) && (iVar2 != 8)) && (iVar2 != 9)) {
      return 0;
    }
    return 1;
  }
LAB_006423a7:
  return uVar3 & 0xffffff00;
}

