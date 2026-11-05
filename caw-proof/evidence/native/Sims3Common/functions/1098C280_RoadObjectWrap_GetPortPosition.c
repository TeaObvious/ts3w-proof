/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_GetPortPosition. Export
   ordinal(s): 2060. Entry VA: 0x1098c280. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001E3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl RoadObjectWrap_GetPortPosition(int *param_1,undefined4 param_2)

{
  undefined8 *puVar1;
  undefined1 local_20 [28];
  
                    /* 0x98c280  2060  RoadObjectWrap_GetPortPosition */
  puVar1 = (undefined8 *)(**(code **)(*param_1 + 0x28))(local_20,param_2);
  return *puVar1;
}

