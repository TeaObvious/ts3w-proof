/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011877d0 (original PC 1.67 TS3W.exe).
   ScriptCore.CTProductModularObject::CTProductModularObject_GetModularObjectTypeImpl
   [assembly=ScriptCore token=0x06000CE6; handle: System.UInt32; return=System.UInt16]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.CTProductModularObject::CTProductModularObject_GetModularObjectTypeImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x54000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar1 = 0;
    if (piVar2 != (int *)0x0) {
      uVar1 = (**(code **)(*piVar2 + 0xcc))(param_1);
      if (uVar1 == 0) {
        return (uint)_DAT_00000038;
      }
    }
  }
  return uVar1 & 0xffff0000;
}

