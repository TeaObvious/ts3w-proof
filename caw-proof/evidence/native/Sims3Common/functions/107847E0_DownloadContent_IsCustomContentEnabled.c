/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_IsCustomContentEnabled. Export
   ordinal(s): 397. Entry VA: 0x107847e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001195. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 DownloadContent_IsCustomContentEnabled(void)

{
  int iVar1;
  
                    /* 0x7847e0  397  DownloadContent_IsCustomContentEnabled */
  iVar1 = FUN_107744c0();
  if (iVar1 == 0) {
    return 0;
  }
  return *(undefined1 *)(iVar1 + 0xd5);
}

