/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationWrap_GetClipIkInfo. Export ordinal(s):
   1669. Entry VA: 0x1097d090. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600030E. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void * __cdecl AnimationWrap_GetClipIkInfo(int param_1)

{
  undefined4 *puVar1;
  void *this;
  
                    /* 0x97d090  1669  AnimationWrap_GetClipIkInfo */
  if (param_1 != 0) {
    puVar1 = (undefined4 *)FUN_10918eb0(0xe0,"CSHost/ClipIkInfo",0);
    if (puVar1 == (undefined4 *)0x0) {
      this = (void *)0x0;
    }
    else {
      this = (void *)FUN_10375200(puVar1);
    }
    FUN_103757f0(this,*(int *)(param_1 + 0x4c),10);
    return this;
  }
  return (void *)0x0;
}

