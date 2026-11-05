/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a58 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_RemoveObjectToIgnoreForRouteEndTurn [assembly=ScriptCore
   token=0x0600112E; handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_RemoveObjectToIgnoreForRouteEndTurn
               (uint param_1,int param_2,int param_3)

{
  int *_Src;
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *_Dst;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar2 == (int *)0x0)) {
    return;
  }
  (**(code **)(*piVar2 + 0x10))();
  puVar3 = (undefined4 *)FUN_0081c530((int)(piVar2 + 0x56));
  piVar1 = (int *)puVar3[1];
  _Dst = (int *)*puVar3;
  if (_Dst != piVar1) {
    do {
      if ((*_Dst == param_2) && (_Dst[1] == param_3)) break;
      _Dst = _Dst + 2;
    } while (_Dst != piVar1);
    if (_Dst != piVar1) {
      _Src = _Dst + 2;
      if (_Src < piVar1) {
        memmove(_Dst,_Src,(int)piVar1 - (int)_Src);
      }
      puVar3[1] = puVar3[1] + -8;
    }
  }
                    /* WARNING: Could not recover jumptable at 0x007591a1. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar2 + 0x14))();
  return;
}

