/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: shader-definition body reader. Reads flags; conditionally reads linked definition/set
   IDs for bits 0x400 and 0x800; resizes its stage array and reads each stage's TECH/pass data. The
   0x400/0x800 meanings beyond these links are inferred from consumers, not original symbols. */

void __thiscall ShaderDefinition_ReadBody(void *this,void *param_1,void *param_2)

{
  uint *puVar1;
  void *this_00;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  
  this_00 = param_1;
  puVar1 = (uint *)((int)this + 0x18);
  uVar2 = FUN_004dd980(*(int **)((int)param_1 + 8),puVar1);
  FUN_007d79f0(this_00,(byte)uVar2);
  if ((*puVar1 & 0x400) != 0) {
    uVar2 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0x20));
    FUN_007d79f0(this_00,(byte)uVar2);
  }
  if ((*puVar1 & 0x800) != 0) {
    uVar2 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)((int)this + 0x24));
    FUN_007d79f0(this_00,(byte)uVar2);
  }
  uVar2 = FUN_004dd980(*(int **)((int)this_00 + 8),(uint *)&param_1);
  FUN_007d79f0(this_00,(byte)uVar2);
  if (*(char *)((int)this_00 + 0x14) != '\0') {
    uVar3 = FUN_007d7a00(this_00,*(uint *)((int)this + 0xc),4);
    if ((char)uVar3 != '\0') {
      uVar3 = ShaderDefinition_ResizeStageSlots(this,(int)param_1);
      if ((char)uVar3 == '\0') {
        FUN_007d79f0(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
        return;
      }
      uVar2 = 0;
      if (*(int *)((int)this + 0xc) != 0) {
        iVar4 = 0;
        while( true ) {
          uVar3 = ShaderTechnique_ReadTECH
                            ((void *)(*(int *)((int)this + 8) + iVar4),this_00,param_2);
          if ((char)uVar3 == '\0') break;
          uVar2 = uVar2 + 1;
          iVar4 = iVar4 + 0x10;
          if (*(uint *)((int)this + 0xc) <= uVar2) {
            return;
          }
        }
        FUN_007d79f0(this_00,0);
        *(undefined1 *)((int)this_00 + 0x14) = 0;
      }
    }
  }
  return;
}

