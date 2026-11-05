/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197310 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_GetWorldName [assembly=ScriptCore token=0x06000274; ;
   return=Sims3.SimIFace.WorldName]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_GameUtils__GameUtils_GetWorldName(void)

{
  uint uVar1;
  
  if (DAT_011edbc4 == 0) {
    return 0xffffffff;
  }
  uVar1 = WorldTemplate_GetEffectiveWorldName((void *)(DAT_011edbc4 + 0x270));
  return uVar1;
}

