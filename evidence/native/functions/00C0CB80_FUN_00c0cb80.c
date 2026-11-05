/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */

undefined4 __thiscall FUN_00c0cb80(void *this,int *param_1,uint param_2,ushort param_3)

{
  int *inputStream;
  uint streamContext;
  undefined4 uVar1;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  streamContext = param_2;
  inputStream = param_1;
  if (3 < param_3) {
    FUN_004dd980(param_1,&local_10);
    FUN_004dd980(inputStream,&local_c);
    FUN_004dd980(inputStream,&local_8);
    FUN_004dd980(inputStream,&local_4);
    param_2 = 0;
    param_1 = (int *)0x1;
    local_14 = 1;
    param_3 = param_3 & 0xff00;
    FUN_004dd980(inputStream,&param_2);
    FUN_004dd980(inputStream,(uint *)&param_1);
    FUN_004dd980(inputStream,&local_14);
    FUN_004dd860(inputStream);
  }
  uVar1 = RE_WaterGeometry_Read((void *)((int)this + 0x2ec0),inputStream,streamContext);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

