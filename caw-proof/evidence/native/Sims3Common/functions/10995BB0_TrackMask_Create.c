/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TrackMask_Create. Export ordinal(s): 2524. Entry
   VA: 0x10995bb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B5B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl TrackMask_Create(uint param_1,undefined4 param_2)

{
  void *this;
  undefined4 *puVar1;
  int *piVar2;
  
                    /* 0x995bb0  2524  TrackMask_Create */
  this = (void *)FUN_10918eb0(0x40,"Animation/TrackMaskResource",0);
  if (this != (void *)0x0) {
    puVar1 = FUN_103792e0(this,param_1,param_2);
    if (puVar1 != (undefined4 *)0x0) {
      puVar1[2] = puVar1;
      puVar1[3] = (int)puVar1 >> 0x1f;
      puVar1[4] = 0x33260e3;
      puVar1[5] = 0xfffffffa;
      piVar2 = (int *)FUN_108e50d0();
      (**(code **)(*piVar2 + 0x5c))(puVar1,1);
      (**(code **)*puVar1)();
    }
    return puVar1;
  }
  return (undefined4 *)0x0;
}

