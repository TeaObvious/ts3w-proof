/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Fetches global render-device context; selects first technique if selected pointer
   is null, otherwise uses selected technique, then ApplyPassesAndDraw(callback,userdata). */

void __thiscall
ShaderDefinition_DrawSelectedTechnique(void *this,undefined *param_1,undefined4 param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)FUN_0060e910();
  if (*(int *)((int)this + 0x10) == 0) {
    if (*(int *)((int)this + 8) == 0) {
      return;
    }
    *(int *)((int)this + 0x10) = *(int *)((int)this + 8);
  }
  ShaderTechnique_ApplyPassesAndDraw(*(void **)((int)this + 0x10),pvVar1,param_1,param_2);
  return;
}

