/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original PC1.67 ModelLODClone allocation/copy wrapper. Allocates0x80, initializes/retains the
   clone, then calls6DAE80 on the source and clone. Copy refusal releases the temporary clone and
   returns AL0 before writing the output. If a substitution descriptor is supplied, calls6DB170 with
   clone destination and original source; then writes the clone output and returns AL1. Other EAX
   bits are not normalized. No eager host-range publication equivalence is implied. */

int __thiscall
ModelLOD_CloneWithMaterialSubstitutions
          (void *this,undefined4 *param_1,int *param_2,undefined4 *param_3)

{
  bool bVar1;
  undefined4 *puVar2;
  int *destinationLod;
  uint3 extraout_var;
  uint3 extraout_var_00;
  uint3 uVar4;
  undefined4 uVar3;
  
  puVar2 = (undefined4 *)FUN_004e4500(0x80,"Renderer/ModelLODClone",0);
  if (puVar2 == (undefined4 *)0x0) {
    destinationLod = (int *)0x0;
  }
  else {
    destinationLod = FUN_006dade0(puVar2);
    if (destinationLod != (int *)0x0) {
      (**(code **)*destinationLod)();
    }
  }
  bVar1 = ModelLOD_CopyDrawablesForMaterialClone(this,destinationLod);
  if (bVar1) {
    uVar3 = 0;
    if (param_2 != (int *)0x0) {
      uVar3 = ModelLOD_ApplyMaterialSubstitutions(destinationLod,(int)this,param_2,param_3);
    }
    *param_1 = destinationLod;
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  uVar4 = extraout_var;
  if (destinationLod != (int *)0x0) {
    (**(code **)(*destinationLod + 4))();
    uVar4 = extraout_var_00;
  }
  return (uint)uVar4 << 8;
}

