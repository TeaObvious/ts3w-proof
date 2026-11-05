/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163850 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetCurrentPatternTypeImpl [assembly=ScriptCore
   token=0x06000811; ; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_ObjectDesigner_GetCurrentPatternTypeImpl(void)

{
  int iVar1;
  
  iVar1 = ProductPresets_GetGlobalOwner();
  if (*(int *)(iVar1 + 0xa4) == 0) {
    return 0;
  }
  return *(undefined4 *)(*(int *)(iVar1 + 0xa4) + 0x88);
}

