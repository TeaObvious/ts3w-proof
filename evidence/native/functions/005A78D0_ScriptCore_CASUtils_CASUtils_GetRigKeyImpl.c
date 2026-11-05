/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156720 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetRigKeyImpl [assembly=ScriptCore token=0x06000380;
   ageGenderSpecies: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_GetRigKeyImpl(undefined4 *param_1,uint param_2)

{
  void *this;
  undefined4 *puVar1;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar1 = &local_10;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  this = (void *)FUN_005ebac0();
  FUN_005ecdd0(this,param_2,puVar1);
  *param_1 = local_8;
  param_1[1] = local_4;
  param_1[2] = local_10;
  param_1[3] = local_c;
  return;
}

