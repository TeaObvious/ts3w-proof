/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163328 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotRoofVisibleImpl [assembly=ScriptCore token=0x06000762; lotId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_World__World_LotRoofVisibleImpl(int param_1,int param_2)

{
  undefined1 uVar1;
  int *piVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((piVar2 != (int *)0x0) && (piVar2[0xab] != 0)) {
      uVar1 = FUN_00b944d0(piVar2[0xab]);
      return uVar1;
    }
  }
  return 0;
}

