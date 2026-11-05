/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161a68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetObjectsToIgnoreForRouteEndTurn [assembly=ScriptCore token=0x06001130;
   handle: System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Route::Route_GetObjectsToIgnoreForRouteEndTurn(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 unaff_EBP;
  uint uVar5;
  undefined4 uStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      piVar3 = (int *)FUN_0081c530((int)(piVar2 + 0x56));
      iVar4 = piVar3[1] - *piVar3 >> 3;
      if (iVar4 != 0) {
        (**(code **)(*piVar1 + 0x88))(&uStack_c,iVar4);
        iVar4 = *piVar3;
        uVar5 = 0;
        if (piVar3[1] - iVar4 >> 3 != 0) {
          do {
            uStack_c = *(undefined4 *)(iVar4 + 4 + uVar5 * 8);
            (**(code **)(*piVar1 + 0xa0))
                      ((int)register0x00000010 + -0x14,(int)register0x00000010 + -0x10,uVar5,1);
            iVar4 = *piVar3;
            uVar5 = uVar5 + 1;
          } while (uVar5 < (uint)(piVar3[1] - iVar4 >> 3));
        }
        (**(code **)(*piVar2 + 0x14))();
        return unaff_EBP;
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

