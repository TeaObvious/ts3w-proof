/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d70 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsHouseboatLotImpl [assembly=ScriptCore token=0x060008AD; lotId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_IsHouseboatLotImpl(int param_1,int param_2)

{
  int *in_EAX;
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if ((in_EAX != (int *)0x0) && ((char)in_EAX[0x12f] != '\0')) {
      return CONCAT31((int3)((uint)in_EAX >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

