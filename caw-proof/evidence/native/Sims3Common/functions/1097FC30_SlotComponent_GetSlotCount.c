/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_GetSlotCount. Export ordinal(s):
   2420. Entry VA: 0x1097fc30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000954. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl SlotComponent_GetSlotCount(int param_1,undefined4 param_2)

{
  int iVar1;
  
                    /* 0x97fc30  2420  SlotComponent_GetSlotCount */
  if (param_1 != 0) {
    switch(param_2) {
    case 0:
      iVar1 = FUN_10742960(param_1);
      return iVar1;
    case 1:
      return *(int *)(param_1 + 8);
    case 2:
      iVar1 = FUN_10742b00(param_1);
      return iVar1;
    case 3:
      return *(int *)(param_1 + 0x18);
    case 4:
      return *(int *)(param_1 + 0x20);
    case 5:
      return *(int *)(param_1 + 0x28);
    }
  }
  return 0;
}

