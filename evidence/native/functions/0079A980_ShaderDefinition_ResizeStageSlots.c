/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: resize/rebuild of a ShaderDefinition stage array. Releases prior elements, allocates
   count * 0x10 bytes and initializes each stage with a back-reference. Allocation and element
   failure clear the array and report false in AL. */

undefined4 __thiscall ShaderDefinition_ResizeStageSlots(void *this,int param_1)

{
  int *piVar1;
  void *this_00;
  int iVar2;
  uint uVar3;
  
  piVar1 = *(int **)((int)this + 0xc);
  if ((int *)param_1 != piVar1) {
    iVar2 = 0;
    if (*(int *)((int)this + 8) != 0) {
      uVar3 = 0;
      if (piVar1 != (int *)0x0) {
        do {
          FUN_007a0f60((int *)(*(int *)((int)this + 8) + iVar2));
          uVar3 = uVar3 + 1;
          iVar2 = iVar2 + 0x10;
        } while (uVar3 < *(uint *)((int)this + 0xc));
      }
      piVar1 = (int *)FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 8));
      *(undefined4 *)((int)this + 8) = 0;
      *(undefined4 *)((int)this + 0x10) = 0;
      *(undefined4 *)((int)this + 0x14) = 0;
    }
    *(int *)((int)this + 0xc) = param_1;
    if (param_1 != 0) {
      piVar1 = FUN_004e6f20(DAT_011cc864,param_1 << 4,0);
      *(int **)((int)this + 8) = piVar1;
      if (piVar1 == (int *)0x0) {
        *(undefined4 *)((int)this + 0xc) = 0;
        return 0;
      }
      uVar3 = 0;
      if (*(int *)((int)this + 0xc) != 0) {
        iVar2 = 0;
        do {
          this_00 = (void *)(*(int *)((int)this + 8) + iVar2);
          if ((this_00 == (void *)0x0) ||
             (piVar1 = (int *)FUN_007a0ec0(this_00,this), piVar1 == (int *)0x0)) {
            uVar3 = ShaderDefinition_ResizeStageSlots(this,0);
            return uVar3 & 0xffffff00;
          }
          uVar3 = uVar3 + 1;
          iVar2 = iVar2 + 0x10;
        } while (uVar3 < *(uint *)((int)this + 0xc));
      }
    }
  }
  return CONCAT31((int3)((uint)piVar1 >> 8),1);
}

