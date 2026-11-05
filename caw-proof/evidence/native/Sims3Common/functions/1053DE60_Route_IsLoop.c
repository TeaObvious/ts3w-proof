/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_IsLoop. Export ordinal(s): 672. Entry VA:
   0x1053de60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000196. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl Route_IsLoop(uint param_1)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x53de60  672  Route_IsLoop */
  if (DAT_10c78944 != (void *)0x0) {
    piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      iVar1 = piVar2[0x3d];
      (**(code **)(*piVar2 + 0x14))();
      return (char)iVar1;
    }
  }
  return 0;
}

