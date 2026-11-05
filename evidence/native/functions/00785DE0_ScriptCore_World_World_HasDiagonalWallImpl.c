/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163af8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasDiagonalWallImpl [assembly=ScriptCore token=0x06000861; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasDiagonalWallImpl
               (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 uStack_4;
  undefined1 uStack_3;
  undefined1 uStack_2;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if ((piVar1 != (int *)0x0) && (in_EAX = 0, (void *)piVar1[0xa6] != (void *)0x0)) {
      _uStack_4 = CONCAT12(param_5,CONCAT11(param_4,param_3));
      uVar2 = FUN_00b49740((void *)piVar1[0xa6],(undefined2 *)&uStack_4);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

