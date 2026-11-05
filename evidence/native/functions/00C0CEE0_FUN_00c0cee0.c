/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */

undefined4 __thiscall FUN_00c0cee0(void *this,int *param_1,uint param_2)

{
  undefined4 uVar1;
  float local_20 [7];
  
  FUN_00b611b0((void *)((int)this + 0x2ec0),*(float *)((int)this + 0x220),
               *(float *)((int)this + 0x224),*(undefined4 *)((int)this + 0x228),
               *(undefined4 *)((int)this + 0x22c),0x200,0x200,5,0xffffffff,
               *(undefined4 *)((int)this + 0x21c),0x3f000000,1,*(int *)((int)this + 0x218),'\x01',0)
  ;
  FUN_004de390(param_1,*(undefined4 *)((int)this + 0x220),param_2);
  FUN_004de390(param_1,*(undefined4 *)((int)this + 0x224),param_2);
  FUN_004de390(param_1,*(undefined4 *)((int)this + 0x228),param_2);
  FUN_004de390(param_1,*(undefined4 *)((int)this + 0x22c),param_2);
  FUN_004de060(param_1,*(uint *)((int)this + 0x244),param_2);
  FUN_004de060(param_1,*(uint *)((int)this + 0x248),param_2);
  FUN_004de060(param_1,*(uint *)((int)this + 0x24c),param_2);
  FUN_004dde00(param_1,*(char *)((int)this + 0x250));
  local_20[0] = 0.0;
  local_20[1] = 0.0;
  local_20[2] = 0.0;
  local_20[3] = 0.0;
  uVar1 = RE_WaterGeometry_GenerateAndSerialize
                    ((void *)((int)this + 0x2ec0),local_20,'\0','\0',param_1,param_2);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

