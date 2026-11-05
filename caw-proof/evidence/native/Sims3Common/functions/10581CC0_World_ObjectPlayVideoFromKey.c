/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectPlayVideoFromKey. Export ordinal(s):
   1528. Entry VA: 0x10581cc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C3D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
World_ObjectPlayVideoFromKey
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined1 param_7)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
                    /* 0x581cc0  1528  World_ObjectPlayVideoFromKey */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    uVar2 = FUN_1072abb0(iVar1);
    if (uVar2 != 0) {
      FUN_1055b120();
      FUN_108e50d0();
      uVar3 = FUN_10580b30(param_1,param_2,param_5,param_6,param_3,param_4,param_7,1,1);
      return uVar3;
    }
  }
  return 0;
}

