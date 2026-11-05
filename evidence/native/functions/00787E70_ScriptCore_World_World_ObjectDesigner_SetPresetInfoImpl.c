/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163960 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_SetPresetInfoImpl [assembly=ScriptCore token=0x06000830;
   scriptHandle: System.UInt64, presetXml: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_SetPresetInfoImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined4 unaff_retaddr;
  
  iVar1 = FUN_00b302a0();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_3);
    FUN_00b31ea0(unaff_retaddr,param_1,pWVar3);
  }
  return;
}

