/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Fetches global render-device context; selects first technique if selected pointer
   is null, otherwise uses selected technique, then ApplyPassesAndDraw(callback,userdata).
   
   Skin-comparison refinement: ECX definition, RET8. Resolves default/selected technique, obtains
   the render device, then dispatches its pass loop. Analyst partial types/names; unknown fields
   remain opaque. */

void __thiscall
ShaderDefinition_DrawSelectedTechnique
          (Ts3SkinPostDefinition *self,Ts3SkinPostDrawCallback *drawCallback,void *userData)

{
  void *renderDevice;
  
  renderDevice = (void *)Graphics_GetManagerSingleton();
  if (self->selectedTechnique == (Ts3SkinPostTechnique *)0x0) {
    if (self->techniques == (Ts3SkinPostTechnique *)0x0) {
      return;
    }
    self->selectedTechnique = self->techniques;
  }
  ShaderTechnique_ApplyPassesAndDraw(self->selectedTechnique,renderDevice,drawCallback,userData);
  return;
}

