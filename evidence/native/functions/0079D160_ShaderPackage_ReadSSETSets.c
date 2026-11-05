/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: SETS list reader. Reads a 32-bit count and appends each SSET parsed by
   ShaderSet_ReadSSET. The decompiler's third argument is not used in this body; preserve the
   caller's ABI when interpreting the reader. */

void __thiscall ShaderPackage_ReadSSETSets(void *this,undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *this_00;
  uint uVar2;
  undefined4 uVar3;
  void *pvVar4;
  void *local_4;
  
  this_00 = param_1;
  local_4 = this;
  uVar2 = FUN_004dd980((int *)param_1[2],(uint *)&local_4);
  FUN_007d79f0(this_00,(byte)uVar2);
  pvVar4 = (void *)0x0;
  if (local_4 != (void *)0x0) {
    do {
      uVar3 = ShaderSet_ReadSSET(this_00,(uint)&param_1);
      if ((char)uVar3 == '\0') {
        return;
      }
      puVar1 = *(undefined4 **)((int)this + 0x10);
      if (puVar1 < *(undefined4 **)((int)this + 0x14)) {
        *(undefined4 **)((int)this + 0x10) = puVar1 + 1;
        if (puVar1 != (undefined4 *)0x0) {
          *puVar1 = param_1;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0xc),puVar1,&param_1);
      }
      pvVar4 = (void *)((int)pvVar4 + 1);
    } while (pvVar4 < local_4);
  }
  return;
}

