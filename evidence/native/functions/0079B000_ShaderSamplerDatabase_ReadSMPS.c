/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: SMPS sampler-preset reader. Requires SMPS tag, reads preset count, constructs one
   sampler state per record and appends it to the package database. The stored ordinal is one-based.
   Low AL is the success indicator. */

uint __thiscall ShaderSamplerDatabase_ReadSMPS(void *this,void *param_1)

{
  void *this_00;
  bool bVar1;
  uint extraout_EAX;
  undefined4 *extraout_EAX_00;
  undefined4 *puVar2;
  void *this_01;
  uint uVar3;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (local_4 != 0x53504d53) {
    return extraout_EAX & 0xffffff00;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_8,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  uVar3 = 0;
  puVar2 = extraout_EAX_00;
  if (local_8 != 0) {
    do {
      puVar2 = (undefined4 *)FUN_004e4500(0xc,"Shader/SamplerState",0);
      if (puVar2 == (undefined4 *)0x0) {
        this_01 = (void *)0x0;
      }
      else {
        this_01 = (void *)FUN_006cffb0(puVar2);
      }
      uVar3 = uVar3 + 1;
      *(uint *)((int)this_01 + 8) = uVar3;
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
    } while (uVar3 < local_8);
  }
  return CONCAT31((int3)((uint)puVar2 >> 8),1);
}

