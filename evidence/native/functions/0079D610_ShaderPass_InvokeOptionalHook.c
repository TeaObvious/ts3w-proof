/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: Pass key0 means no hook and AL0. Otherwise invokes7a-library hook and returns
   AL1; draw callback is skipped for this pass regardless of hook return.
   
   Skin-comparison refinement: ECX pass, one ignored DWORD stack argument RET4; only AL is defined.
   Key zero returns false; nonzero invokes post geometry and returns true regardless of whether its
   global vertex buffer exists. Previous fastcall prototype hid stack cleanup. Analyst partial
   types/names; unknown fields remain opaque. */

bool __thiscall ShaderPass_InvokeOptionalHook(Ts3SkinPostPass *self,void *unusedRenderDevice)

{
  if (self->geometryHookKey == 0) {
    return false;
  }
  ShaderHook_DrawPostGeometry(self->geometryHookKey);
  return true;
}

