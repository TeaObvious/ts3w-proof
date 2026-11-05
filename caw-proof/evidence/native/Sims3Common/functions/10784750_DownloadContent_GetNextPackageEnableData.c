/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetNextPackageEnableData. Export
   ordinal(s): 382. Entry VA: 0x10784750. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011CC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char __cdecl DownloadContent_GetNextPackageEnableData(undefined4 *param_1,undefined1 *param_2)

{
  void *this;
  undefined4 uVar1;
  longlong *plVar2;
  char cVar3;
  undefined4 local_20 [4];
  longlong local_10 [2];
  
                    /* 0x784750  382  DownloadContent_GetNextPackageEnableData */
  cVar3 = '\0';
  this = (void *)FUN_1079f8e0();
  if (this != (void *)0x0) {
    FUN_10933570(local_20);
    uVar1 = FUN_1079f7b0(this,local_20,param_2);
    cVar3 = (char)uVar1;
    if (cVar3 != '\0') {
      plVar2 = FUN_1055daf0(local_10,local_20);
      *param_1 = (int)*plVar2;
      param_1[1] = *(undefined4 *)((int)plVar2 + 4);
      param_1[2] = (int)plVar2[1];
      param_1[3] = *(undefined4 *)((int)plVar2 + 0xc);
    }
  }
  return cVar3;
}

