/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, PC1.67 static; role label, not recovered symbol. Primary Slider vtableFBFF88
   slot24. Physical thiscall ECX complete window, one draw-context stack word, RET4; normal exits
   AL1, upper return bits unspecified. If complete+204 drawable is nonnull, call primary virtualA4
   in exact order0,2,1 with original context/component. Reload vtable before every call; callbacks
   may affect following targets. Null drawable instead calls original base Window514640 with same
   context. No frontend texture lookup or child/caption rendering is invented by this local body. */

bool __thiscall UiSlider_DrawComponents(void *this,void *drawContext)

{
  if (*(int *)((int)this + 0x204) == 0) {
    UiWindow_DrawSelf(this,drawContext);
    return true;
  }
  (**(code **)(*(int *)this + 0xa4))(drawContext,0);
  (**(code **)(*(int *)this + 0xa4))(drawContext,2);
  (**(code **)(*(int *)this + 0xa4))(drawContext,1);
  return true;
}

