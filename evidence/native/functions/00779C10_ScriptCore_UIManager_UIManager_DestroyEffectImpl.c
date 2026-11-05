/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163020 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_DestroyEffectImpl [assembly=ScriptCore token=0x06000E3F;
   effectHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Additional bounded Effects lifetime comparison: existing defined body is one byte with zero
   selected Listing instructions; retained 96-byte raw window is not a complete function. Selected
   handle-tag/global +0xD8 lookup invokes interface +4. For the separately joined case-6 receiver
   this adjusts ECX-=0x10 and reaches shared count decrement/zero primary-vtable+8(1) dispatch.
   Decompiler duplicate lookup/tail artifacts do not prove two releases. Managed EffectBase.Dispose
   clears a nonzero handle only after DestroyEffect succeeds; current attached-membership early
   return is not proved original borrowing. */

void ScriptCore_UIManager__UIManager_DestroyEffectImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar2 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00779c49. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00779c65. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

