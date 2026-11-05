/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01163b00 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      in_EAX = piVar1[0xa6];
      if (*(void **)(in_EAX + 100) != (void *)0x0) {
        iStack_4 = (int)param_5;
        iStack_10 = (int)param_8;
        fStack_c = (float)param_3 + 0.5;
        fStack_8 = (float)param_4 + 0.5;
        fStack_18 = (float)param_6 + 0.5;
        fStack_14 = (float)param_7 + 0.5;
        uVar2 = WallGraph_CrossesLocalSegment
                          (*(void **)(in_EAX + 100),&fStack_c,&fStack_18,(void *)0x0);
        return uVar2;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

