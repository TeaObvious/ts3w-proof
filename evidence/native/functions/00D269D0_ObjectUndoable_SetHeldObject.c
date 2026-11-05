/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Nonnull object parameter is retained at command+58
   through874FB0. Resets byte+B4, invokes D25E60 and the existing category/property children,
   sets+54=3; sends428E0A3 throughB08D30 only on+DC zero, then increments+DC. AL success. This does
   not establish every deeper child predicate meaning. */

uint __thiscall ObjectUndoable_SetHeldObject(void *this,undefined4 *param_1)

{
  undefined4 *this_00;
  void *pvVar1;
  uint in_EAX;
  uint uVar2;
  int *piVar3;
  void *pvVar4;
  
  if (param_1 == (undefined4 *)0x0) {
    return in_EAX & 0xffffff00;
  }
  this_00 = (undefined4 *)((int)this + 0x58);
  FUN_00874fb0(this_00,param_1);
  *(undefined1 *)((int)this + 0xb4) = 0;
  FUN_00d25e60(this,param_1);
  uVar2 = ObjectCatalog_HasBuildableShellFlag((int)param_1);
  if ((char)uVar2 != '\0') {
    *(undefined1 *)((int)this + 0xda) = 1;
  }
  pvVar1 = (void *)*this_00;
  if (pvVar1 != (void *)0x0) {
    uVar2 = FUN_00b04530((int)pvVar1);
    if ((char)uVar2 != '\0') {
      piVar3 = (int *)FUN_0068f130((int)pvVar1);
      uVar2 = 0;
      if (piVar3 != (int *)0x0) {
        pvVar4 = (void *)(**(code **)(*piVar3 + 0xc))(0x90566b0e);
        uVar2 = 0;
        if (pvVar4 != (void *)0x0) {
          uVar2 = FUN_00b045b0(pvVar4,pvVar1,(int)pvVar1);
        }
      }
    }
  }
  *(undefined4 *)((int)this + 0x54) = 3;
  if (*(int *)((int)this + 0xdc) == 0) {
    uVar2 = FUN_00b08d30(0x428e0a3,(void *)*this_00);
  }
  *(int *)((int)this + 0xdc) = *(int *)((int)this + 0xdc) + 1;
  return CONCAT31((int3)(uVar2 >> 8),1);
}

