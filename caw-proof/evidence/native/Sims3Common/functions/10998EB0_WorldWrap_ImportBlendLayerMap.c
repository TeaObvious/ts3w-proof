/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ImportBlendLayerMap. Export ordinal(s):
   2666. Entry VA: 0x10998eb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004DA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_ImportBlendLayerMap(int param_1,byte param_2,wchar_t *param_3)

{
  char cVar1;
  void *this;
  
                    /* 0x998eb0  2666  WorldWrap_ImportBlendLayerMap */
  if (*(int *)(param_1 + 0x54) == 0) {
    return 0;
  }
  this = (void *)FUN_106b6a50(*(int *)(param_1 + 0x54));
  if (this != (void *)0x0) {
    cVar1 = FUN_101f2410(this,param_2,param_3,'\0');
    if (cVar1 != '\0') {
      FUN_101f0490((int)this);
      return 1;
    }
  }
  return 0;
}

