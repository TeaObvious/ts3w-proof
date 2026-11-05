/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f10 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_RegisterWindowCursorImpl [assembly=ScriptCore token=0x06000E1D;
   cursorID: System.UInt32, winHandle: System.UInt32, pickPoint: Sims3.SimIFace.Vector2&, register:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UIManager::UIManager_RegisterWindowCursorImpl
          (undefined4 param_1,uint param_2,undefined4 param_3,char param_4)

{
  void *this;
  int *piVar1;
  int local_8;
  undefined4 uStack_4;
  
  this = (void *)FUN_007f2710();
  if (this != (void *)0x0) {
    if (param_4 == '\0') {
      FUN_007f2c00(this,param_1,(int *)0x0,&local_8,'\0');
    }
    else {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if ((param_2 & 0xff000000) == 0x30000000) {
        piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
        if (piVar1 != (int *)0x0) {
          piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
          if (piVar1 != (int *)0x0) {
            FUN_007f2c00(this,uStack_4,piVar1,(int *)&stack0xfffffff0,'\x01');
            return;
          }
        }
      }
    }
  }
  return;
}

