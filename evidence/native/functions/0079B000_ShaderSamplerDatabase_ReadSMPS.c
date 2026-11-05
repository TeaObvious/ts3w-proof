/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: SMPS sampler-preset reader. Requires SMPS tag, reads preset count, constructs one
   sampler state per record and appends it to the package database. The stored ordinal is one-based.
   Low AL is the success indicator. */

uint __thiscall ShaderSamplerDatabase_ReadSMPS(void *this,void *param_1)

{
  void *this_00;
  uint uVar1;
  undefined4 *puVar2;
  void *this_01;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  uVar1 = FUN_004dd980(*(int **)((int)param_1 + 8),&local_4);
  uVar1 = FUN_007d79f0(this_00,(byte)uVar1);
  if (local_4 == 0x53504d53) {
    uVar1 = FUN_004dd980(*(int **)((int)this_00 + 8),&local_8);
    puVar2 = (undefined4 *)FUN_007d79f0(this_00,(byte)uVar1);
    uVar1 = 0;
    if (local_8 != 0) {
      do {
        puVar2 = (undefined4 *)FUN_004e4500(0xc,"Shader/SamplerState",0);
        if (puVar2 == (undefined4 *)0x0) {
          this_01 = (void *)0x0;
        }
        else {
          this_01 = (void *)FUN_006cffb0(puVar2);
        }
        uVar1 = uVar1 + 1;
        *(uint *)((int)this_01 + 8) = uVar1;
        param_1 = this_01;
        FUN_0079a5b0(this_01,this_00);
        puVar2 = *(undefined4 **)((int)this + 4);
        if (puVar2 < *(undefined4 **)((int)this + 8)) {
          *(undefined4 **)((int)this + 4) = puVar2 + 1;
          if (puVar2 != (undefined4 *)0x0) {
            *puVar2 = this_01;
          }
        }
        else {
          puVar2 = (undefined4 *)FUN_00982420(this,puVar2,&param_1);
        }
      } while (uVar1 < local_8);
    }
    return CONCAT31((int3)((uint)puVar2 >> 8),1);
  }
  return uVar1 & 0xffffff00;
}

