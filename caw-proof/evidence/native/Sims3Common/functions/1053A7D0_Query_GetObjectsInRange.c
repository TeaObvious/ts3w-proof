/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Query_GetObjectsInRange. Export ordinal(s): 534.
   Entry VA: 0x1053a7d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600000F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Query_GetObjectsInRange(undefined4 param_1)

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
  
                    /* 0x53a7d0  534  Query_GetObjectsInRange */
  uVar3 = 0;
  this = (void *)FUN_1047dd40();
  piVar2 = &local_30;
  uVar5 = 0xc;
  local_30 = 0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Physics/RangeResult";
  pfVar1 = (float *)FUN_1055db20(&stack0x00000008,local_20);
  uVar4 = FUN_1047dec0(this,pfVar1,in_stack_00000014,uVar5,piVar2);
  if ((char)uVar4 != '\0') {
    piVar2 = (int *)FUN_1055b120();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_30,local_2c - local_30 >> 3);
  }
  if (local_30 != 0) {
    FUN_10918e90(local_30);
  }
  return uVar3;
}

