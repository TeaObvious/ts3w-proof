/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst description; PC 1.67. Allocate 0x1B8 bytes of resource storage, initialize its
   header/vtable and zero 0x190 bytes at resource + 0x28 (decimal 100 UInt32 colors), then call
   resource virtual + 0x0. With a source, call the factory receiver virtual + 0x24 and test AL.
   Success publishes the allocated pointer through the output only after load; failed load invokes
   resource virtual + 0x4 and returns AL = 0. Null-source branch publishes the initialized
   zero-color resource without invoking the loader. Allocation failure calls source virtual + 0x20
   and returns AL = 0; that branch has no inferred null-source safety guarantee. ECX receiver plus
   four stack DWORD slots, RET 0x10; preserve the current inferred prototype, using AL as status.
   Exact downstream release/reference ownership is not inferred from virtual names. */

undefined4 __thiscall
ColorPickerSwatches_AllocateAndLoadResource
          (void *this,int *param_1,undefined4 *param_2,undefined4 param_3,int param_4)

{
  char cVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *unaff_EBP;
  
  if ((param_4 == -1) && (param_1 != (int *)0x0)) {
    iVar2 = (**(code **)(*param_1 + 0x10))();
    param_4 = *(int *)(iVar2 + 8);
  }
  piVar3 = (int *)FUN_004e4500(0x1b8,"UI/ColorPickerSwatchResource",0);
  if (piVar3 == (int *)0x0) {
    uVar5 = (**(code **)(*param_1 + 0x20))();
    return uVar5 & 0xffffff00;
  }
  *piVar3 = (int)&PTR_FUN_00fb3c14;
  LOCK();
  piVar3[1] = 0;
  UNLOCK();
  piVar3[2] = 0;
  piVar3[3] = 0;
  piVar3[4] = 0;
  piVar3[5] = 0;
  piVar3[8] = 0;
  piVar3[9] = 0;
  piVar3[7] = 0;
  piVar3[6] = 0;
  *piVar3 = (int)&PTR_FUN_0101c5a8;
  memset(piVar3 + 10,0,400);
  uVar4 = (**(code **)*piVar3)();
  if (param_1 == (int *)0x0) {
    *param_2 = piVar3;
    return CONCAT31((int3)((uint)uVar4 >> 8),1);
  }
  cVar1 = (**(code **)(*(int *)this + 0x24))(param_1,piVar3,param_3,param_4);
  if (cVar1 != '\0') {
    *unaff_EBP = piVar3;
    return CONCAT31((int3)((uint)unaff_EBP >> 8),1);
  }
  uVar5 = (**(code **)(*piVar3 + 4))();
  return uVar5 & 0xffffff00;
}

