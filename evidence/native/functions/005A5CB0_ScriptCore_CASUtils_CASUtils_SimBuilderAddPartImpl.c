/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562b8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl [managed declarations=2; exact native
   prototype unresolved]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl
          (uint param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  uint uVar2;
  uint uStack_14;
  undefined4 uStack_10;
  uint uStack_c;
  undefined4 uStack_8;
  
  uStack_14 = 0x5a5cb8;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) {
    uStack_14 = param_1;
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    piVar1 = (int *)0x0;
    if (this != (void *)0x0) {
      uStack_14 = param_3;
      uStack_c = param_1;
      uStack_10 = param_4;
      uStack_8 = param_2;
      uVar2 = FUN_005e5180(this,&uStack_14);
      return uVar2;
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

