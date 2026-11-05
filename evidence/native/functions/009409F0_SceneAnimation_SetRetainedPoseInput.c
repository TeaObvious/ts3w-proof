/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 actual selected render-state creation and retained-input producer. Physical cdecl
   four stack DWORDs, plain RET; first two are passed to original scene lookup, third to0054C380
   resource resolution, fourth is a nullable retained input. Entry atomically retains the fourth
   input and final cleanup atomically releases it. Query resolved scene interface virtual0C
   with17F1D88, then borrow state through006F48E0. Missing state may resolve the third input,
   allocate0x50 bytes and initialize/bind source via actual vtable slot0, invoke006F5B00 and
   transfer the selected state through006F4F70. Resolved source virtual4 release follows.
   Finally005741B0 replaces the retained input,00573420 marks dirty and00573F80 clears cached poses.
   Existing inferred this/stack expressions and opaque selector/resource kinds are not a recovered
   host model-key API. Do not infer host shared-lease or generation parity, allocator failure
   recovery, or omit the original source-binding/replacement order. */

void __cdecl
SceneAnimation_SetRetainedPoseInput
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int *param_4)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  void *this;
  undefined4 *puVar4;
  
  piVar1 = param_4;
  if (param_4 != (int *)0x0) {
    LOCK();
    param_4[1] = param_4[1] + 1;
    UNLOCK();
  }
  iVar2 = FUN_006fdbe0();
  if (iVar2 != 0) {
    piVar3 = (int *)FUN_006fe120(iVar2);
    if (piVar3 != (int *)0x0) {
      this = (void *)(**(code **)(*piVar3 + 0xc))();
      if (this != (void *)0x0) {
        piVar3 = (int *)SceneAnimation_GetRenderState((int)this);
        if (piVar3 == (int *)0x0) {
          param_4 = piVar3;
          FUN_0054c380(param_3,(int *)&param_4);
          if (param_4 != (int *)0x0) {
            puVar4 = (undefined4 *)FUN_004e4500(0x50,"Animation/RenderState",0);
            if (puVar4 == (undefined4 *)0x0) {
              piVar3 = (int *)0x0;
            }
            else {
              piVar3 = (int *)AnimationRenderState_InitializeStorage(puVar4);
            }
            puVar4 = (undefined4 *)*piVar3;
            FUN_005a9550(&stack0xffffffec,(int *)&param_4);
            (*(code *)*puVar4)();
            SceneAnimation_BindSource(this,param_4);
            SceneAnimation_ReplaceOwnedRenderState(this,(int)piVar3);
            if (param_4 != (int *)0x0) {
              (**(code **)(*param_4 + 4))();
            }
          }
        }
        AnimationRenderState_ReplaceRetainedInput(piVar3,piVar1);
        FUN_00573420((int)piVar3);
        AnimationPoseCache_Clear((int)piVar3);
      }
    }
  }
  if (piVar1 != (int *)0x0) {
    piVar3 = piVar1 + 1;
    LOCK();
    iVar2 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      (**(code **)*piVar1)();
    }
  }
  return;
}

