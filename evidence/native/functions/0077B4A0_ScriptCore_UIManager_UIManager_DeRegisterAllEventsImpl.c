/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_DeRegisterAllEventsImpl [assembly=ScriptCore token=0x06000E26;
   winHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Original DeRegisterAllEvents: one stack DWORD and plain RET
   / cdecl. Kind30/handleCC/interface0C(EEEE8218) admission then forward IWindow to7421D0
   on011D798C. This removes a real window procedure, whose1001 callback can run before registry
   retirement; not simply a CLR map erase. Original name/annotations preserved. */

void __cdecl ScriptCore_UIManager__UIManager_DeRegisterAllEventsImpl(uint windowHandle)

{
  int *piVar1;
  void *windowInterface;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
    if (piVar1 != (int *)0x0) {
      windowInterface = (void *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (windowInterface != (void *)0x0) {
        UiScriptEventRegistry_UnregisterAll(DAT_011d798c,windowInterface);
      }
    }
  }
  return;
}

