/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_CreateNewPond. Export ordinal(s): 2614.
   Entry VA: 0x10997f20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004CB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl WorldWrap_CreateNewPond(undefined4 param_1)

{
  void *this;
  undefined4 *puVar1;
  
                    /* 0x997f20  2614  WorldWrap_CreateNewPond */
  this = (void *)FUN_10918eb0(0x550,"WorldWrap/NewPond",0);
  if (this != (void *)0x0) {
    puVar1 = FUN_10128c10(this,param_1);
    return puVar1;
  }
  return (undefined4 *)0x0;
}

