/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633d0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetDisplayLevelInfoImpl [assembly=ScriptCore token=0x06000777; lotId:
   System.UInt64; return=Sims3.SimIFace.LotDisplayLevelInfo]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int * ScriptCore_World__World_LotGetDisplayLevelInfoImpl(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  void *pvVar3;
  int *piVar4;
  bool bVar5;
  
  pvVar3 = DAT_011edbc4;
  bVar5 = DAT_011edbc4 != (void *)0x0;
  param_1[3] = 0;
  param_1[2] = 0;
  param_1[1] = 0;
  *param_1 = 0;
  if ((bVar5) && (piVar4 = FUN_00c62810(pvVar3,param_2,param_3,(int *)0x0), piVar4 != (int *)0x0)) {
    iVar1 = piVar4[0x5f];
    *param_1 = piVar4[0xe7];
    iVar2 = piVar4[0x61];
    param_1[1] = iVar1;
    iVar1 = piVar4[0x60];
    param_1[3] = iVar2;
    iVar2 = piVar4[0xe8];
    pvVar3 = (void *)piVar4[0xab];
    param_1[2] = iVar1;
    param_1[4] = iVar2;
    param_1[5] = iVar1;
    if (pvVar3 != (void *)0x0) {
      bVar5 = FUN_00b94690(pvVar3,iVar1);
      if (bVar5) {
        param_1[5] = param_1[2] + 1;
        return param_1;
      }
    }
  }
  return param_1;
}

