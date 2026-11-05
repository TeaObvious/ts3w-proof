/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e90 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_DestroyAllChildrenImpl [assembly=ScriptCore token=0x06000E0D;
   parentHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Genuine DestroyAllChildren binding: one UInt32 word,
   plainRET/cdecl on invalid path. Require high byte30, serviceCC resolve and object query
   interfaceEEEE8218, then tail IWindow virtualE8. Actual selected IWindow table maps that slot
   to514520. Preserve original binding name and existing annotations; not the old bounded linear
   window or stdcall metadata. */

void __cdecl ScriptCore_UIManager__UIManager_DestroyAllChildrenImpl(uint windowHandle)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077ae96. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar1 + 0xe8))();
        return;
      }
    }
  }
  return;
}

