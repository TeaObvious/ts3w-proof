/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_GetOutfitInGameObjectImpl [assembly=ScriptCore token=0x0600033A;
   scriptHandle: System.UInt64; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl ScriptCore.CASUtils::CASUtils_GetOutfitInGameObjectImpl(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar5 = 0;
  uVar4 = 0;
  local_8 = 0;
  local_4 = 0;
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_0000000c,in_stack_00000008));
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011ea0fc);
    if (pvVar3 != (void *)0x0) {
      local_8 = *(undefined4 *)((int)pvVar3 + 0x10);
      local_4 = *(undefined4 *)((int)pvVar3 + 0x14);
      uVar4 = *(undefined4 *)((int)pvVar3 + 0x18);
      uVar5 = *(undefined4 *)((int)pvVar3 + 0x1c);
    }
  }
  *param_1 = uVar4;
  param_1[1] = uVar5;
  param_1[2] = local_8;
  param_1[3] = local_4;
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return param_1;
}

