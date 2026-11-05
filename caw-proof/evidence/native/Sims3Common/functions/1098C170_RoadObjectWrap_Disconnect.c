/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_Disconnect. Export ordinal(s):
   2055. Entry VA: 0x1098c170. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001E5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl RoadObjectWrap_Disconnect(int *param_1,undefined4 param_2)

{
  int *piVar1;
  uint uVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)(**(code **)(*param_1 + 0x2c))(param_2);
  uVar2 = (**(code **)(*param_1 + 0x30))(param_2);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))(param_2);
    uVar3 = (**(code **)(*piVar1 + 4))(uVar2);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return uVar2 & 0xffffff00;
}

