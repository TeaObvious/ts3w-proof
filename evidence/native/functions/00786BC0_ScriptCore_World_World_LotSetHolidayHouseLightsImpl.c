/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011633a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotSetHolidayHouseLightsImpl [assembly=ScriptCore token=0x0600076E;
   lotId: System.UInt64, bEnable: System.Boolean, bMultiColored: System.Boolean, lightsType:
   System.UInt16, red: System.Single, green: System.Single, blue: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LotSetHolidayHouseLightsImpl
               (int param_1,int param_2,char param_3,undefined1 param_4,undefined1 param_5,
               float param_6,float param_7,float param_8)

{
  int *piVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xab] != (void *)0x0)) {
      FUN_00b95150((void *)piVar1[0xab],param_3,param_4,param_5,param_6,param_7,param_8);
    }
  }
  return;
}

