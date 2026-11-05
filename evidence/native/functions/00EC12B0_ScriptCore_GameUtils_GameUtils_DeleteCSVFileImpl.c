/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970f0, 0x01197118 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_DeleteCSVFileImpl [assembly=ScriptCore token=0x0600022E; handle:
   System.UInt32; return=System.Void]
   ScriptCore.GameUtils::GameUtils_DeleteCSVFile_ListImpl [assembly=ScriptCore token=0x06000233;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_DeleteCSVFileImpl(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  
  if ((param_1 & 0xff000000) == 0x40000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (puVar2 != (undefined4 *)0x0) {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar1 + 0xd8))(param_1);
      (**(code **)*puVar2)(1);
    }
  }
  return;
}

