/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163758 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_CaptureSceneForMemoryOrPicture [assembly=ScriptCore token=0x060007EF;
   style: System.UInt32, x: System.UInt32, y: System.UInt32, width: System.UInt32, height:
   System.UInt32, skill: System.UInt32, bForMemory: System.Boolean, callback: System.Delegate;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_CaptureSceneForMemoryOrPicture(undefined4 param_1,undefined1 param_2)

{
  void *this;
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined8 uVar2;
  undefined4 unaff_retaddr;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  this = (void *)FUN_009e0120();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this != (void *)0x0) && (piVar1 != (int *)0x0)) {
    uStack_18 = 0x785738;
    uVar2 = (**(code **)(*piVar1 + 0x118))();
    uStack_18 = 0;
    (**(code **)(*piVar1 + 0x120))(uVar2,0xffffffff);
    FUN_009dc580(this,unaff_EDI,unaff_ESI,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),unaff_retaddr,
                 param_1,param_2,&uStack_1c);
    (**(code **)(*piVar1 + 0x11c))();
  }
  return;
}

