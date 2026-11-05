/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_ReleaseImpl. Export
   ordinal(s): 1284. Entry VA: 0x10577900. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_DesignModeSwap_ReleaseImpl(uint param_1)

{
  void *this;
  
                    /* 0x577900  1284  World_DesignModeSwap_ReleaseImpl */
  this = (void *)FUN_100f8460();
  if ((param_1 & 0xff000000) == 0x45000000) {
    FUN_101000c0(this,param_1);
  }
  return;
}

