/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163b00 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_WallExistsBetweenImpl [assembly=ScriptCore token=0x06000862; lotId:
   System.UInt64, a: Sims3.SimIFace.LotLocation, b: Sims3.SimIFace.LotLocation;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_WallExistsBetweenImpl
               (int param_1,int param_2,int param_3,int param_4,char param_5,int param_6,int param_7
               ,char param_8)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  float fStack_18;
  float fStack_14;
  int iStack_10;
  float fStack_c;
  float fStack_8;
  int iStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      in_EAX = piVar1[0xa6];
      if (*(void **)(in_EAX + 100) != (void *)0x0) {
        iStack_4 = (int)param_5;
        iStack_10 = (int)param_8;
        fStack_c = (float)param_3 + _DAT_00f9b5b4;
        fStack_8 = (float)param_4 + _DAT_00f9b5b4;
        fStack_18 = (float)param_6 + _DAT_00f9b5b4;
        fStack_14 = (float)param_7 + _DAT_00f9b5b4;
        uVar2 = FUN_00c40c60(*(void **)(in_EAX + 100),&fStack_c,&fStack_18,(void *)0x0);
        return uVar2;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

