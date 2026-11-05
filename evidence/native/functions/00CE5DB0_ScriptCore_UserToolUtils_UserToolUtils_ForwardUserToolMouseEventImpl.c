/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f38 (original PC 1.67 TS3W.exe).
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
      FUN_00cef820(this,param_2,param_3,param_4,param_5);
      break;
    case 1:
      FUN_00cef8e0(this,param_2,param_3,param_4,param_5);
      return;
    case 2:
      FUN_00cef980(this,param_2,param_3,param_5);
      return;
    case 3:
      FUN_00cefa30((int)this);
      return;
    }
  }
  return;
}

