/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_SetValueAsInt32. Export
   ordinal(s): 1770. Entry VA: 0x109826e0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005CF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ConfigRegistry_SetValueAsInt32(short *param_1,short *param_2,int param_3)

{
  char cVar1;
  short local_40 [32];
  
                    /* 0x9826e0  1770  ConfigRegistry_SetValueAsInt32 */
  FUN_10931490(param_3,local_40,10);
  if (DAT_10cb7f30 != (void *)0x0) {
    cVar1 = FUN_1038ab80(DAT_10cb7f30,param_1,param_2,local_40);
    if (cVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}

