/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: resize/rebuild of technique passes. Releases prior passes, allocates count * 0x18c bytes
   and constructs each pass with a parent pointer. Allocation or construction failure rolls the
   count back to zero; low AL is success. */

undefined4 __thiscall ShaderTechnique_ResizePasses(void *this,undefined4 param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  *(undefined4 *)((int)this + 8) = param_1;
  piVar1 = *(int **)((int)this + 4);
  if ((int *)param_2 != piVar1) {
    if (*(int *)this != 0) {
      uVar3 = 0;
      if (piVar1 != (int *)0x0) {
        iVar2 = 0;
        do {
          FUN_0079e760(*(int *)this + iVar2);
          uVar3 = uVar3 + 1;
          iVar2 = iVar2 + 0x18c;
        } while (uVar3 < *(uint *)((int)this + 4));
      }
      FUN_004e5e70(DAT_011cc864,*(int *)this);
    }
    iVar2 = 0;
    *(uint *)((int)this + 4) = param_2;
    piVar1 = FUN_004e6f20(DAT_011cc864,param_2 * 0x18c,0);
    *(int **)this = piVar1;
    if (piVar1 == (int *)0x0) {
      *(undefined4 *)((int)this + 4) = 0;
      return 0;
    }
    uVar3 = 0;
    if (param_2 != 0) {
      do {
        if ((void *)(*(int *)this + iVar2) == (void *)0x0) {
LAB_007a1100:
          uVar3 = ShaderTechnique_ResizePasses(this,param_1,0);
          return uVar3 & 0xffffff00;
        }
        piVar1 = FUN_0079e6a0((void *)(*(int *)this + iVar2),*(undefined4 *)((int)this + 0xc));
        if (piVar1 == (int *)0x0) goto LAB_007a1100;
        uVar3 = uVar3 + 1;
        iVar2 = iVar2 + 0x18c;
      } while (uVar3 < param_2);
    }
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),1);
}

