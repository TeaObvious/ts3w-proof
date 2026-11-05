/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163238 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ResourceExistsImpl [assembly=ScriptCore token=0x06000749; key:
   Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.World::World_ResourceExistsImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar1 = (int *)FUN_004afe80();
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_1;
  local_4 = param_2;
  iVar2 = (**(code **)(*piVar1 + 0x44))(&local_10);
  return iVar2 != 0;
}

