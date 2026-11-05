/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_DeleteLotContentsImpl. Export
   ordinal(s): 361. Entry VA: 0x107844a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001185. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl DownloadContent_DeleteLotContentsImpl(int *param_1,undefined4 param_2)

{
  uint in_EAX;
  uint uVar1;
  
                    /* 0x7844a0  361  DownloadContent_DeleteLotContentsImpl */
  if (DAT_10c6e9d8 != (void *)0x0) {
    uVar1 = FUN_1009b4a0(DAT_10c6e9d8,param_1,param_2);
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

