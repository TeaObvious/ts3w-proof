/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: INI section callback invokes virtual +4C to enumerate that
   section keys through 0x1038B980. This metadata-only function definition uses original instruction
   range1038BA20..1038BA3F. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

undefined4 __cdecl
CAW_ConfigRegistryLoadSection(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  
  param_3[2] = param_1;
  uVar1 = (**(code **)(*(int *)*param_3 + 0x4c))(param_1,CAW_ConfigRegistryLoadValue,param_3);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

