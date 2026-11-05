/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161700 (original PC 1.67 TS3W.exe).
   ScriptCore.Queries::Query_CountObjectsInRange [assembly=ScriptCore token=0x06000512; type:
   System.Type, center: Sims3.SimIFace.Vector3, radius: System.Single; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Queries::Query_CountObjectsInRange(undefined4 param_1)

{
  void *this;
  float *pfVar1;
  int *piVar2;
  ulonglong uVar3;
  float in_stack_00000014;
  undefined4 uVar4;
  int iStack_3c;
  int local_30;
  int local_2c;
  undefined4 local_28;
  char *local_24;
  undefined4 local_20 [7];
  
  this = (void *)FUN_00686e60();
  piVar2 = &local_30;
  uVar4 = 0xc;
  local_30 = 0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Physics/RangeResult";
  pfVar1 = (float *)FUN_0076c050(&stack0x00000008,local_20);
  uVar3 = FUN_00686fe0(this,pfVar1,in_stack_00000014,uVar4,piVar2);
  if ((char)uVar3 != '\0') {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar4 = (**(code **)(*piVar2 + 0xc4))(param_1,local_30,local_2c - local_30 >> 3);
    if (iStack_3c != 0) {
      FUN_004e44e0(iStack_3c);
    }
    return uVar4;
  }
  if (local_30 != 0) {
    FUN_004e44e0(local_30);
  }
  return 0;
}

