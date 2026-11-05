/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163228 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_RegisterCallbackMethodImpl [assembly=ScriptCore token=0x06000742;
   worldEvent: System.UInt32, typeName: System.String, methodName: System.String;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_RegisterCallbackMethodImpl
          (uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  undefined4 uVar2;
  
  if (param_1 < 0x4c) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar2 = (**(code **)(*piVar1 + 0x58))(param_3);
    (**(code **)(*piVar1 + 0x58))(param_1,uVar2);
    FUN_00796510(param_1);
  }
  return;
}

