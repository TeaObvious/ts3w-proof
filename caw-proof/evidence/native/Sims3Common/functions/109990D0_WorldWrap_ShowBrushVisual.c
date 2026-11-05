/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ShowBrushVisual. Export ordinal(s):
   2714. Entry VA: 0x109990d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004FC. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_ShowBrushVisual(int param_1,char param_2)

{
  void *this;
  void *pvVar1;
  
                    /* 0x9990d0  2714  WorldWrap_ShowBrushVisual */
  this = *(void **)(param_1 + 0x70);
  if (this != (void *)0x0) {
    pvVar1 = (void *)FUN_10409fe0(param_1);
    FUN_101f40c0(this,pvVar1,param_2);
  }
  return;
}

