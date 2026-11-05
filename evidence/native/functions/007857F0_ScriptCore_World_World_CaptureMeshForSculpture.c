/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163768 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_CaptureMeshForSculpture [assembly=ScriptCore token=0x060007F1; objId:
   System.UInt64, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_CaptureMeshForSculpture
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined **this;
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined8 uVar2;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  this = FUN_00709970();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this != (undefined **)0x0) && (piVar1 != (int *)0x0)) {
    uStack_18 = 0x785818;
    uVar2 = (**(code **)(*piVar1 + 0x118))();
    uStack_18 = 0;
    uStack_1c = param_3;
    (**(code **)(*piVar1 + 0x120))(uVar2,0xffffffff);
    FUN_0070ab10(this,unaff_EDI,unaff_ESI,&uStack_1c);
    (**(code **)(*piVar1 + 0x11c))();
  }
  return;
}

