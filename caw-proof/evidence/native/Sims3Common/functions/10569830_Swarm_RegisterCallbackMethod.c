/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_RegisterCallbackMethod. Export ordinal(s):
   1007. Entry VA: 0x10569830. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000635. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl Swarm_RegisterCallbackMethod(int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  
                    /* 0x569830  1007  Swarm_RegisterCallbackMethod */
  if (param_1 == 0) {
    piVar1 = (int *)FUN_1055b120();
    (**(code **)(*piVar1 + 0x58))(param_3);
    (**(code **)(*piVar1 + 0x58))(0);
    FUN_1000f080(&DAT_10c7b1c8,&DAT_10b19ddc);
    FUN_1000f080(&DAT_10c7b1d8,&DAT_10b19ddc);
  }
  return;
}

