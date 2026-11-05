/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetFirstPackageEnableData. Export
   ordinal(s): 376. Entry VA: 0x107846e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011CB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
DownloadContent_GetFirstPackageEnableData(undefined4 *param_1,undefined1 *param_2)

{
  char cVar1;
  void *this;
  undefined3 extraout_var;
  longlong *plVar3;
  undefined4 local_20 [4];
  longlong local_10 [2];
  undefined4 uVar2;
  
                    /* 0x7846e0  376  DownloadContent_GetFirstPackageEnableData */
  cVar1 = '\0';
  this = (void *)FUN_1079f8e0();
  uVar2 = 0;
  if (this != (void *)0x0) {
    FUN_10933570(local_20);
    cVar1 = FUN_1079f770(this,local_20,param_2);
    uVar2 = CONCAT31(extraout_var,cVar1);
    if (cVar1 != '\0') {
      plVar3 = FUN_1055daf0(local_10,local_20);
      *param_1 = (int)*plVar3;
      param_1[1] = *(undefined4 *)((int)plVar3 + 4);
      param_1[2] = (int)plVar3[1];
      uVar2 = *(undefined4 *)((int)plVar3 + 0xc);
      param_1[3] = uVar2;
    }
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),cVar1);
}

