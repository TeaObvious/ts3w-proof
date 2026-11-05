/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */



undefined4 __thiscall FUN_00c0cb80(void *this,int *param_1,uint param_2,ushort param_3)

{
  int *inputStream;
  uint endianFlag;
  undefined4 uVar1;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  endianFlag = param_2;
  inputStream = param_1;
  if (3 < param_3) {
    Stream_ReadUInt32(param_1,&local_10,param_2);
    Stream_ReadUInt32(inputStream,&local_c,endianFlag);
    Stream_ReadUInt32(inputStream,&local_8,endianFlag);
    Stream_ReadUInt32(inputStream,&local_4,endianFlag);
    param_2 = 0;
    param_1 = (int *)0x1;
    local_14 = 1;
    param_3 = param_3 & 0xff00;
    Stream_ReadUInt32(inputStream,&param_2,endianFlag);
    Stream_ReadUInt32(inputStream,(uint *)&param_1,endianFlag);
    Stream_ReadUInt32(inputStream,&local_14,endianFlag);
    Stream_ReadBoolean(inputStream,&param_3);
  }
  uVar1 = RE_WaterGeometry_Read((void *)((int)this + 0x2ec0),inputStream,endianFlag);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

