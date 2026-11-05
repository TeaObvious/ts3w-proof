/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_GetSlotFromBoneNameHash. Export
   ordinal(s): 2421. Entry VA: 0x1097fdb0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000956. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl SlotComponent_GetSlotFromBoneNameHash(void *param_1,int param_2)

{
  int iVar1;
  
                    /* 0x97fdb0  2421  SlotComponent_GetSlotFromBoneNameHash */
  if (param_1 != (void *)0x0) {
    iVar1 = thunk_FUN_10742a70(param_1,param_2);
    return iVar1;
  }
  return 0;
}

