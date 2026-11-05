/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c00 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_IsRouteToObjectUnobstructed [assembly=ScriptCore
   token=0x0600105E; scriptHandle: System.UInt64, point: Sims3.SimIFace.Vector3, options:
   System.UInt64, options2: System.UInt64, objectIdToIgnore: System.UInt64, agsFlags: System.UInt32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float ScriptCore.RouteManager::RouteManager_IsRouteToObjectUnobstructed(void)

{
  int iVar1;
  void *this;
  void *pvVar2;
  void *pvVar3;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 *in_stack_00000028;
  int in_stack_0000002c;
  uint in_stack_00000030;
  float *pfVar4;
  undefined4 uVar5;
  void *local_e4;
  float local_e0 [13];
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
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
  local_e0[0xc] = (float)DAT_00f998f8;
  local_ac = 0;
  local_a8 = 0;
  local_a4 = 0;
  local_a0 = 0;
  FUN_0076c360((undefined4 *)&stack0x0000000c,local_e0 + 4);
  local_e4 = (void *)0x0;
  local_ac = FUN_0074c060(local_e0 + 4,&local_e4);
  iVar1 = FUN_00937570();
  this = (void *)thunk_FUN_00835d40();
  if ((this != (void *)0x0) && (iVar1 != 0)) {
    uVar5 = 0;
    pvVar2 = (void *)FUN_0081c7b0(local_90,in_stack_00000018,in_stack_0000001c,in_stack_00000020,
                                  in_stack_00000024);
    pfVar4 = local_e0 + 4;
    pvVar3 = (void *)FUN_00937f80(iVar1);
    FUN_00831070(this,local_e0,local_e4,pvVar3,pfVar4,pvVar2,in_stack_00000030,uVar5,
                 in_stack_00000028,in_stack_0000002c);
    FUN_0081c830(local_90);
    return local_e0[0];
  }
  return 1.12104e-44;
}

