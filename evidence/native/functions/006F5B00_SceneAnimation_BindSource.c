/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 scene source binding and real downstream geometry consumers. ECX scene component,
   one source pointer, RET04. For nonnull source reuse component+298 or allocate0x50 bytes and
   initialize through00574200. Retain source through its actual virtual0 before dispatching
   render-state virtual0; the initializer vtable FC3D90 resolves that slot to00574120, which
   consumes the temporary retained reference. Only a newly allocated state is handed to006F4F70;
   existing identical state bypasses that unique-owner replacement. Mark dirty through00573420.
   Independently propagate the source (including null) through006DB570 on component+210; nonnull
   source resolves transformBone through00576040 and stores the result at+2BC. No missing-source
   fallback rig, GPU readiness or current GUID/generation policy is inferred. Null allocation
   failure is not converted into a success by this body. */

void __thiscall SceneAnimation_BindSource(void *this,undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  if (param_1 != (undefined4 *)0x0) {
    puVar1 = *(undefined4 **)((int)this + 0x298);
    if (puVar1 == (undefined4 *)0x0) {
      puVar1 = (undefined4 *)FUN_004e4500(0x50,"Animation/RenderState",0);
      if (puVar1 == (undefined4 *)0x0) {
        puVar1 = (undefined4 *)0x0;
      }
      else {
        puVar1 = (undefined4 *)AnimationRenderState_InitializeStorage(puVar1);
      }
    }
                    /* Actual source virtual0 creates the temporary retained input consumed by
                       render-state virtual0 next. */
    (**(code **)*param_1)(param_1);
                    /* Initialized FC3D90 slot0 is00574120: consumes temporary retained source after
                       own conditional retain/assign/release. */
    (**(code **)*puVar1)();
    if (puVar1 != *(undefined4 **)((int)this + 0x298)) {
      SceneAnimation_ReplaceOwnedRenderState(this,(int)puVar1);
    }
    FUN_00573420((int)puVar1);
  }
  SceneGeometrySources_ReplaceBoundSource((void *)((int)this + 0x210),param_1);
  if (param_1 != (undefined4 *)0x0) {
    uVar2 = FUN_00576040(param_1 + 10,(byte *)"transformBone");
    *(undefined4 *)((int)this + 700) = uVar2;
  }
  return;
}

