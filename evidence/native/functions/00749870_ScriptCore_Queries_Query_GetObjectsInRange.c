/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161720 (original PC 1.67 TS3W.exe).
   ScriptCore.Queries::Query_GetObjectsInRange [assembly=ScriptCore token=0x06000516; type:
   System.Type, center: Sims3.SimIFace.Vector3, radius: System.Single; return=System.Array]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Queries::Query_GetObjectsInRange(undefined4 param_1)

{
  void *this;
  float *pfVar1;
  int *piVar2;
  undefined4 uVar3;
  ulonglong uVar4;
  float in_stack_00000014;
  undefined4 uVar5;
  int local_30;
  int local_2c;
  undefined4 local_28;
  char *local_24;
  undefined4 local_20 [7];
  
  uVar3 = 0;
  this = (void *)FUN_00686e60();
  piVar2 = &local_30;
  uVar5 = 0xc;
  local_30 = 0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Physics/RangeResult";
  pfVar1 = (float *)FUN_0076c050(&stack0x00000008,local_20);
  uVar4 = FUN_00686fe0(this,pfVar1,in_stack_00000014,uVar5,piVar2);
  if ((char)uVar4 != '\0') {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_30,local_2c - local_30 >> 3);
  }
  if (local_30 != 0) {
    FUN_004e44e0(local_30);
  }
  return uVar3;
}

