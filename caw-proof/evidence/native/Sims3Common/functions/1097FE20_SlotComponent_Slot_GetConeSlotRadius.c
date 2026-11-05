/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_Slot_GetConeSlotRadius. Export
   ordinal(s): 2426. Entry VA: 0x1097fe20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600095B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl SlotComponent_Slot_GetConeSlotRadius(int *param_1)

{
  int iVar1;
  
                    /* 0x97fe20  2426  SlotComponent_Slot_GetConeSlotRadius */
  if (param_1 != (int *)0x0) {
    iVar1 = (**(code **)(*param_1 + 8))(6);
    if (iVar1 != 0) {
      return (float10)*(float *)(iVar1 + 0x18);
    }
  }
  return (float10)0;
}

