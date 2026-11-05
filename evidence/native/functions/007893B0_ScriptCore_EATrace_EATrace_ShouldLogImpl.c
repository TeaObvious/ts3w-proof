/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* [Context] Operating on: TS3W.exe
   
   Verified PC 1.67 registration table at 0x01161178, 0x011638f0, 0x01197240 (original PC 1.67 TS3W.exe).
   ScriptCore.EATrace::EATrace_ShouldLogImpl [assembly=ScriptCore token=0x060005FE; level:
   System.Int32, pGroup: System.String; return=System.Boolean]
   ScriptCore.World::World_ObjectDesigner_SaveCurrentPresetAsXmlImpl [assembly=ScriptCore
   token=0x0600081E; presetName: System.String, presetStr: System.String; return=System.Boolean]
   ScriptCore.GameUtils::GameUtils_IsCallstackProfilingEnabled [assembly=ScriptCore
   token=0x0600025A; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.GameUtils::GameUtils_IsPreExistingInstallation at 0x00ec10e0, bytes e9cb828cff. This
   is a static control-flow link from the registered entry; the target may have other callers and
   its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined1 ScriptCore.EATrace::EATrace_ShouldLogImpl(void)

{
  return 0;
}

