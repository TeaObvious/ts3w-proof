/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 ModelLODClone allocation/copy wrapper. Allocates0x80, initializes/retains the
   clone, then calls6DAE80 on the source and clone. Copy refusal releases the temporary clone and
   returns AL0 before writing the output. If a substitution descriptor is supplied, calls6DB170 with
   clone destination and original source; then writes the clone output and returns AL1. Other EAX
   bits are not normalized. No eager host-range publication equivalence is implied. */

uint __thiscall
ModelLOD_CloneWithMaterialSubstitutions
          (void *this,undefined4 *param_1,int *param_2,undefined4 *param_3)

{
  undefined4 *puVar1;
  int *this_00;
  uint uVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_004e4500(0x80,"Renderer/ModelLODClone",0);
  if (puVar1 == (undefined4 *)0x0) {
    this_00 = (int *)0x0;
  }
  else {
    this_00 = FUN_006dade0(puVar1);
    if (this_00 != (int *)0x0) {
      (**(code **)*this_00)();
    }
  }
  uVar2 = FUN_006dae80(this,this_00);
  if ((char)uVar2 == '\0') {
    if (this_00 != (int *)0x0) {
      uVar2 = (**(code **)(*this_00 + 4))();
    }
    return uVar2 & 0xffffff00;
  }
  uVar3 = 0;
  if (param_2 != (int *)0x0) {
    uVar3 = ModelLOD_ApplyMaterialSubstitutions(this_00,(int)this,param_2,param_3);
  }
  *param_1 = this_00;
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

