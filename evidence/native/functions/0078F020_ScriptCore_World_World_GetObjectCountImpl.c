/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011635b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetObjectCountImpl [assembly=ScriptCore token=0x060007BB; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_World__World_GetObjectCountImpl
              (int param_1,int param_2,char param_3,undefined1 param_4,undefined1 param_5)

{
  int *this;
  int iVar1;
  char cStack_14;
  undefined1 uStack_13;
  undefined1 uStack_12;
  void *pvStack_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (this != (int *)0x0) {
      cStack_14 = param_3;
      uStack_13 = param_4;
      uStack_12 = param_5;
      pvStack_10 = (void *)0x0;
      iStack_c = 0;
      uStack_8 = 0;
      pcStack_4 = "World/UserMayPlaceFloorPattern";
      LotQuery_CollectObjectsOnTile(this,&cStack_14,&pvStack_10,'\0','\0','\x01',0xf,0,5);
      iVar1 = iStack_c - (int)pvStack_10;
      if (pvStack_10 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_10);
      }
      return iVar1 >> 2;
    }
  }
  return 0;
}

