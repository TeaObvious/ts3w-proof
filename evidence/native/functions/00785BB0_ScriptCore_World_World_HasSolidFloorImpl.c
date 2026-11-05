/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163ad0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasSolidFloorImpl [assembly=ScriptCore token=0x0600085C; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasSolidFloorImpl
               (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 auStack_4 [3];
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      auStack_4._0_2_ = CONCAT11(param_4,param_3);
      _auStack_4 = CONCAT13(0xf,CONCAT12(param_5,auStack_4._0_2_));
      uVar2 = FUN_00ad0260(piVar1,(ushort *)auStack_4,1,'\x01',0,0,'\x01');
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

