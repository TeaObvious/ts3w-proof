/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Searches a uint16 threshold between zero and 65535 for at
   most 16 iterations. Counts all chunks through 0x1025E7D0. Returns the last midpoint, including a
   lower endpoint that can exceed the requested triangle budget; it does not return a corrected
   upper bound. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

float10 __thiscall
CAW_SelectTerrainTriangleBudgetThreshold(void *param_1,uint param_2,uint param_3,uint param_4)

{
  ushort uVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_d0;
  
  uVar3 = 0;
  *(uint *)((int)param_1 + 0x20) = param_3;
  *(undefined4 *)((int)param_1 + 0x10) = 0;
  if (1 < param_3) {
    do {
      *(int *)((int)param_1 + 0x10) = *(int *)((int)param_1 + 0x10) + 1;
    } while ((uint)(1 << ((byte)*(undefined4 *)((int)param_1 + 0x10) & 0x1f)) < param_3);
  }
  uVar2 = 0xffff;
  local_d0 = 0;
  do {
    *(short *)((int)param_1 + 4) = (short)((int)(uVar3 + uVar2) >> 1);
    CAW_CountAdaptiveTerrainChunks(param_1,param_4);
    uVar1 = *(ushort *)((int)param_1 + 4);
    if (param_2 < *(uint *)((int)param_1 + 0x1c)) {
      if ((ushort)uVar3 == uVar1) break;
      uVar3 = (uint)uVar1;
    }
    else {
      if ((ushort)uVar2 == uVar1) break;
      uVar2 = (uint)uVar1;
    }
    local_d0 = local_d0 + 1;
  } while (local_d0 < 0x10);
  return (float10)*(ushort *)((int)param_1 + 4);
}

