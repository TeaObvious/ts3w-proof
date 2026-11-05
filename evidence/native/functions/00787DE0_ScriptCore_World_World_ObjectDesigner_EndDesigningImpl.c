/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163840 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_EndDesigningImpl [assembly=ScriptCore token=0x0600080D;
   bSave: System.Boolean, presetStr: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_EndDesigningImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  short *psVar2;
  void *this;
  char unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
  this = (void *)ProductPresets_GetGlobalOwner();
  FUN_00b33610(this,unaff_retaddr,psVar2);
  return;
}

