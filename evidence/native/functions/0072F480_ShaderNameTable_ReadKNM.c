/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Reads version and count, then records64-bit key, DWORD byte length and unpadded
   name bytes. Original precomp has1280 names; key0x906997a9 is RugSort and0xe77a2b60 is
   AlphaMaskThreshold. Names identify metadata, not original native function symbols. */

undefined4 __thiscall ShaderNameTable_ReadKNM(void *this,int *param_1)

{
  bool bVar1;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  uint uVar2;
  byte local_141;
  uint local_140;
  uint local_13c;
  undefined1 local_138 [8];
  void *local_130;
  uint local_128;
  char local_124;
  uint local_120;
  ulonglong local_11c;
  char *local_114;
  char *local_110;
  char local_100 [256];
  
  StreamReader_Construct(local_138,param_1,1);
  FUN_0072f3c0(*(int *)((int)this + 0x2c),*(uint *)((int)this + 0x30));
  *(undefined4 *)((int)this + 0x34) = 0;
  bVar1 = Stream_ReadUInt32(local_130,&local_120,local_128);
  StreamReader_AccumulateStatus(local_138,bVar1);
  bVar1 = Stream_ReadUInt32(local_130,&local_13c,local_128);
  StreamReader_AccumulateStatus(local_138,bVar1);
  if ((local_124 == '\0') || (bVar1 = StreamReader_CheckArrayBytes(local_138,local_13c,0xc), !bVar1)
     ) {
LAB_0072f652:
    StreamReader_ReleaseAuxiliary(local_138);
    return extraout_EAX_00 & 0xffffff00;
  }
  uVar2 = 0;
  local_114 = local_100;
  local_110 = local_100;
  if (local_13c != 0) {
    do {
      bVar1 = Stream_ReadUInt64(local_130,&local_11c,local_128);
      StreamReader_AccumulateStatus(local_138,bVar1);
      bVar1 = Stream_ReadUInt32(local_130,&local_140,local_128);
      StreamReader_AccumulateStatus(local_138,bVar1);
      if ((local_124 == '\0') ||
         (bVar1 = StreamReader_CheckArrayBytes(local_138,local_140,1), !bVar1)) {
        if ((local_114 != (char *)0x0) && (local_114 != local_100)) {
          Memory_FreeIfNonNull(local_114);
        }
        goto LAB_0072f652;
      }
      local_141 = 0;
      FUN_0072f420(&local_114,local_140 + 1,&local_141);
      local_114[local_140] = '\0';
      Stream_ReadExactBytes(param_1,local_114,local_140);
      FUN_0072f340(this,(uint *)&local_11c,local_114);
      uVar2 = uVar2 + 1;
    } while (uVar2 < local_13c);
  }
  if ((local_114 != (char *)0x0) && (local_114 != local_100)) {
    Memory_FreeIfNonNull(local_114);
  }
  StreamReader_ReleaseAuxiliary(local_138);
  return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
}

