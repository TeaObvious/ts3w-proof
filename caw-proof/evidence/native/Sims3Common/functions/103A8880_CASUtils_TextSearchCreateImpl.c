/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchCreateImpl. Export ordinal(s):
   250. Entry VA: 0x103a8880. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000479. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 CASUtils_TextSearchCreateImpl(void)

{
  undefined4 *puVar1;
  
                    /* 0x3a8880  250  CASUtils_TextSearchCreateImpl */
  puVar1 = (undefined4 *)FUN_10918eb0(0x90,"CAS/CASUtils_TextSearchCreateImpl",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_103a8630(puVar1);
    return *puVar1;
  }
  return _DAT_00000000;
}

