/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ArePointsConnectedByLand. Export
   ordinal(s): 1259. Entry VA: 0x10578b10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C0A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl
World_ArePointsConnectedByLand
          (float param_1,undefined4 param_2,float param_3,float param_4,undefined4 param_5,
          float param_6)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  void *this;
  
                    /* 0x578b10  1259  World_ArePointsConnectedByLand */
  iVar2 = thunk_FUN_10627370();
  if (iVar2 != 0) {
    iVar3 = FUN_1061ae50(iVar2);
    if (iVar3 != 0) {
      this = (void *)FUN_1061ae50(iVar2);
      bVar1 = FUN_10455680(this,param_1,param_3,param_4,param_6);
      return bVar1;
    }
  }
  return false;
}

