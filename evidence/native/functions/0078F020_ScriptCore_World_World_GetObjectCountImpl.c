/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635b8 (original PC 1.67 TS3W.exe).
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
  int iStack_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      cStack_14 = param_3;
      uStack_13 = param_4;
      uStack_12 = param_5;
      iStack_10 = 0;
      iStack_c = 0;
      uStack_8 = 0;
      pcStack_4 = "World/UserMayPlaceFloorPattern";
      FUN_00ac7480(this,&cStack_14,&iStack_10,'\0','\0','\x01',&DAT_0000000f,0,5);
      iVar1 = iStack_c - iStack_10;
      if (iStack_10 != 0) {
        FUN_004e44e0(iStack_10);
      }
      return iVar1 >> 2;
    }
  }
  return 0;
}

