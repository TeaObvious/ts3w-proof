/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall material pointer RET4, guarded by
   pointer inequality. Retains incoming via virtual0, interacts with model parameter binding
   atowner0+28, releases old via virtual4, assignsowner+30. Original detach-helper argument is
   derived from INCOMING pointer+28 orNULL, not old pointer; preserved in actual C. Helper
   semantics/current shader position decode not inferred. */

void __thiscall RenderObject_SetOffsetScaleMaterial(void *this,void *material)

{
  int iVar1;
  
  if (material != *(void **)((int)this + 0x30)) {
    if (material != (void *)0x0) {
      (*(code *)**(undefined4 **)material)();
      if (*(int *)this != 0) {
        FUN_006dea80((void *)(*(int *)this + 0x28),(int)material + 0x28);
      }
    }
    if (*(int *)((int)this + 0x30) != 0) {
      if (*(int *)this != 0) {
        if (material == (void *)0x0) {
          iVar1 = 0;
        }
        else {
          iVar1 = (int)material + 0x28;
        }
        FUN_006deb00((void *)(*(int *)this + 0x28),iVar1);
      }
      (**(code **)(**(int **)((int)this + 0x30) + 4))();
    }
    *(void **)((int)this + 0x30) = material;
  }
  return;
}

