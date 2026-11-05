/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011638e8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_ShareDesignPresetImpl [assembly=ScriptCore
   token=0x0600081D; packageName: System.String, presetStr: System.String, presetDesc:
   System.String, subsort: System.UInt32, presetId: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_ShareDesignPresetImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  void *this;
  int *piVar1;
  uint uVar2;
  LPCWSTR pWVar3;
  LPCWSTR pWVar4;
  short *unaff_ESI;
  
  this = (void *)FUN_00b302a0();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar2 = (**(code **)(*piVar1 + 0x58))(param_3,param_4,param_5);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar4 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  FUN_00b39580(this,pWVar4,unaff_ESI,pWVar3,param_1,uVar2);
  return;
}

