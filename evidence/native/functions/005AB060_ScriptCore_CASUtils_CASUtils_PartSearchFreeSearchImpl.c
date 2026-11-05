/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 registration table at 0x01156220, 0x01156488 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl [assembly=ScriptCore token=0x060002E3;
   handle: System.UInt32; return=System.Void]
   ScriptCore.CASUtils::CASUtils_KeySearchFreeSearchImpl [assembly=ScriptCore token=0x060002EF;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */



/* Verified PC 1.67 registration table at 0x01156220, 0x01156488 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl [assembly=ScriptCore token=0x060002E3;
   handle: System.UInt32; return=System.Void]
   ScriptCore.CASUtils::CASUtils_KeySearchFreeSearchImpl [assembly=ScriptCore token=0x060002EF;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl(uint param_1)

{
  int *piVar1;
  undefined4 *allocation;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    allocation = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (allocation != (undefined4 *)0x0) {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar1 + 0xd8))(param_1);
      if ((void *)*allocation != (void *)0x0) {
        Memory_FreeIfNonNull((void *)*allocation);
      }
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

