/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ScriptProxy_SetResetState. Export ordinal(s):
   738. Entry VA: 0x1055cc10. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F91. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl ScriptProxy_SetResetState(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  
                    /* 0x55cc10  738  ScriptProxy_SetResetState */
  piVar1 = (int *)FUN_1055b120();
  (**(code **)(*piVar1 + 300))(param_1,param_2,param_3,param_3 != 0,0);
  return;
}

