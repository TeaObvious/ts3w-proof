/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetSunDirection. Export ordinal(s):
   2285. Entry VA: 0x1098e6e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000138. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
SceneManWrap_SetSunDirection(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *this;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x98e6e0  2285  SceneManWrap_SetSunDirection */
  this = (void *)FUN_104de430(param_1);
  if (this != (void *)0x0) {
    local_20 = param_2;
    uStack_1c = param_3;
    uStack_18 = param_4;
    uStack_14 = param_2;
    FUN_104a38f0(this,&local_20,(float *)((int)this + 0x130),'\x01');
  }
  return;
}

