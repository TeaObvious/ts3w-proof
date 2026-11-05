/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0050d6d0. Physical ECX service plus four stack words/RET10. Native
   visibility/dirty flags admit retained self recording;50D320 builds commands when necessary,
   retain borrowed members, record composed transform/geometry/shade. Walk actual intrusive children
   backwards, preserving depth counter and selected dirty propagation. No authored snapshot or CLR
   tree is implied. */

void __thiscall
UiWindowService_RecordVisualSubtree(void *this,int param_1,int param_2,int *param_3,uint param_4)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  undefined1 local_b0 [88];
  int local_58;
  int *local_54;
  undefined4 local_50 [19];
  
  if (((*(byte *)(param_2 + 0x1f8) & 0x20) == 0) && ((*(byte *)(param_2 + 0x70) & 1) == 0)) {
    param_4 = param_4 & 0xffffff00;
  }
  if (*param_3 < param_3[1]) {
    param_3[1] = *param_3;
  }
  if ((char)param_4 == '\0') {
    if (*(int *)(param_2 + 500) != 0) {
      *(undefined4 *)(param_2 + 500) = 0;
    }
  }
  else {
    if ((*(byte *)(param_2 + 0x1f8) & 2) == 0) {
      iVar2 = *(int *)(param_2 + 500);
      if (iVar2 != 0) {
        if (((*(char *)(iVar2 + 0xc) == '\0') || (*(int *)(iVar2 + 0x24) != iVar2 + 0x20)) ||
           (*(int *)(iVar2 + 0x1c) != 0)) {
          piVar3 = (int *)FUN_0050a2f0();
          piVar3[2] = *(int *)(param_2 + 500);
          *(undefined1 *)(piVar3 + 3) = 0;
          *(undefined1 *)((int)piVar3 + 0xd) = 0;
          *(short *)(piVar3 + 4) = (short)*param_3;
          *(short *)((int)piVar3 + 0x12) = (short)param_3[1];
          piVar3[5] = (int)(*(float *)(param_2 + 0x48) - *(float *)(param_2 + 0x40));
          piVar3[6] = (int)(*(float *)(param_2 + 0x4c) - *(float *)(param_2 + 0x44));
          puVar1 = *(undefined4 **)(param_2 + 0x20c);
          piVar3[7] = (int)puVar1;
          if (puVar1 != (undefined4 *)0x0) {
            (**(code **)*puVar1)();
          }
          *(undefined1 *)((int)piVar3 + 0xe) = 0;
          FUN_0050b480(piVar3 + 0xc,param_2);
          piVar3[0x20] = *(int *)(param_2 + 0x1f0);
          piVar3[1] = *(int *)(param_1 + 4);
          *piVar3 = param_1;
          *(int **)(param_1 + 4) = piVar3;
          *(int **)piVar3[1] = piVar3;
          *(int **)(param_2 + 500) = piVar3;
        }
        else {
          *(undefined4 *)(param_2 + 500) = 0;
        }
      }
    }
    else {
      FUN_0050ebc0(local_b0,this);
      UiWindow_RecordSelfVisuals(param_2,local_b0);
      if ((local_54 == &local_58) && (*(int *)(param_2 + 0x20c) == 0)) {
        *(undefined4 *)(param_2 + 500) = 0;
        FUN_00509e10(local_50);
      }
      else {
        piVar3 = (int *)FUN_0050a2f0();
        piVar3[2] = *(int *)(param_2 + 500);
        FUN_0054ac40(piVar3 + 8,&local_58);
        *(undefined1 *)(piVar3 + 3) = 1;
        *(undefined1 *)((int)piVar3 + 0xd) = 0;
        *(undefined1 *)((int)piVar3 + 0xe) = 0;
        *(short *)(piVar3 + 4) = (short)*param_3;
        *(short *)((int)piVar3 + 0x12) = (short)param_3[1];
        piVar3[5] = (int)(*(float *)(param_2 + 0x48) - *(float *)(param_2 + 0x40));
        piVar3[6] = (int)(*(float *)(param_2 + 0x4c) - *(float *)(param_2 + 0x44));
        puVar1 = *(undefined4 **)(param_2 + 0x20c);
        piVar3[7] = (int)puVar1;
        if (puVar1 != (undefined4 *)0x0) {
          (**(code **)*puVar1)();
        }
        FUN_0050b480(piVar3 + 0xc,param_2);
        piVar3[0x20] = *(int *)(param_2 + 0x1f0);
        piVar3[1] = *(int *)(param_1 + 4);
        *piVar3 = param_1;
        *(int **)(param_1 + 4) = piVar3;
        *(int **)piVar3[1] = piVar3;
        *(int **)(param_2 + 500) = piVar3;
        FUN_00509e10(local_50);
      }
    }
    if (*(int *)(param_2 + 500) != 0) {
      param_3[1] = 0x7fffffff;
      for (iVar2 = *(int *)(param_2 + 0x2c); (iVar2 != 0 && ((*(byte *)(iVar2 + 0x1f9) & 8) == 0));
          iVar2 = *(int *)(iVar2 + 0x2c)) {
        *(byte *)(iVar2 + 0x1f9) = *(byte *)(iVar2 + 0x1f9) | 8;
      }
    }
  }
  *(byte *)(param_2 + 0x1f8) = *(byte *)(param_2 + 0x1f8) & 0xfd;
  *(undefined4 *)(param_2 + 0x14) = 0;
  if ((char)param_4 == '\0') {
    if ((*(byte *)(param_2 + 0x1f9) & 8) == 0) {
      return;
    }
    *(byte *)(param_2 + 0x1f9) = *(byte *)(param_2 + 0x1f9) & 0xf7;
  }
  iVar2 = *(int *)(param_2 + 0x210);
  iVar5 = param_2 + 0x210;
  if (iVar5 != iVar2) {
    *param_3 = *param_3 + 1;
    do {
      iVar5 = *(int *)(iVar5 + 4);
      if (iVar5 == 0) {
        iVar4 = 0;
      }
      else {
        iVar4 = iVar5 + -8;
      }
      UiWindowService_RecordVisualSubtree(this,param_1,iVar4,param_3,param_4);
    } while (iVar5 != iVar2);
    *param_3 = *param_3 + -1;
  }
  return;
}

