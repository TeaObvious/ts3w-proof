/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163030 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_ResetEffectImpl [assembly=ScriptCore token=0x06000E41;
   effectHandle: System.UInt32, reverse: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Additional bounded Effects comparison: existing defined body is one byte/zero selected Listing
   instructions; retained 128-byte raw window is bounded. Preserve existing ResetEffect
   name/annotation and physical handle/low-byte reverse forwarding. Current Position/Start/Target
   reset and Generation guards remain current policy; no native timeline or callback parity is
   inferred from this frontend window. */

void ScriptCore_UIManager__UIManager_ResetEffectImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  char unaff_SI;
  char unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar1 != (int *)0x0)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0x8f2b630b);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x4c))(unaff_retaddr == '\0');
      return;
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0x8239c2f);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x24))(unaff_SI == '\0');
    }
  }
  return;
}

