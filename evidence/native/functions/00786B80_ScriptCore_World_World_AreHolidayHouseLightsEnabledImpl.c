/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163398 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_AreHolidayHouseLightsEnabledImpl [assembly=ScriptCore token=0x0600076D;
   lotId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_AreHolidayHouseLightsEnabledImpl(int param_1,int param_2)

{
  int iVar1;
  uint in_EAX;
  int *piVar2;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar2 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if ((piVar2 != (int *)0x0) && (iVar1 = piVar2[0xab], in_EAX = 0, iVar1 != 0)) {
      return CONCAT31((int3)((uint)iVar1 >> 8),*(undefined1 *)(iVar1 + 0x90));
    }
  }
  return in_EAX & 0xffffff00;
}

