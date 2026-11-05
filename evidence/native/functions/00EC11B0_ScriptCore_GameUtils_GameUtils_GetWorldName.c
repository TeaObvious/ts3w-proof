/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197310 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetWorldName [assembly=ScriptCore token=0x06000274; ;
   return=Sims3.SimIFace.WorldName]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_GameUtils__GameUtils_GetWorldName(void)

{
  uint uVar1;
  
  if (DAT_011edbc4 != 0) {
    uVar1 = FUN_005a2a00(DAT_011edbc4 + 0x270);
    return uVar1;
  }
  return 0xffffffff;
}

