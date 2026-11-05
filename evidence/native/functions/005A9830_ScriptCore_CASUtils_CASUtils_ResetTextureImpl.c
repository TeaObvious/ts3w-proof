/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156818 (original PC 1.67 TS3W.exe).
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
  int iVar1;
  int *piVar2;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  this = (void *)FUN_00937570();
  if (((this != (void *)0x0) && (this_00 = (void *)FUN_00937f80((int)this), this_00 != (void *)0x0))
     && (iVar1 = FUN_00934260(this_00,DAT_011e9fc4), iVar1 != 0)) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    piVar2 = (int *)FUN_005455f0(iVar1);
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

