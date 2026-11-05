/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: SETS list reader. Reads a 32-bit count and appends each SSET parsed by
   ShaderSet_ReadSSET. The decompiler's third argument is not used in this body; preserve the
   caller's ABI when interpreting the reader. */

void __thiscall ShaderPackage_ReadSSETSets(void *this,undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *this_00;
  bool readSucceeded;
  undefined4 uVar2;
  void *pvVar3;
  void *local_4;
  
  this_00 = param_1;
  local_4 = this;
  readSucceeded = Stream_ReadUInt32((void *)param_1[2],(uint *)&local_4,param_1[4]);
  StreamReader_AccumulateStatus(this_00,readSucceeded);
  pvVar3 = (void *)0x0;
  if (local_4 != (void *)0x0) {
    do {
      uVar2 = ShaderSet_ReadSSET(this_00,(uint)&param_1);
      if ((char)uVar2 == '\0') {
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
      pvVar3 = (void *)((int)pvVar3 + 1);
    } while (pvVar3 < local_4);
  }
  return;
}

