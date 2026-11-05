/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161920 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_AddLotDestination [assembly=ScriptCore token=0x060010F8; handle:
   System.UInt32, nTag: System.UInt32, fWeight: System.Single, scoreFunctionWeights:
   System.Single[], lot: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_Route__Route_AddLotDestination
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          undefined4 param_6)

{
  uint in_EAX;
  int *host;
  int *this;
  undefined4 *this_00;
  int *piVar1;
  undefined4 uVar2;
  uint uStack_8;
  uint uStack_4;
  
  if (DAT_011d50c4 != (void *)0x0) {
    host = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (host != (int *)0x0) {
      (**(code **)(*host + 0x10))();
      this = RouteHost_GetOrCreateGoal(host);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        this_00 = (undefined4 *)FUN_004e4500(0x38,"Routing/LotDestination",0);
        if (this_00 != (undefined4 *)0x0) {
          this_00[3] = 0;
          this_00[4] = 0;
          this_00[5] = 0;
          this_00[6] = 0;
          this_00[7] = 0;
          this_00[8] = 0;
          this_00[9] = 0;
          this_00[1] = 0;
          this_00[2] = 0;
          *this_00 = &PTR_LAB_010052cc;
          this_00[0xc] = param_5;
          this_00[0xd] = param_6;
          this_00[10] = param_2;
          this_00[0xb] = param_3;
          if (param_4 != 0) {
            piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
            uStack_4 = 0;
            uStack_8 = 0;
            (**(code **)(*piVar1 + 0x78))(param_4,&uStack_4,&uStack_8);
            RouteDestination_CopyScoreWeights(this_00,uStack_4,uStack_8);
          }
          RouteGoal_AppendDestination(this,(int)this_00);
          (**(code **)(*this + 4))();
          uVar2 = (**(code **)(*host + 0x14))();
          return CONCAT31((int3)((uint)uVar2 >> 8),1);
        }
        (**(code **)(*this + 4))();
      }
      in_EAX = (**(code **)(*host + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}

