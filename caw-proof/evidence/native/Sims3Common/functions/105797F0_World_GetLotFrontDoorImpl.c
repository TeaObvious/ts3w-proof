/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetLotFrontDoorImpl. Export ordinal(s):
   1343. Entry VA: 0x105797f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CE2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl World_GetLotFrontDoorImpl(uint param_1,uint param_2,int param_3)

{
  int iVar1;
  void *this;
  undefined8 uVar2;
  
                    /* 0x5797f0  1343  World_GetLotFrontDoorImpl */
  iVar1 = thunk_FUN_10627370();
  if (iVar1 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)FUN_1061ae10(iVar1);
  }
  uVar2 = 0;
  if (this != (void *)0x0) {
    uVar2 = FUN_10429860(this,param_1,param_2,param_3,(int *)0x0);
  }
  return uVar2;
}

