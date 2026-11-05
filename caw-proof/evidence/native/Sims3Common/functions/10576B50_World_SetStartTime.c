/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetStartTime. Export ordinal(s): 1600.
   Entry VA: 0x10576b50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BD9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_SetStartTime(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  
                    /* 0x576b50  1600  World_SetStartTime */
  iVar1 = DAT_10c700c4;
  if (DAT_10c700c4 != 0) {
    *(undefined4 *)(DAT_10c700c4 + 0x138) = param_1;
    *(undefined4 *)(iVar1 + 0x13c) = param_2;
  }
  return;
}

