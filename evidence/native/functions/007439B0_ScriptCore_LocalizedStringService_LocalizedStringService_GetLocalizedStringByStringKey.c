/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161290 (original PC 1.67 TS3W.exe).
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedStringByStringKey [managed
   declarations=0; exact native prototype unresolved]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_LocalizedStringService__LocalizedStringService_GetLocalizedStringByStringKey
               (undefined4 param_1)

{
  int *piVar1;
  wchar_t *pwVar2;
  void *this;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pwVar2 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1);
  this = (void *)FUN_0059b7b0();
  FUN_0059d1a0(this,pwVar2);
  return;
}

