/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156818 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_ResetTextureImpl [assembly=ScriptCore token=0x060003A8;
   scriptHandle: System.UInt64, bAllOfType: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_ResetTextureImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  void *this;
  void *this_00;
  void *pvVar1;
  int *piVar2;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  this = ObjectRegistry_GetGlobal();
  if (((this != (void *)0x0) &&
      (this_00 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1)), this_00 != (void *)0x0
      )) && (pvVar1 = Object_GetComponentByMask(this_00,DAT_011e9fc4), pvVar1 != (void *)0x0)) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    piVar2 = (int *)FUN_005455f0((int)pvVar1);
    local_10 = *piVar2;
    local_c = piVar2[1];
    local_8 = piVar2[2];
    local_4 = piVar2[3];
    if (param_3 == '\0') {
      FUN_005a9720(this_00,&local_10);
      return;
    }
    FUN_00938010(this,FUN_005a9720,(undefined *)0x0,&local_10);
  }
  return;
}

