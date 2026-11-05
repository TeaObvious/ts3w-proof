/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimServiceEnableTimeSlicing. Export
   ordinal(s): 245. Entry VA: 0x1039f1d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600049F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_SimServiceEnableTimeSlicing(undefined1 param_1)

{
  int iVar1;
  
                    /* 0x39f1d0  245  CASUtils_SimServiceEnableTimeSlicing */
  iVar1 = FUN_103e5fe0();
  if (iVar1 != 0) {
    *(undefined1 *)(iVar1 + 0x139) = param_1;
  }
  return;
}

