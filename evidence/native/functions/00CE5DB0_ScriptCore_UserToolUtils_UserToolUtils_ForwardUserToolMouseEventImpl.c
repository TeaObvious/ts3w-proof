/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189f38 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_ForwardUserToolMouseEventImpl [assembly=ScriptCore
   token=0x06000C0E; eventType: System.UInt32, x: System.Single, y: System.Single, button:
   System.UInt32, modifiers: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_ForwardUserToolMouseEventImpl
               (undefined4 param_1,float param_2,float param_3,int param_4,byte param_5)

{
  void *this;
  
  this = (void *)FUN_00cef500();
  if (this != (void *)0x0) {
    switch(param_1) {
    case 0:
      UserToolManager_ForwardLeftMousePress(this,param_2,param_3,param_4,param_5);
      break;
    case 1:
      FUN_00cef8e0(this,param_2,param_3,param_4,param_5);
      return;
    case 2:
      UserToolManager_ForwardMouseMove(this,param_2,param_3,param_5);
      return;
    case 3:
      UserToolManager_ForwardFocusLost((int)this);
      return;
    }
  }
  return;
}

