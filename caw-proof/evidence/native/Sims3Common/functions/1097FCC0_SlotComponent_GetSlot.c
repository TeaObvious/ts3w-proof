/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_GetSlot. Export ordinal(s): 2419.
   Entry VA: 0x1097fcc0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000955. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl SlotComponent_GetSlot(void *param_1,undefined4 param_2,uint param_3,int param_4)

{
  int iVar1;
  
                    /* 0x97fcc0  2419  SlotComponent_GetSlot */
  if (param_1 != (void *)0x0) {
    switch(param_2) {
    case 0:
      if (param_4 == 0) {
        iVar1 = thunk_FUN_10742980(param_1,param_3);
        return iVar1;
      }
      iVar1 = thunk_FUN_10742a10(param_1,param_3);
      return iVar1;
    case 1:
      if (param_4 == 0) {
        iVar1 = FUN_107425b0(param_1,param_3);
        return iVar1;
      }
      iVar1 = FUN_107425d0(param_1,param_3);
      return iVar1;
    case 2:
      if (param_4 == 0) {
        iVar1 = FUN_10742b10(param_1,param_3);
        return iVar1;
      }
      iVar1 = FUN_10742b50(param_1,param_3);
      return iVar1;
    case 3:
      if (param_4 == 0) {
        iVar1 = FUN_10742610(param_1,param_3);
        return iVar1;
      }
      iVar1 = FUN_10742630(param_1,param_3);
      return iVar1;
    case 4:
      if (param_4 == 0) {
        iVar1 = FUN_10742670(param_1,param_3);
        return iVar1;
      }
      iVar1 = FUN_10742690(param_1,param_3);
      return iVar1;
    case 5:
      if (param_4 == 0) {
        iVar1 = FUN_107426d0(param_1,param_3);
        return iVar1;
      }
      iVar1 = FUN_107426f0(param_1,param_3);
      return iVar1;
    }
  }
  return 0;
}

