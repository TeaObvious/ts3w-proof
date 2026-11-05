/* Verified PC 1.67 registration table at 0x01156418 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderSetFacialBlendImpl [assembly=ScriptCore token=0x0600032C;
   handle: System.UInt32, key: Sims3.SimIFace.ResourceKey, amount: System.Single;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.CASUtils::CASUtils_SimBuilderSetFacialBlendImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  void *this;
  int in_stack_00000014;
  int aiStack_c [3];
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (this != (void *)0x0) {
      uVar1 = SimBuilder_SetFacialBlend(this,aiStack_c + -2,in_stack_00000014);
      return uVar1;
    }
  }
  return uVar1;
}
