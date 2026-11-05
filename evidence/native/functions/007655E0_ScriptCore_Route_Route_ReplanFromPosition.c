/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011618e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_ReplanFromPosition [assembly=ScriptCore token=0x0600110C; handle:
   System.UInt32, position: Sims3.SimIFace.Vector3; return=Sims3.SimIFace.RoutePlanResult]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.Route::Route_ReplanFromPosition
          (int *param_1,uint param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  int *piVar1;
  int iVar2;
  float fStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  float fStack_64;
  int local_58 [21];
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_2);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      piVar1[0x7d] = piVar1[0x7d] + 1;
      fStack_70 = param_3;
      uStack_6c = param_4;
      uStack_68 = param_5;
      fStack_64 = param_3;
      RouteHost_PlanFromExplicitStart(piVar1,local_58,&fStack_70);
      (**(code **)(*piVar1 + 0x14))();
      goto LAB_007656b8;
    }
  }
  local_58[0] = 2;
  local_58[1] = 0;
  local_58[3] = 0;
  local_58[4] = 0;
  local_58[5] = 0;
  local_58[6] = 0;
  local_58[7] = 0;
  local_58[8] = 0;
  local_58[9] = 0;
  local_58[10] = 0;
  local_58[0xb] = 0;
  local_58[0xc] = 0;
  local_58[0xd] = 0;
  local_58[0xe] = 0;
  local_58[0xf] = 0;
  local_58[0x10] = 0;
LAB_007656b8:
  piVar1 = local_58;
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *piVar1;
    piVar1 = piVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

