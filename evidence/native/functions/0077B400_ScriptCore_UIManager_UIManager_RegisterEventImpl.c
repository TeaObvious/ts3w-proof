/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f40 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_RegisterEventImpl [assembly=ScriptCore token=0x06000E24;
   winHandle: System.UInt32, eventType: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Original RegisterEvent binding has TWO incoming DWORDs and
   plain RET/caller-clean cdecl, not old one-parameter stdcall metadata. Require handle high byte30,
   handle serviceCC resolve then interface query virtual0C(EEEE8218), silently return on invalid
   object/interface. Push second event word then IWindow and call742670 on registry011D798C. No
   event 0 rejection here. Actual service global validity is assumed, no synthetic null handling.
   Original binding name preserved. */

void __cdecl ScriptCore_UIManager__UIManager_RegisterEventImpl(uint windowHandle,uint eventType)

{
  int *piVar1;
  void *windowInterface;
  uint unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
    if (piVar1 != (int *)0x0) {
      windowInterface = (void *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (windowInterface != (void *)0x0) {
        UiScriptEventRegistry_Register(DAT_011d798c,windowInterface,unaff_retaddr);
      }
    }
  }
  return;
}

