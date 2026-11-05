/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX listener; RET8 consumes two physical stack
   words although decompiler omits one. Scan24-byte entries, matching controller identity+8 updates
   required-event byte+F from notification+14; any uncleared entry prevents all-complete.
   Selected-or-no-selected, active/Edith, required-complete gates threshold decision. Original
   FCOMIP/JBE means strictly remaining<threshold, equality/NaN do not admit. Clip virtual+2C and
   machine bit4 select zero or manager frame threshold*00FC2B9C. State7 plus all-complete emits
   Edith completion or readies active status. Return EAX is incidental, not a meaningful int
   contract. */

int __thiscall SacsListener_OnControllerEnding(void *param_1,int *param_2)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  float10 extraout_ST0;
  float fVar6;
  
  iVar5 = *(int *)((int)param_1 + 8);
  iVar1 = *(int *)(*param_2 + 0x20);
  bVar2 = false;
  for (iVar4 = *(int *)((int)param_1 + 4); iVar4 != iVar5; iVar4 = iVar4 + 0x18) {
    if (iVar1 == *(int *)(iVar4 + 8)) {
      *(char *)(iVar4 + 0xf) = (char)param_2[5];
    }
    if (*(char *)(iVar4 + 0xf) == '\0') {
      bVar2 = true;
    }
  }
  iVar5 = *(int *)((int)param_1 + 0x14);
  if ((((iVar1 == iVar5) || (iVar5 == 0)) &&
      (iVar5 = *(int *)(*(int *)((int)param_1 + 0x18) + 0x6c), iVar5 != 7)) &&
     ((((*(char *)((int)param_1 + 0x1c) != '\0' ||
        (iVar5 = *(int *)((int)param_1 + 0x18), *(int *)(iVar5 + 0x6c) == 1)) ||
       ((*(int *)(iVar5 + 0x6c) == 2 ||
        ((*(int *)(iVar5 + 0x6c) == 3 || (*(int *)(iVar5 + 0x6c) == 7)))))) &&
      ((char)param_2[5] != '\0')))) {
    if ((((byte)*(undefined4 *)(*(int *)(*(int *)(*(int *)((int)param_1 + 0x18) + 4) + 0xc) + 0x3c)
         & 4) == 4) || (cVar3 = (**(code **)(*(int *)*param_2 + 0x2c))(), cVar3 == '\0')) {
      if (*(char *)((int)param_1 + 0x1c) == '\0') {
        iVar5 = *(int *)(DAT_011d9d40 + 0x44);
      }
      else {
        iVar5 = *(int *)(DAT_011d9d40 + 0x40);
      }
      fVar6 = (float)iVar5 * DAT_00fc2b9c;
    }
    else {
      fVar6 = 0.0;
    }
    if (((*(char *)((int)param_2 + 0x16) != '\0') &&
        (*(int *)(*(int *)((int)param_1 + 0x18) + 0x24) != 0)) ||
       (iVar5 = (**(code **)(*(int *)*param_2 + 0x24))(), extraout_ST0 < (float10)fVar6)) {
      iVar5 = SacsWalker_TrySetExecutionStatus(*(void **)((int)param_1 + 0x18),7);
    }
  }
  if ((!bVar2) &&
     (iVar5 = *(int *)((int)param_1 + 0x18) + 0x6c,
     *(int *)(*(int *)((int)param_1 + 0x18) + 0x6c) == 7)) {
    if ((*(char *)((int)param_1 + 0x1c) != '\0') && (*(int *)((int)param_1 + 0x14) != 0)) {
      iVar5 = SacsListener_EmitAnimationDoneOnce(param_1,*(int *)((int)param_1 + 0x14));
      return iVar5;
    }
    iVar5 = *(int *)((int)param_1 + 0x18);
    if (((*(int *)(iVar5 + 0x6c) == 1) || (*(int *)(iVar5 + 0x6c) == 2)) ||
       ((*(int *)(iVar5 + 0x6c) == 3 || (iVar5 = *(int *)(iVar5 + 0x6c), iVar5 == 7)))) {
      iVar5 = SacsWalker_TrySetExecutionStatus(*(void **)((int)param_1 + 0x18),0);
    }
  }
  return iVar5;
}

