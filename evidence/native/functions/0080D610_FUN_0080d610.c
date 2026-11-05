/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: Physical ECXpoint, parentObject stackword/RET4; invalid parent/Animation/binding returnsFFFFFFFF. Gets parent Animation via11DD484 and component+8 virtual+20, then tail575C80(binding+28, point+10). Moves point+10 into the stack argument. Return is resolved model bone index; current C/stdcall omits pointECX and its identifier input. No DB prototype repair. */

undefined4 FUN_0080d610(void *param_1)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(param_1,DAT_011dd484);
    if (pvVar1 != (void *)0x0) {
      iVar2 = (**(code **)(*(int *)((int)pvVar1 + 8) + 0x20))();
      if (iVar2 != 0) {
        uVar3 = FUN_00575c80(iVar2 + 0x28);
        return uVar3;
      }
    }
  }
  return 0xffffffff;
}
