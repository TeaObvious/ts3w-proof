/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_GetConnectedObject. Export
   ordinal(s): 2056. Entry VA: 0x1098c1b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001E7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
RoadObjectWrap_GetConnectedObject(int *param_1,undefined4 *param_2,undefined4 *param_3)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x98c1b0  2056  RoadObjectWrap_GetConnectedObject */
  piVar1 = (int *)(**(code **)(*param_1 + 0x2c))(param_2);
  *param_3 = piVar1;
  if (piVar1 != (int *)0x0) {
    uVar2 = (**(code **)(*piVar1 + 0xc))();
    *param_2 = uVar2;
    return 1;
  }
  *param_2 = 0;
  return 0;
}

