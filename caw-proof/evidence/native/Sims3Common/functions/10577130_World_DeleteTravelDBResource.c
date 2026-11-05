/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DeleteTravelDBResource. Export ordinal(s):
   1277. Entry VA: 0x10577130. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C4B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint World_DeleteTravelDBResource(void)

{
  uint uVar1;
  
                    /* 0x577130  1277  World_DeleteTravelDBResource */
  uVar1 = FUN_107744c0();
  if (*(int *)(uVar1 + 0x664) != 0) {
    uVar1 = FUN_107ba9c0(*(int *)(uVar1 + 0x664));
    return uVar1;
  }
  return uVar1 & 0xffffff00;
}

