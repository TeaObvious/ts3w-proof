/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564e0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetOutfitInGameObjectImpl [assembly=ScriptCore token=0x0600033A;
   scriptHandle: System.UInt64; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl ScriptCore.CASUtils::CASUtils_GetOutfitInGameObjectImpl(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar4 = 0;
  uVar3 = 0;
  local_8 = 0;
  local_4 = 0;
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    iVar2 = FUN_00934260(this,DAT_011ea0fc);
    if (iVar2 != 0) {
      local_8 = *(undefined4 *)(iVar2 + 0x10);
      local_4 = *(undefined4 *)(iVar2 + 0x14);
      uVar3 = *(undefined4 *)(iVar2 + 0x18);
      uVar4 = *(undefined4 *)(iVar2 + 0x1c);
    }
  }
  *param_1 = uVar3;
  param_1[1] = uVar4;
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

