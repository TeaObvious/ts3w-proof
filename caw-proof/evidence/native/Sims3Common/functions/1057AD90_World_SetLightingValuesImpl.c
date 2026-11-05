/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetLightingValuesImpl. Export ordinal(s):
   1583. Entry VA: 0x1057ad90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CFD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_SetLightingValuesImpl(int param_1)

{
                    /* 0x57ad90  1583  World_SetLightingValuesImpl */
  if (param_1 == 0) {
    FUN_104bb260(&DAT_10c751f0);
    return;
  }
  FUN_104bb270(&DAT_10c751f0,param_1);
  return;
}

