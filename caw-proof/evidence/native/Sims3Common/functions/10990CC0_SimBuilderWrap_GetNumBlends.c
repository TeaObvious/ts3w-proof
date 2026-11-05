/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_GetNumBlends. Export ordinal(s):
   2333. Entry VA: 0x10990cc0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C7B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl SimBuilderWrap_GetNumBlends(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  
                    /* 0x990cc0  2333  SimBuilderWrap_GetNumBlends */
  iVar2 = 0;
  for (puVar1 = *(undefined4 **)(param_1 + 0x208); puVar1 != (undefined4 *)(param_1 + 0x208);
      puVar1 = (undefined4 *)*puVar1) {
    iVar2 = iVar2 + 1;
  }
  return iVar2;
}

