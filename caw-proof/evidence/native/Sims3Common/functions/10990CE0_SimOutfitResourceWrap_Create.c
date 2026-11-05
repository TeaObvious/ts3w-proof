/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_Create. Export ordinal(s):
   2372. Entry VA: 0x10990ce0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000382. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * SimOutfitResourceWrap_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x990ce0  2372  SimOutfitResourceWrap_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x2d0,"SimOutfitResourceWrap_Create",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_103e17e0(puVar1);
    (**(code **)*puVar1)();
    return puVar1;
  }
  (*(code *)*_DAT_00000000)();
  return (undefined4 *)0x0;
}

