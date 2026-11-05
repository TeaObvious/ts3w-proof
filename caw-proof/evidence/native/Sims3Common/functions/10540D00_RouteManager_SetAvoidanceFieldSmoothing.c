/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetAvoidanceFieldSmoothing. Export
   ordinal(s): 593. Entry VA: 0x10540d00. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
RouteManager_SetAvoidanceFieldSmoothing(undefined4 param_1,undefined4 param_2,float param_3)

{
  int iVar1;
  void *this;
  float fVar2;
  
                    /* 0x540d00  593  RouteManager_SetAvoidanceFieldSmoothing */
  fVar2 = 0.0;
  if ((param_3 < 0.0) || (fVar2 = DAT_10acb0d4, DAT_10acb0d4 < param_3)) {
    param_3 = fVar2;
  }
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d978);
      if ((iVar1 != 0) && (*(int *)(iVar1 + 0x10c) != 0)) {
        *(float *)(*(int *)(iVar1 + 0x10c) + 0xb0) = param_3;
      }
    }
  }
  return;
}

