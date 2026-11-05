/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161680 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_WaitForDownload [assembly=ScriptCore
   token=0x0600064F; downloadId: System.UInt64, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.OnlineFeatures::OnlineFeaturesHost_WaitForDownload
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  undefined8 uVar4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = (**(code **)(*piVar2 + 0x118))();
  this = (void *)FUN_004e4500(0x28,"Scripting/ScriptDownloadNotifier",0);
  if ((this != (void *)0x0) &&
     (piVar3 = (int *)FUN_00746430(this,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_1,param_2,
                                   param_3), piVar3 != (int *)0x0)) {
    (**(code **)(*piVar3 + 4))();
    cVar1 = FUN_00a387c0(DAT_011ebda0,piVar3);
    if (cVar1 != '\0') {
      (**(code **)(*piVar2 + 0x120))(uVar4,0xffffffff,param_3,0);
      (**(code **)(*piVar2 + 0x11c))();
    }
                    /* WARNING: Could not recover jumptable at 0x0074663d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar3 + 8))();
    return;
  }
  return;
}

