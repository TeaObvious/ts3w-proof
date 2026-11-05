/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163a48 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetUnfurnishedLotWorth [assembly=ScriptCore token=0x06000842; lotId:
   System.UInt64; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_World__World_GetUnfurnishedLotWorth(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  uint extraout_EDX;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (piVar1 != (int *)0x0) {
      iVar2 = FUN_00acaed0(piVar1,extraout_EDX);
      return iVar2;
    }
  }
  return 0;
}

