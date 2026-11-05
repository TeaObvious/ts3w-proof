/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fd8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GridSetCellTextValueImpl [assembly=ScriptCore token=0x06000E36;
   winHandle: System.UInt32, column: System.Int32, row: System.Int32, text: System.String;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UIManager::UIManager_GridSetCellTextValueImpl
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 unaff_EBX;
  undefined4 unaff_retaddr;
  
  if ((((param_4 != 0) &&
       (piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC(), (param_1 & 0xff000000) == 0x30000000))
      && (piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xaf1ee902), piVar2 != (int *)0x0)) {
    uVar3 = (**(code **)(*piVar1 + 0x58))(param_4);
    (**(code **)(*piVar2 + 0x1dc))(unaff_EBX,unaff_retaddr,uVar3,0,1,0);
  }
  return;
}

