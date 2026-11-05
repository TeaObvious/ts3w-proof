/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163228 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    World_StoreNamedCallbackForEvent(param_1);
  }
  return;
}

