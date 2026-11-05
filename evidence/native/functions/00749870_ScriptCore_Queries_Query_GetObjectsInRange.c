/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161720 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  undefined1 uStack00000008;
  float in_stack_00000014;
  undefined4 uVar5;
  void **ppvVar6;
  void *local_30;
  int local_2c;
  undefined4 local_28;
  char *local_24;
  undefined4 local_20 [7];
  
  uVar3 = 0;
  this = (void *)CollisionService_GetGlobal();
  ppvVar6 = &local_30;
  uVar5 = 0xc;
  local_30 = (void *)0x0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Physics/RangeResult";
  pfVar1 = RouteVector_ExpandXYZWithXLane(&uStack00000008,local_20);
  uVar4 = FUN_00686fe0(this,pfVar1,in_stack_00000014,uVar5,(int *)ppvVar6);
  if ((char)uVar4 != '\0') {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_30,local_2c - (int)local_30 >> 3);
  }
  if (local_30 != (void *)0x0) {
    Memory_FreeIfNonNull(local_30);
  }
  return uVar3;
}

