/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_DeleteCustomSim. Export
   ordinal(s): 357. Entry VA: 0x10784320. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001177. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char DownloadContent_DeleteCustomSim(void)

{
  char cVar1;
  int iVar2;
  undefined4 local_10 [4];
  
                    /* 0x784320  357  DownloadContent_DeleteCustomSim */
  FUN_1055dbb0(&stack0x00000004,local_10);
  iVar2 = FUN_107744c0();
  if ((iVar2 != 0) && (*(void **)(iVar2 + 0x664) != (void *)0x0)) {
    cVar1 = FUN_107bb7a0(*(void **)(iVar2 + 0x664),local_10);
    return cVar1;
  }
  return '\0';
}

