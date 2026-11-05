/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetExteriorProbePosition. Export
   ordinal(s): 2278. Entry VA: 0x1098e670. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600013B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SceneManWrap_SetExteriorProbePosition
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *this;
  
                    /* 0x98e670  2278  SceneManWrap_SetExteriorProbePosition */
  this = (void *)FUN_104de430(param_1);
  if (this != (void *)0x0) {
    FUN_104a35a0(this,param_2,param_3,param_4);
  }
  return;
}

