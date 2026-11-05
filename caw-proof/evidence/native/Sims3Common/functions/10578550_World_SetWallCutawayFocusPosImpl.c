/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetWallCutawayFocusPosImpl. Export
   ordinal(s): 1605. Entry VA: 0x10578550. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BD5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_SetWallCutawayFocusPosImpl(float param_1,undefined4 param_2,undefined4 param_3)

{
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
                    /* 0x578550  1605  World_SetWallCutawayFocusPosImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    local_20 = param_1;
    uStack_1c = param_2;
    uStack_18 = param_3;
    fStack_14 = param_1;
    FUN_1023e7f0(DAT_10c700c4,&local_20);
  }
  return;
}

