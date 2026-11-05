/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162de0, 0x01162df0, 0x01162e00, 0x01162e58 (TS3W.exe
   SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_DestroyDrawableImpl [assembly=ScriptCore token=0x06000DF7;
   drawableHandle: System.UInt32; return=System.Void]
   ScriptCore.UIManager::UIManager_DestroyUIImageImpl [assembly=ScriptCore token=0x06000DF9;
   imageHandle: System.UInt32; return=System.Void]
   ScriptCore.UIManager::UIManager_DestroyUIHitMaskImpl [assembly=ScriptCore token=0x06000DFB;
   hitMaskHandle: System.UInt32; return=System.Void]
   ScriptCore.UIManager::UIManager_DestroyWindowImpl [assembly=ScriptCore token=0x06000E06;
   winHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. One shared native entry is registered for DestroyWindow,
   DestroyDrawable, DestroyUIImage and DestroyUIHitMask; preserve all genuine binding identities in
   the existing annotation. Actual one UInt32 stackword, caller-clean plain RET, not prior stdcall
   metadata. Guard global service and kind0x30, call service+0xD8 typed-registration
   release0076A7A0; if it returns an object pointer tail-jump its virtual+4 Release. Registration
   count and actual object reference count are distinct. Every valid registration release returns
   saved pointer, not only the final forward-row erase, so do not infer skipped object Release from
   a surviving handle row. Final direct RET00779717; following INT3/new routine is outside
   ownership. */

void __cdecl ScriptCore_UIManager__UIManager_DestroyDrawableImpl(uint handle)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((handle & 0xff000000) == 0x30000000)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(handle);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00779715. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

