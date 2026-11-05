/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_SetSimSavedCallbackImpl. Export
   ordinal(s): 409. Entry VA: 0x107847c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001194. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl DownloadContent_SetSimSavedCallbackImpl(undefined4 param_1)

{
  int iVar1;
  
                    /* 0x7847c0  409  DownloadContent_SetSimSavedCallbackImpl */
  iVar1 = FUN_107744c0();
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0x664) != 0)) {
    FUN_107ba930(param_1);
  }
  return;
}

