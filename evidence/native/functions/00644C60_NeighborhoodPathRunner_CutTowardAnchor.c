/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX runner, stack world/context, path and anchor descriptor; RET0xC. Acts only when anchor index
   exceeds the current node. Partial-step cases can insert or overwrite positions and copy the low16
   runner floor; other selected ranges are erased before reinitialization. The simple adjacent
   whole-node case initializes and returns; other cut paths initialize then advance once. No
   independent visibility query or generic failure policy is established here. */

void __thiscall
NeighborhoodPathRunner_CutTowardAnchor(void *this,void *param_1,int param_2,int *param_3)

{
  int *this_00;
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar4 = *param_3;
  iVar2 = *(int *)this;
  if (iVar2 < iVar4) {
    iVar3 = iVar2 + 1;
    if ((iVar4 == iVar3) && (param_3[1] == 0)) {
      NeighborhoodPathRunner_InitializeSpan(this,param_1,param_2,iVar3,'\0',(void *)0x0);
      return;
    }
    this_00 = (int *)(param_2 + 8);
    if ((iVar4 == iVar3) && ((*(int *)((int)this + 0x18) != 0 && (param_3[1] != 0)))) {
      puVar1 = (undefined4 *)((iVar2 + 1) * 0x40 + *this_00);
      FUN_00644610(this_00,puVar1,puVar1);
      *(undefined4 *)((*(int *)this + 1) * 0x40 + *this_00) = *(undefined4 *)((int)this + 4);
      *(undefined4 *)(*(int *)this * 0x40 + 0x48 + *this_00) = *(undefined4 *)((int)this + 8);
      *(undefined2 *)(*(int *)this * 0x40 + 0x4c + *this_00) = *(undefined2 *)((int)this + 0xc);
      *(int *)((*(int *)this + 2) * 0x40 + *this_00) = param_3[2];
      *(int *)(*(int *)this * 0x40 + 0x88 + *this_00) = param_3[3];
      iVar4 = *(int *)this + 1;
    }
    else {
      if (*(int *)((int)this + 0x18) != 0) {
        *(undefined4 *)((iVar2 + 1) * 0x40 + *this_00) = *(undefined4 *)((int)this + 4);
        *(undefined4 *)(*(int *)this * 0x40 + 0x48 + *this_00) = *(undefined4 *)((int)this + 8);
        *(undefined2 *)(*(int *)this * 0x40 + 0x4c + *this_00) = *(undefined2 *)((int)this + 0xc);
        iVar3 = iVar2 + 2;
      }
      iVar4 = *param_3;
      if (param_3[1] != 0) {
        *(int *)(iVar4 * 0x40 + *this_00) = param_3[2];
        *(int *)(*param_3 * 0x40 + 8 + *this_00) = param_3[3];
      }
      if (iVar3 < iVar4) {
        FUN_007aaa30(this_00,(undefined4 *)(iVar3 * 0x40 + *this_00),
                     (undefined4 *)(iVar4 * 0x40 + *this_00));
      }
      if (*(int *)((int)this + 0x18) == 0) {
        iVar4 = *(int *)this;
      }
      else {
        iVar4 = *(int *)this + 1;
      }
    }
    NeighborhoodPathRunner_InitializeSpan(this,param_1,param_2,iVar4,'\0',(void *)0x0);
    NeighborhoodPathRunner_AdvanceSubstep(this,param_1,param_2);
  }
  return;
}

