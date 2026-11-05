/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_UpdateLightProbes. Export
   ordinal(s): 2289. Entry VA: 0x1098e7d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600013A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_UpdateLightProbes(int param_1,int param_2)

{
  void *pvVar1;
  
                    /* 0x98e7d0  2289  SceneManWrap_UpdateLightProbes */
  pvVar1 = (void *)FUN_104de430(param_1);
  if (param_2 != 0) {
    FUN_104a5980(pvVar1);
    return;
  }
  FUN_104a5480(pvVar1);
  return;
}

