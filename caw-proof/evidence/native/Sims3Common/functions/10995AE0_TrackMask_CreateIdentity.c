/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TrackMask_CreateIdentity. Export ordinal(s):
   2525. Entry VA: 0x10995ae0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B5A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * TrackMask_CreateIdentity(void)

{
  undefined4 *puVar1;
  
                    /* 0x995ae0  2525  TrackMask_CreateIdentity */
  puVar1 = (undefined4 *)FUN_10918eb0(0x40,"Animation/TrackMaskResource",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = (undefined4 *)FUN_10379260(puVar1);
    if (puVar1 != (undefined4 *)0x0) {
      (**(code **)*puVar1)();
    }
    return puVar1;
  }
  return (undefined4 *)0x0;
}

