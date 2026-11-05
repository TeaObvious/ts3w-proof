/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 scene-pass dispatcher. Physical ECX receiver, no stack arguments, RET.
   Receiver+29D byte gates the whole selected path. Preparation is synchronous when +28F is zero;
   otherwise the selected +310/+314/+320 jobs are waited using their existing gates. After
   preparation, stage0 precedes SceneRenderer_RenderShadowMap006EBF50; precipitation006EC6D0 is a
   separate following call, then006F1220 and rain ripples006E9EF0. No previous-matrix/scene-identity
   cache decision appears in this complete dispatcher. Children and other entry points remain
   separate; this does not prove absence of every native cache.
   
   Analyst skin comparison: If single-pass is false, UV lighting then filter precede the final scene
   draw. Existing complete dispatcher annotations retained above. Physical ABI: ECX receiver; 0
   DWORD stack arguments. Analyst names/types, not original symbols; unknown members remain opaque.
    */

void __thiscall SceneRenderer_ExecutePreparedPasses(Ts3SkinSceneRenderer *self)

{
  undefined *puVar1;
  
  if (self->field_0x29d != '\0') {
    if (*(int *)&self->field_0x294 != 0) {
      FUN_006edb00((int)self);
    }
    if (self->field_0x28f == '\0') {
      FUN_006ebcc0(self);
      FUN_006f1990(self);
      FUN_006ea0f0((int)self);
      FUN_006ebde0((int)self);
      FUN_006f1ba0(self);
    }
    else {
      if (self->field_0x28e != '\0') {
        Job_WaitUntilTerminal(*(void **)&self->field_0x310);
      }
      if (*(int *)&self->field_0x294 != 0) {
        Job_WaitUntilTerminal(*(void **)&self->field_0x314);
      }
      if (self->field_0x29c != '\0') {
        Job_WaitUntilTerminal(*(void **)&self->field_0x320);
      }
    }
    FUN_006e4390(*(int *)&self->field_0x8);
    if (*(int **)&self->field_0x2d4 != (int *)0x0) {
      (**(code **)(**(int **)&self->field_0x2d4 + 0x14))(0);
    }
    SceneRenderer_RenderShadowMap(self);
    TS3W_RenderPrecipitationShadow(self);
    FUN_006f1220(self);
    TS3W_UpdateRainRippleTargets((int)self);
    if (self->casSinglePassEnabled == false) {
      if (*(int **)&self->field_0x2d4 != (int *)0x0) {
        (**(code **)(**(int **)&self->field_0x2d4 + 0x14))(1);
      }
      SceneRenderer_DrawCasLightMap(self);
      if (*(int **)&self->field_0x2d4 != (int *)0x0) {
        (**(code **)(**(int **)&self->field_0x2d4 + 0x14))(2);
      }
      SceneRenderer_FilterCasLightMap(self);
    }
    if (*(int **)&self->field_0x2d4 != (int *)0x0) {
      (**(code **)(**(int **)&self->field_0x2d4 + 0x14))(3);
    }
    puVar1 = FUN_009e3b80();
    puVar1[0x5d0] = 1;
  }
  return;
}

