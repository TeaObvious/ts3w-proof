/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_Connect. Export ordinal(s): 2054.
   Entry VA: 0x1098c160. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001E4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl RoadObjectWrap_Connect(int *param_1,int *param_2,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = (**(code **)(*param_1 + 0x2c))(param_2);
  if (uVar1 == 0) {
    uVar1 = (**(code **)(*param_2 + 0x2c))(param_3);
    if (uVar1 == 0) {
      (**(code **)*param_1)(param_2,param_2,param_3);
      uVar2 = (**(code **)*param_2)(param_3,param_1,param_2);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return uVar1 & 0xffffff00;
}

