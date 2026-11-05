/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetLotFrontDoorImpl. Export ordinal(s):
   1586. Entry VA: 0x10579830. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CE3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
World_SetLotFrontDoorImpl(uint param_1,uint param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x579830  1586  World_SetLotFrontDoorImpl */
  iVar1 = thunk_FUN_10627370();
  if (iVar1 != 0) {
    this = (void *)FUN_1061ae10(iVar1);
    if (this != (void *)0x0) {
      uVar2 = FUN_10429910(this,param_1,param_2,param_3,param_4,param_5);
      return uVar2;
    }
  }
  return 0;
}

