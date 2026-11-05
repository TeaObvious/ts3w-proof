/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162da0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_RegisterCustomControlFactoryImpl [assembly=ScriptCore
   token=0x06000DEF; classID: System.UInt32, register: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Actual registration bridge: two caller-clean DWORD stack
   words, first UInt32 class identity and second tested ONLY by byte at entry ESP+8. Nonzero low
   byte calls007E2DD0, zero calls007E2C40; both full paths clean only their own pushed argument then
   plain RET. Managed binding returnsvoid. End00779690 excludes following padding. */

void __cdecl
ScriptCore_UIManager__UIManager_RegisterCustomControlFactoryImpl
          (uint classIdentity,uint registerWord)

{
  if ((char)registerWord != '\0') {
    UiCustomControlFactory_Register(classIdentity);
    return;
  }
  UiCustomControlFactory_Unregister(classIdentity);
  return;
}

