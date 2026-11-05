/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetRoutableSurfaceVisible. Export
   ordinal(s): 2707. Entry VA: 0x10998fa0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004ED. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_SetRoutableSurfaceVisible(int param_1)

{
  void *this;
  
                    /* 0x998fa0  2707  WorldWrap_SetRoutableSurfaceVisible */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0x54) != 0)) {
    this = (void *)FUN_106b6a50(*(int *)(DAT_10c700c4 + 0x54));
    if (this != (void *)0x0) {
      FUN_101f0860(this,param_1 != 0);
    }
  }
  return;
}

