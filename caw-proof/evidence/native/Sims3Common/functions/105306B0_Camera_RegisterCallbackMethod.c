/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_RegisterCallbackMethod. Export ordinal(s):
   295. Entry VA: 0x105306b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A1E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_RegisterCallbackMethod(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  
                    /* 0x5306b0  295  Camera_RegisterCallbackMethod */
  if (param_1 < 5) {
    piVar1 = (int *)FUN_1055b120();
    (**(code **)(*piVar1 + 0x58))(param_3);
    (**(code **)(*piVar1 + 0x58))(param_1);
    FUN_1000f080(&DAT_10c786d8 + param_1 * 8,&DAT_10b19ddc);
    FUN_1000f080(&DAT_10c786e8 + param_1 * 8,&DAT_10b19ddc);
  }
  return;
}

