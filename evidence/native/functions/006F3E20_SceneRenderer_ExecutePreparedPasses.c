/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 scene-pass dispatcher. Physical ECX receiver, no stack arguments, RET.
   Receiver+29D byte gates the whole selected path. Preparation is synchronous when +28F is zero;
   otherwise the selected +310/+314/+320 jobs are waited using their existing gates. After
   preparation, stage0 precedes SceneRenderer_RenderShadowMap006EBF50; precipitation006EC6D0 is a
   separate following call, then006F1220 and rain ripples006E9EF0. No previous-matrix/scene-identity
   cache decision appears in this complete dispatcher. Children and other entry points remain
   separate; this does not prove absence of every native cache. */

void __fastcall SceneRenderer_ExecutePreparedPasses(void *param_1)

{
  undefined *puVar1;
  
  if (*(char *)((int)param_1 + 0x29d) != '\0') {
    if (*(int *)((int)param_1 + 0x294) != 0) {
      FUN_006edb00((int)param_1);
    }
    if (*(char *)((int)param_1 + 0x28f) == '\0') {
      FUN_006ebcc0(param_1);
      FUN_006f1990(param_1);
      FUN_006ea0f0((int)param_1);
      FUN_006ebde0((int)param_1);
      FUN_006f1ba0(param_1);
    }
    else {
      if (*(char *)((int)param_1 + 0x28e) != '\0') {
        Job_WaitUntilTerminal(*(void **)((int)param_1 + 0x310));
      }
      if (*(int *)((int)param_1 + 0x294) != 0) {
        Job_WaitUntilTerminal(*(void **)((int)param_1 + 0x314));
      }
      if (*(char *)((int)param_1 + 0x29c) != '\0') {
        Job_WaitUntilTerminal(*(void **)((int)param_1 + 800));
      }
    }
    FUN_006e4390(*(int *)((int)param_1 + 8));
    if (*(int **)((int)param_1 + 0x2d4) != (int *)0x0) {
      (**(code **)(**(int **)((int)param_1 + 0x2d4) + 0x14))(0);
    }
    SceneRenderer_RenderShadowMap(param_1);
    TS3W_RenderPrecipitationShadow(param_1);
    FUN_006f1220(param_1);
    TS3W_UpdateRainRippleTargets((int)param_1);
    if (*(char *)((int)param_1 + 0x27b) == '\0') {
      if (*(int **)((int)param_1 + 0x2d4) != (int *)0x0) {
        (**(code **)(**(int **)((int)param_1 + 0x2d4) + 0x14))(1);
      }
      FUN_006ecf30(param_1);
      if (*(int **)((int)param_1 + 0x2d4) != (int *)0x0) {
        (**(code **)(**(int **)((int)param_1 + 0x2d4) + 0x14))(2);
      }
      FUN_006e9cc0((int)param_1);
    }
    if (*(int **)((int)param_1 + 0x2d4) != (int *)0x0) {
      (**(code **)(**(int **)((int)param_1 + 0x2d4) + 0x14))(3);
    }
    puVar1 = FUN_009e3b80();
    puVar1[0x5d0] = 1;
  }
  return;
}

