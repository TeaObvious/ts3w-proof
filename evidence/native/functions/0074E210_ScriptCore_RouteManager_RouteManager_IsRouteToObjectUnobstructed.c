/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161c00 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_IsRouteToObjectUnobstructed [assembly=ScriptCore
   token=0x0600105E; scriptHandle: System.UInt64, point: Sims3.SimIFace.Vector3, options:
   System.UInt64, options2: System.UInt64, objectIdToIgnore: System.UInt64, agsFlags: System.UInt32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float ScriptCore.RouteManager::RouteManager_IsRouteToObjectUnobstructed(void)

{
  void *pvVar1;
  void *this;
  void *pvVar2;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 uStack0000000c;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 *in_stack_00000028;
  int in_stack_0000002c;
  uint in_stack_00000030;
  float *pfVar3;
  undefined4 uVar4;
  void *local_e4;
  float local_e0 [20];
  undefined4 local_90 [35];
  
  local_e0[3] = 0.0;
  local_e0[2] = 0.0;
  local_e0[1] = 0.0;
  local_e0[0] = 0.0;
  local_e0[4] = 0.0;
  local_e0[5] = 0.0;
  local_e0[6] = 0.0;
  local_e0[7] = 0.0;
  local_e0[8] = 0.0;
  local_e0[9] = 0.0;
  local_e0[10] = 0.0;
  local_e0[0xb] = 0.0;
  local_e0[0xc] = 1.0;
  local_e0[0xd] = 0.0;
  local_e0[0xe] = 0.0;
  local_e0[0xf] = 0.0;
  local_e0[0x10] = 0.0;
  FUN_0076c360(&uStack0000000c,local_e0 + 4);
  local_e4 = (void *)0x0;
  local_e0[0xd] = (float)RoutePoint_ResolveLotAndLevel(local_e0 + 4,&local_e4);
  pvVar1 = ObjectRegistry_GetGlobal();
  this = (void *)thunk_FUN_00835d40();
  if ((this == (void *)0x0) || (pvVar1 == (void *)0x0)) {
    return 1.12104e-44;
  }
  uVar4 = 0;
  pvVar2 = (void *)FUN_0081c7b0(local_90,in_stack_00000018,in_stack_0000001c,in_stack_00000020,
                                in_stack_00000024);
  pfVar3 = local_e0 + 4;
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
  FUN_00831070(this,local_e0,local_e4,pvVar1,pfVar3,pvVar2,in_stack_00000030,uVar4,in_stack_00000028
               ,in_stack_0000002c);
  FUN_0081c830(local_90);
  return local_e0[0];
}

