/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb68 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_ClipExists [assembly=ScriptCore token=0x06000DC0; clipId:
   System.UInt64, groupId: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.Animation::Animation_ClipExists(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_1;
  local_c = param_2;
  local_8 = 0x6b20c4f3;
  local_4 = param_3;
  piVar1 = (int *)FUN_004afe80();
  iVar2 = (**(code **)(*piVar1 + 0x44))(&local_10);
  return iVar2 != 0;
}

