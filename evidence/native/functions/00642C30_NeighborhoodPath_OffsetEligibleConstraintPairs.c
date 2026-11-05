/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX filter context and one stack path; RET4. Null or at most3 nodes produces no work. Saves
   context+70/+71, temporarily writes1/0, and restores both after the walk. Eligible adjacent pairs
   require surrounding zero floor fields and constraint10 on either pair member; successful006429D0
   displacement is added to both node+0/+8 positions. The helper displacement policy is not defined
   by this caller alone. */

void __thiscall NeighborhoodPath_OffsetEligibleConstraintPairs(void *this,int param_1)

{
  float *pfVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  float local_8;
  float local_4;
  
  if ((param_1 != 0) && (iVar4 = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6, 3 < iVar4)) {
    uVar2 = *(undefined1 *)((int)this + 0x70);
    uVar3 = *(undefined1 *)((int)this + 0x71);
    *(undefined1 *)((int)this + 0x70) = 1;
    *(undefined1 *)((int)this + 0x71) = 0;
    if (1 < iVar4 + -2) {
      iVar6 = 0x40;
      iVar4 = iVar4 + -3;
      do {
        pfVar1 = (float *)(*(int *)(param_1 + 8) + iVar6);
        if (((((*(short *)(*(int *)(param_1 + 8) + 0xc + iVar6) == 0) &&
              (*(short *)(pfVar1 + 0x13) == 0)) && (*(short *)(pfVar1 + -0xd) == 0)) &&
            ((*(short *)(pfVar1 + 0x23) == 0 &&
             ((pfVar1[7] == 1.4013e-44 || (pfVar1[0x17] == 1.4013e-44)))))) &&
           (uVar5 = FUN_006429d0(this,*pfVar1,(int *)pfVar1[2],pfVar1[0x10],pfVar1[0x12],
                                 DAT_00fe92f8,1.0,&local_8,&local_4), (char)uVar5 != '\0')) {
          *pfVar1 = *pfVar1 + local_8;
          pfVar1[2] = local_4 + pfVar1[2];
          pfVar1[0x10] = local_8 + pfVar1[0x10];
          pfVar1[0x12] = pfVar1[0x12] + local_4;
        }
        iVar6 = iVar6 + 0x40;
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
    }
    *(undefined1 *)((int)this + 0x70) = uVar2;
    *(undefined1 *)((int)this + 0x71) = uVar3;
  }
  return;
}

