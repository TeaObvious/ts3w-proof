/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163370 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_IsDeckFoundationAtLotLocImpl [assembly=ScriptCore token=0x0600076B;
   lotId: System.UInt64, x: System.Single, z: System.Single, level: System.Int32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_IsDeckFoundationAtLotLocImpl
               (int param_1,int param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  float fStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      fStack_c = param_3;
      uStack_8 = param_4;
      uStack_4 = param_5;
      uVar2 = Lot_QueryDeckFoundationAtLocalPoint(piVar1,&fStack_c);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

