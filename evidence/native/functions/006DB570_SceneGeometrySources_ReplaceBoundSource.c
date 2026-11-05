/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 actual geometry-source propagation consumer. ECX geometry-source pair (scene
   component+210 in006F5B00), one source pointer, RET04. Release old+38 source through virtual4
   BEFORE assigning/retaining incoming source via virtual0; no same-pointer guard. Then each real
   untagged nonnull child source at+0 and+8 receives the incoming value through006D05C0/006DABA0.
   Low two pointer-tag bits select admission; concrete child implementations stay separate.
   Caller006F5B00 supplies its original lifetime ordering. This selected consumer is not the current
   managed resident object-map or GPU packet selector. */

void __thiscall SceneGeometrySources_ReplaceBoundSource(void *this,undefined4 *param_1)

{
  if (*(int **)((int)this + 0x38) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x38) + 4))();
  }
  *(undefined4 **)((int)this + 0x38) = param_1;
  if (param_1 != (undefined4 *)0x0) {
    (**(code **)*param_1)();
  }
  if (((*(uint *)this & 3) == 0) && (*(void **)this != (void *)0x0)) {
    FUN_006d05c0(*(void **)this,(int)param_1);
  }
  if (((*(uint *)((int)this + 8) & 3) == 0) && (*(int *)((int)this + 8) != 0)) {
    FUN_006daba0(*(void **)((int)this + 8),(int)param_1);
  }
  return;
}

