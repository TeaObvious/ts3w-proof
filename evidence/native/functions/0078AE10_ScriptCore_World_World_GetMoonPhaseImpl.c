/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d38 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetMoonPhaseImpl [assembly=ScriptCore token=0x060008A3; ;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetMoonPhaseImpl(void)

{
  undefined4 uVar1;
  
  if ((DAT_011edbc4 != 0) && (*(int *)(DAT_011edbc4 + 100) != 0)) {
    uVar1 = FUN_00c0f6d0(*(int *)(DAT_011edbc4 + 100));
    return uVar1;
  }
  return CONCAT22((short)((uint)DAT_011edbc4 >> 0x10),0xffff);
}

