/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasFloorFeaturesWorldPosImpl. Export
   ordinal(s): 1408. Entry VA: 0x105773a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CB2. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
World_HasFloorFeaturesWorldPosImpl(float param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  uint in_EAX;
  uint uVar1;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
                    /* 0x5773a0  1408  World_HasFloorFeaturesWorldPosImpl */
  if (param_4 == 4) {
    local_20 = param_1;
    uStack_1c = param_2;
    uStack_18 = param_3;
    fStack_14 = param_1;
    uVar1 = FUN_10347440(&local_20);
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

