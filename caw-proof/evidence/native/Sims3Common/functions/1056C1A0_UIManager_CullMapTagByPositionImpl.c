/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_CullMapTagByPositionImpl. Export
   ordinal(s): 1074. Entry VA: 0x1056c1a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006E8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
UIManager_CullMapTagByPositionImpl(float param_1,undefined4 param_2,undefined4 param_3)

{
  void *this;
  undefined4 uVar1;
  
                    /* 0x56c1a0  1074  UIManager_CullMapTagByPositionImpl */
  this = (void *)FUN_105dad80();
  if (this != (void *)0x0) {
    uVar1 = FUN_105dad30(this,param_1,param_2,param_3);
    return uVar1;
  }
  return 0;
}

