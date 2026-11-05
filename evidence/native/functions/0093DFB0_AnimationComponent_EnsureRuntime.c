/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Allocates ComponentRuntime only when
   component+0x24 null. Allocation failure returns AL0. Copies initial transform
   translation/quaternion from owner transform component if available; runtime cache does not exist
   before lazy activation. */

undefined4 __fastcall AnimationComponent_EnsureRuntime(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *in_EAX;
  void *pvVar6;
  undefined4 *puVar7;
  
  if (*(int *)(param_1 + 0x24) == 0) {
    pvVar6 = (void *)FUN_004e4500(0xc0,"Animation/ComponentRuntime",0);
    if (pvVar6 == (void *)0x0) {
      in_EAX = (undefined4 *)0x0;
    }
    else {
      in_EAX = AnimationComponentRuntime_Construct(pvVar6,param_1 + 8);
    }
    *(undefined4 **)(param_1 + 0x24) = in_EAX;
    if (in_EAX == (undefined4 *)0x0) {
      return 0;
    }
    if (*(void **)(param_1 + 4) != (void *)0x0) {
      pvVar6 = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011ea158);
      in_EAX = (undefined4 *)0x0;
      if (pvVar6 != (void *)0x0) {
        puVar7 = (undefined4 *)FUN_0094fec0((int)pvVar6);
        puVar1 = *(undefined4 **)(param_1 + 0x24);
        uVar3 = puVar7[1];
        uVar4 = puVar7[2];
        uVar5 = puVar7[3];
        *puVar1 = *puVar7;
        puVar1[1] = uVar3;
        puVar1[2] = uVar4;
        puVar1[3] = uVar5;
        in_EAX = (undefined4 *)FUN_004b3790((int)pvVar6);
        iVar2 = *(int *)(param_1 + 0x24);
        uVar3 = in_EAX[1];
        uVar4 = in_EAX[2];
        uVar5 = in_EAX[3];
        *(undefined4 *)(iVar2 + 0x10) = *in_EAX;
        *(undefined4 *)(iVar2 + 0x14) = uVar3;
        *(undefined4 *)(iVar2 + 0x18) = uVar4;
        *(undefined4 *)(iVar2 + 0x1c) = uVar5;
        iVar2 = *(int *)(param_1 + 0x24);
        *(undefined4 *)(iVar2 + 0x20) = *(undefined4 *)(iVar2 + 0x10);
        *(undefined4 *)(iVar2 + 0x24) = *(undefined4 *)(iVar2 + 0x14);
        *(undefined4 *)(iVar2 + 0x28) = *(undefined4 *)(iVar2 + 0x18);
        *(undefined4 *)(iVar2 + 0x2c) = *(undefined4 *)(iVar2 + 0x1c);
      }
    }
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

