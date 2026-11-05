/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: TECH reader. Requires TECH tag, reads the technique key and pass count, allocates the
   pass array, then calls ShaderPass_ReadPASS for each pass. For later passes, missing 0xffffffff
   stage indices inherit the preceding pass's indices. The comparison and inheritance are
   instruction-backed. */

uint __thiscall ShaderTechnique_ReadTECH(void *this,void *param_1,void *param_2)

{
  char cVar1;
  uint uVar2;
  uint3 extraout_var;
  int iVar3;
  uint uVar4;
  void *this_00;
  uint local_c;
  uint local_8;
  uint local_4;
  
  uVar2 = FUN_004dd980(*(int **)((int)param_1 + 8),&local_c);
  uVar2 = FUN_007d79f0(param_1,(byte)uVar2);
  if (local_c == 0x48434554) {
    uVar2 = FUN_004dd980(*(int **)((int)param_1 + 8),&local_4);
    FUN_007d79f0(param_1,(byte)uVar2);
    uVar2 = FUN_004dd980(*(int **)((int)param_1 + 8),&local_8);
    FUN_007d79f0(param_1,(byte)uVar2);
    uVar2 = ShaderTechnique_ResizePasses(this,local_4,local_8);
    if ((char)uVar2 != '\0') {
      uVar4 = 0;
      if (*(int *)((int)this + 4) != 0) {
        iVar3 = 0;
        do {
          this_00 = (void *)(*(int *)this + iVar3);
          cVar1 = ShaderPass_ReadPASS(this_00,param_1,param_2);
          uVar2 = CONCAT31(extraout_var,cVar1);
          if (cVar1 == '\0') {
            return (uint)extraout_var << 8;
          }
          if (uVar4 != 0) {
            uVar2 = 0xffffffff;
            if (*(int *)((int)this_00 + 0x24) == -1) {
              *(undefined4 *)((int)this_00 + 0x24) = *(undefined4 *)(iVar3 + -0x168 + *(int *)this);
            }
            if (*(int *)((int)this_00 + 0x28) == -1) {
              uVar2 = *(uint *)this;
              *(undefined4 *)((int)this_00 + 0x28) = *(undefined4 *)(iVar3 + -0x164 + uVar2);
            }
          }
          uVar4 = uVar4 + 1;
          iVar3 = iVar3 + 0x18c;
        } while (uVar4 < *(uint *)((int)this + 4));
      }
      return CONCAT31((int3)(uVar2 >> 8),1);
    }
  }
  return uVar2 & 0xffffff00;
}

