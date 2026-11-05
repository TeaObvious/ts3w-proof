/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_SetValueAsString. Export
   ordinal(s): 1771. Entry VA: 0x10982670. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005CD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ConfigRegistry_SetValueAsString(short *param_1,short *param_2,short *param_3)

{
  char cVar1;
  
                    /* 0x982670  1771  ConfigRegistry_SetValueAsString */
  if (DAT_10cb7f30 != (void *)0x0) {
    cVar1 = FUN_1038ab80(DAT_10cb7f30,param_1,param_2,param_3);
    if (cVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}

