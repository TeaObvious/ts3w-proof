/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163af0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HasPoolImpl [assembly=ScriptCore token=0x06000860; lotId: System.UInt64,
   location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasPoolImpl
               (int param_1,int param_2,int param_3,int param_4,char param_5)

{
  char cVar1;
  uint in_EAX;
  int *piVar2;
  undefined4 uVar3;
  char acStack_10 [4];
  float fStack_c;
  float fStack_8;
  int iStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar2 != (int *)0x0) {
      fStack_c = (float)param_3;
      acStack_10[0] = -1;
      acStack_10[1] = 0xff;
      acStack_10[3] = 0xff;
      iStack_4 = (int)param_5;
      fStack_8 = (float)param_4;
      acStack_10[2] = 0;
      LotLocation_EncodeCellAndQuadrant(&fStack_c,acStack_10);
      cVar1 = FUN_00ad0d70(piVar2,(undefined2 *)acStack_10,1,1);
      if (cVar1 == '\0') {
        uVar3 = Lot_TestCellRegionAndCollectionAdmission(piVar2,acStack_10,1,1,(undefined1 *)0x0);
        if ((char)uVar3 == '\0') {
          return 0;
        }
      }
      return 1;
    }
  }
  return in_EAX & 0xffffff00;
}

