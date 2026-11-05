/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163350 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotRemoveAllRoofsImpl [assembly=ScriptCore token=0x06000767; lotId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LotRemoveAllRoofsImpl(int param_1,int param_2)

{
  int *piVar1;
  undefined **appuStack_34 [2];
  undefined **ppuStack_2c;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (piVar1 != (int *)0x0) {
      FUN_00d09b00(appuStack_34,piVar1);
      FUN_00d09b20(appuStack_34);
      appuStack_34[0] = &PTR_FUN_01011910;
      ppuStack_2c = &PTR_LAB_010831ac;
      FUN_00789340(appuStack_34);
    }
  }
  return;
}

