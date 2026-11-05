/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role/contract. ECX driver, actor definition stack pointer, RET4. Allocates28hex
   ActorInst, base flags40000001, definition pointer+20 and interrupt bytes24/25 zero;
   allocatesB8hex walker through8039E0, retains/replaces entity reference at walker+8 and appends
   an8-byte actor-hash/walker binding using definition hash+2C. Allocation-failure dereferences are
   preserved original behavior, not safe-null returns. Not a managed constructor or independent
   actor dictionary ABI. */

void __thiscall SacsDriver_CreateDefinedActorWalker(void *this,int param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  void *this_00;
  void *pvVar4;
  undefined4 local_8;
  void *local_4;
  
  pvVar4 = (void *)0x0;
  piVar3 = (int *)FUN_004e4500(0x28,"SACS/StateMachineDriver/Walker/ActorInst",0);
  if (piVar3 == (int *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    *piVar3 = (int)&PTR_LAB_00ff4a78;
    LOCK();
    piVar3[1] = 0;
    UNLOCK();
    piVar3[2] = (int)&PTR_LAB_00fa2b8c;
    piVar3[3] = 0x40000001;
    piVar3[4] = 0;
    piVar3[5] = 0;
    piVar3[6] = 0;
    *piVar3 = (int)&PTR_FUN_01021034;
    piVar3[2] = (int)&PTR_LAB_01021024;
    piVar3[8] = param_1;
    *(undefined1 *)(piVar3 + 9) = 0;
    *(undefined1 *)((int)piVar3 + 0x25) = 0;
  }
  this_00 = (void *)FUN_004e4500(0xb8,"SACS/StateMachineDriver/Walker",0);
  if (this_00 != (void *)0x0) {
    pvVar4 = FUN_008039e0(this_00,this);
  }
  piVar1 = *(int **)((int)pvVar4 + 8);
  if (piVar3 != piVar1) {
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
    }
    *(int **)((int)pvVar4 + 8) = piVar3;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  local_8 = *(undefined4 *)(param_1 + 0x2c);
  puVar2 = *(undefined4 **)((int)this + 0x14);
  if (puVar2 < *(undefined4 **)((int)this + 0x18)) {
    *(undefined4 **)((int)this + 0x14) = puVar2 + 2;
    if (puVar2 != (undefined4 *)0x0) {
      puVar2[1] = pvVar4;
      *puVar2 = local_8;
      return;
    }
  }
  else {
    local_4 = pvVar4;
    FUN_0040c540((void *)((int)this + 0x10),puVar2,&local_8);
  }
  return;
}

