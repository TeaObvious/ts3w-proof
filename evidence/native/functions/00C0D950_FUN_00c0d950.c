/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Ghidra export refreshed on 2026-10-12 after WaterGeometry annotations.
   RE_ symbols and comments are analyst annotations, not original names.
   Read the paired original bytes and guides/water/README.md.
   Native ABI details not established by instructions remain inferred. */

void __fastcall FUN_00c0d950(void *param_1)

{
  float local_20 [7];
  
  if (*(char *)((int)param_1 + 0x210) == '\0') {
    *(undefined1 *)((int)param_1 + 0x210) = 1;
    if ((*(int *)((int)param_1 + 0x2ec0) == 0) || (*(char *)((int)param_1 + 0x241) != '\0')) {
      FUN_00b611b0((void *)((int)param_1 + 0x2ec0),*(float *)((int)param_1 + 0x220),
                   *(float *)((int)param_1 + 0x224),*(undefined4 *)((int)param_1 + 0x228),
                   *(undefined4 *)((int)param_1 + 0x22c),0x200,0x200,5,0xffffffff,
                   *(undefined4 *)((int)param_1 + 0x21c),0x3f000000,1,*(int *)((int)param_1 + 0x218)
                   ,'\x01',0);
      local_20[0] = 0.0;
      local_20[1] = 0.0;
      local_20[2] = 0.0;
      local_20[3] = 0.0;
      RE_WaterGeometry_GenerateAndSerialize
                ((void *)((int)param_1 + 0x2ec0),local_20,'\0','\x01',(int *)0x0,1);
    }
    *(undefined1 *)((int)param_1 + 0x350) = 0;
    FUN_00c0d5c0(param_1,'\0');
    FUN_00c0cd50((int)param_1);
  }
  return;
}

