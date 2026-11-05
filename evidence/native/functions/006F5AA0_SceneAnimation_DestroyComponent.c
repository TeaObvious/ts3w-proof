/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 actual scene-animation component teardown and final native allocation owner.
   Physical ECX component, no stack arguments; tail-jumps006FD700 after cleanup. Install component
   vtable FFA840. If component+298 owns a render state, invoke complete00574050, free that
   allocation through004E44E0 and zero+298; a second explicit zero remains. Separately free
   optional+288 allocation, destroy geometry-source component at+210 through006DD080, then run
   actual base teardown006FD700. No current registry shared-model/IDisposable semantics, deferred
   GPU retirement or general failure cleanup guarantee follows from this whole native sequence. */

void __fastcall SceneAnimation_DestroyComponent(undefined4 *param_1)

{
  undefined4 *allocation;
  
  allocation = (undefined4 *)param_1[0xa6];
  *param_1 = &PTR_FUN_00ffa840;
  if (allocation != (undefined4 *)0x0) {
                    /* Complete render-state destructor precedes freeing its actual0x50 allocation
                       and clearing component+298. */
    AnimationRenderState_Destroy(allocation);
    Memory_FreeIfNonNull(allocation);
    param_1[0xa6] = 0;
  }
  param_1[0xa6] = 0;
  if ((void *)param_1[0xa2] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[0xa2]);
  }
  FUN_006dd080(param_1 + 0x84);
  FUN_006fd700(param_1);
  return;
}

