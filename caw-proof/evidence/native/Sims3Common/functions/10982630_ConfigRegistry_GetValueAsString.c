/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_GetValueAsString. Export
   ordinal(s): 1766. Entry VA: 0x10982630. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005CC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ConfigRegistry_GetValueAsString(short *param_1,short *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 local_4;
  
                    /* 0x982630  1766  ConfigRegistry_GetValueAsString */
  if (DAT_10cb7f30 != (void *)0x0) {
    uVar1 = FUN_1038a530(DAT_10cb7f30,param_1,param_2,&local_4);
    if ((char)uVar1 != '\0') {
      Ordinal_2(local_4);
      return;
    }
  }
  Ordinal_2(param_3);
  return;
}

