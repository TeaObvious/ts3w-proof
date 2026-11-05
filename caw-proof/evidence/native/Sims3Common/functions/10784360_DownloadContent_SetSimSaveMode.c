/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_SetSimSaveMode. Export
   ordinal(s): 408. Entry VA: 0x10784360. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001179. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl DownloadContent_SetSimSaveMode(undefined2 param_1)

{
  int iVar1;
  
                    /* 0x784360  408  DownloadContent_SetSimSaveMode */
  iVar1 = FUN_107744c0();
  if (*(void **)(iVar1 + 0x664) != (void *)0x0) {
    FUN_107ba920(*(void **)(iVar1 + 0x664),param_1);
  }
  return;
}

