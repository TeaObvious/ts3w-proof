/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ShowChunkBoundaries. Export ordinal(s):
   2715. Entry VA: 0x10999160. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000500. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_ShowChunkBoundaries(int param_1,char param_2)

{
  void *this;
  
                    /* 0x999160  2715  WorldWrap_ShowChunkBoundaries */
  this = (void *)FUN_10409fe0(param_1);
  if (this != (void *)0x0) {
    FUN_10258b60(this,param_2);
    if ((param_2 != '\0') && (*(void **)(param_1 + 0x6c) != (void *)0x0)) {
      FUN_102001c0(*(void **)(param_1 + 0x6c));
      return;
    }
  }
  return;
}

