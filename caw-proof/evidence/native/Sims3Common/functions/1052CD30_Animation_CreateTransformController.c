/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_CreateTransformController. Export
   ordinal(s): 3. Entry VA: 0x1052cd30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600065E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void Animation_CreateTransformController(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  undefined4 *puVar3;
  
                    /* 0x52cd30  3  Animation_CreateTransformController */
  iVar2 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar2 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar2 != 0) {
      this_00 = (void *)FUN_10918eb0(0x48,"Animation/TransformController",0);
      if (this_00 == (void *)0x0) {
        puVar3 = (undefined4 *)0x0;
      }
      else {
        puVar3 = FUN_103681f0(this_00,iVar2 + 8);
        if (puVar3 != (undefined4 *)0x0) {
          puVar3[1] = puVar3[1] + 1;
        }
      }
      (**(code **)(*(int *)(iVar2 + 8) + 0x14))(15000,puVar3,2,DAT_10aae184,DAT_10aae184,1,0,0,0);
      if ((puVar3 != (undefined4 *)0x0) &&
         (iVar2 = puVar3[1], puVar3[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
      }
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

