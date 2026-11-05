/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetHairBaseColor. Export
   ordinal(s): 2356. Entry VA: 0x10990120. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000C5B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SetHairBaseColor(int param_1,float param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x990120  2356  SimBuilderWrap_SetHairBaseColor */
  local_20 = param_2;
  uStack_1c = param_3;
  uStack_18 = param_4;
  uStack_14 = DAT_10acb0d4;
  FUN_10407f10(&local_24,&local_20);
  *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 0x104;
  *(undefined4 *)(param_1 + 0x44) = local_24;
  return;
}

