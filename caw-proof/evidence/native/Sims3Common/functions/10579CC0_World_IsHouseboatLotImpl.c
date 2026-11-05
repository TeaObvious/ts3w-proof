/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsHouseboatLotImpl. Export ordinal(s):
   1418. Entry VA: 0x10579cc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000D05. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl World_IsHouseboatLotImpl(int param_1,int param_2)

{
  int *in_EAX;
  
                    /* 0x579cc0  1418  World_IsHouseboatLotImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    in_EAX = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((in_EAX != (int *)0x0) && ((char)in_EAX[0x12f] != '\0')) {
      return CONCAT31((int3)((uint)in_EAX >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

