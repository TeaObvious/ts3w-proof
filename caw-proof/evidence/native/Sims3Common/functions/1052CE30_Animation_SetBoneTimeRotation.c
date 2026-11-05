/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_SetBoneTimeRotation. Export ordinal(s):
   16. Entry VA: 0x1052ce30. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600065F. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Animation_SetBoneTimeRotation
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *pvVar3;
  
                    /* 0x52ce30  16  Animation_SetBoneTimeRotation */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar3 = (void *)FUN_10726da0(this,DAT_10c80cc4);
    if (((pvVar3 != (void *)0x0) && (iVar2 = FUN_1072eff0(pvVar3,15000), iVar2 != 0)) &&
       (pvVar3 = (void *)(**(code **)(*(int *)(iVar2 + 8) + 4))(0x664fb68), pvVar3 != (void *)0x0))
    {
      FUN_10369030(pvVar3,param_3,param_4);
    }
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
  return;
}

