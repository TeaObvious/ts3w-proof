/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   World_ObjectDesigner_CreateDesignPresetThumbnailImpl. Export ordinal(s): 1474. Entry VA:
   0x1057b430. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C72. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
World_ObjectDesigner_CreateDesignPresetThumbnailImpl(uint param_1,int param_2,int param_3)

{
  void *this;
  int *piVar1;
  size_t sStack_10;
  void *pvStack_c;
  size_t sStack_8;
  void *pvStack_4;
  
  this = (void *)FUN_100f8460();
  piVar1 = (int *)FUN_1055b120();
  sStack_8 = 0;
  pvStack_4 = (void *)0x0;
  if (param_2 != 0) {
    (**(code **)(*piVar1 + 0x70))(param_2,&pvStack_4,&sStack_8);
  }
  sStack_10 = 0;
  pvStack_c = (void *)0x0;
  if (param_3 != 0) {
    (**(code **)(*piVar1 + 0x70))(param_3,&pvStack_c,&sStack_10);
  }
  FUN_100fc730(this,param_1,pvStack_4,sStack_8,pvStack_c,sStack_10);
  return;
}

