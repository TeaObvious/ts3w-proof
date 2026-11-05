/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162dd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_ShutdownLayoutImpl [assembly=ScriptCore token=0x06000DF5;
   layoutHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Genuine ShutdownLayout bridge: one UInt32 stack word,
   caller-clean plainRET on invalid kind/resolve and tail jump virtual8 on valid kind30 object.
   Physical handle-serviceCC resolve then object primary virtual8 invokes actual layout Shutdown
   when class installsFC1EC0. Previous stdcall metadata wrong. No registry/map enumeration,
   thread-ID gate or blanket safe null-service adaptation occurs in this body. Preserve existing
   original name/annotations. */

void __cdecl ScriptCore_UIManager__UIManager_ShutdownLayoutImpl(uint layoutHandle)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((layoutHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(layoutHandle);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x007796d1. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

