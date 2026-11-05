/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163380 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetIsAutoRoofEnabledImpl [assembly=ScriptCore token=0x06000770; lotId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_LotGetIsAutoRoofEnabledImpl(int param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    uVar2 = FUN_00b01720((int)piVar1);
    return uVar2;
  }
  return in_EAX & 0xffffff00;
}

