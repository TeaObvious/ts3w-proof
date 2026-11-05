/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_WaitForDownload. Export
   ordinal(s): 531. Entry VA: 0x10537a20. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060005AD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
OnlineFeaturesHost_WaitForDownload(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  undefined8 uVar4;
  
                    /* 0x537a20  531  OnlineFeaturesHost_WaitForDownload */
  piVar2 = (int *)FUN_1055b120();
  uVar4 = (**(code **)(*piVar2 + 0x118))();
  this = (void *)FUN_10918eb0(0x28,"Scripting/ScriptDownloadNotifier",0);
  if ((this != (void *)0x0) &&
     (piVar3 = (int *)FUN_10537710(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_1,param_2,
                                   param_3), piVar3 != (int *)0x0)) {
    (**(code **)(*piVar3 + 4))();
    cVar1 = FUN_10823d60(DAT_10c8f590,piVar3);
    if (cVar1 != '\0') {
      (**(code **)(*piVar2 + 0x120))(uVar4,0xffffffff,param_3,0);
      (**(code **)(*piVar2 + 0x11c))();
    }
                    /* WARNING: Could not recover jumptable at 0x10537abd. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar3 + 8))();
    return;
  }
  return;
}

