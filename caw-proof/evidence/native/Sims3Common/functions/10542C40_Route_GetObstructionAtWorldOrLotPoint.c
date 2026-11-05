/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetObstructionAtWorldOrLotPoint. Export
   ordinal(s): 648. Entry VA: 0x10542c40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000176. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

longlong __cdecl
Route_GetObstructionAtWorldOrLotPoint
          (uint param_1,undefined4 *param_2,int *******param_3,int *******param_4)

{
  int *piVar1;
  int iVar2;
  void *this;
  longlong lVar3;
  uint auStack_30 [2];
  int iStack_28;
  int iStack_24;
  undefined4 uStack_10;
  undefined1 uStack_c;
  undefined1 uStack_b;
  int *piStack_8;
  
                    /* 0x542c40  648  Route_GetObstructionAtWorldOrLotPoint */
  if (DAT_10c78944 != (void *)0x0) {
    piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      iVar2 = thunk_FUN_10627370();
      if (iVar2 != 0) {
        this = (void *)FUN_1061ae50(iVar2);
        if (this != (void *)0x0) {
          auStack_30[0] = piVar1[0xf];
          piStack_8 = piVar1 + 0x56;
          iStack_28 = piVar1[0x10];
          iStack_24 = piVar1[0x11];
          uStack_10 = 0;
          uStack_c = 1;
          uStack_b = 0;
          lVar3 = FUN_1044d150(this,auStack_30,param_2,param_3,param_4,'\0');
          FUN_1043b430((int)auStack_30);
          (**(code **)(*piVar1 + 0x14))();
          return lVar3;
        }
      }
      (**(code **)(*piVar1 + 0x14))();
    }
  }
  return 0;
}

