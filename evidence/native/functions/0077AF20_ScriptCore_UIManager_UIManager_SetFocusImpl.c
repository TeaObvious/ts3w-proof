/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ea8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetFocusImpl [assembly=ScriptCore token=0x06000E10; context:
   System.UInt32, winHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Focus setter bridge: physical caller-clean ABI, two
   incoming DWORDs, all exits plain RET; preserve original binding name. Zero handle forwards null
   to service58 with context. Nonzero requires high byte30, handle-serviceCC resolve and object
   virtual0C query EEEE8218 before service58 receives the IWindow interface. Saved ESI changes
   context load to ESP+8 at77AF84: this is original first argument, not an uninitialized register.
   Service return is ignored; invalid kind/resolve/interface quietly leaves focus unchanged. No
   reference acquisition is performed here beyond the selected query behavior.
   
   Actual C still emits unaff_ESI for the nonzero-handle context argument despite the corrected
   physical cdecl prototype. This is an indirect-call stack-tracking defect;77AF84 MOV ECX,[ESP+8]
   after saved ESI and77AF8E PUSH ECX prove the original first context argument. */

void __cdecl ScriptCore_UIManager__UIManager_SetFocusImpl(uint inputContext,uint windowHandle)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_ESI;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    if (windowHandle != 0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
      if (piVar1 == (int *)0x0) {
        return;
      }
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (iVar2 == 0) {
        return;
      }
      piVar1 = (int *)FUN_0050af90();
      (**(code **)(*piVar1 + 0x58))(unaff_ESI,iVar2);
      return;
    }
  }
  else if (windowHandle != 0) {
    return;
  }
  piVar1 = (int *)FUN_0050af90();
  (**(code **)(*piVar1 + 0x58))(inputContext,0);
  return;
}

