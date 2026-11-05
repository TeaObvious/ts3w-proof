/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetSunColor. Export ordinal(s):
   2284. Entry VA: 0x1098e740. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000139. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SceneManWrap_SetSunColor(int param_1,uint param_2)

{
  void *this;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x98e740  2284  SceneManWrap_SetSunColor */
  this = (void *)FUN_104de430(param_1);
  if (this != (void *)0x0) {
    fStack_14 = (float)((int)param_2 >> 0x10 & 0xff);
    local_20 = fStack_14 * _DAT_10ab832c;
    fStack_1c = (float)((int)param_2 >> 8 & 0xff) * _DAT_10ab832c;
    fStack_18 = (float)(param_2 & 0xff) * _DAT_10ab832c;
    fStack_14 = fStack_14 * _DAT_10ab832c;
    FUN_104a38f0(this,(undefined4 *)((int)this + 0x140),&local_20,'\x01');
  }
  return;
}

