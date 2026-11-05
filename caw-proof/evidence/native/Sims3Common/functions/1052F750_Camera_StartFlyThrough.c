/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_StartFlyThrough. Export ordinal(s): 307.
   Entry VA: 0x1052f750. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A47. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_StartFlyThrough(uint param_1,undefined4 param_2)

{
  int iVar1;
  void *this;
  
                    /* 0x52f750  307  Camera_StartFlyThrough */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    this = (void *)FUN_10937a80(iVar1);
    if (this != (void *)0x0) {
      FUN_1075db80(this,param_1,param_2);
    }
  }
  return;
}

