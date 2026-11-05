/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163070 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetResolutionImpl [assembly=ScriptCore token=0x06000E49; width:
   System.UInt32, height: System.UInt32, refresh: System.UInt32, fullScreen: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Physical display-request closure (PC1.67): complete 139-byte body, four physical stack DWORD
   slots; width/height/refresh copied as raw32 bits, fourth low byte is fullscreen. Null UI service
   skips posting; otherwise create 0x18 message, retain/post event07983246/release (allocation-null
   path preserved). Plain RET, no callee-pop instruction. Existing registered
   name/namespace/inferred prototype/formal storage remain untouched; stdcall projection is an
   inference artifact. Alignment after77D4DA and neighboring functions are excluded. */

void ScriptCore_UIManager__UIManager_SetResolutionImpl
               (int param_1,int param_2,int param_3,undefined1 param_4)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_0044c4f0();
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)FUN_004e4500(0x18,"UI/SetResolutionMessage",0);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      *piVar2 = (int)&PTR_FUN_0106c91c;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      piVar2[2] = param_1;
      piVar2[3] = param_2;
      piVar2[4] = param_3;
      *piVar2 = (int)&PTR_FUN_0106c91c;
      *(undefined1 *)(piVar2 + 5) = param_4;
      (**(code **)(*piVar2 + 4))();
    }
    (**(code **)(*piVar1 + 0x1c))(0x7983246,piVar2,0,0);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  return;
}

