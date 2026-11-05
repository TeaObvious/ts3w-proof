/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011618e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_Replan [assembly=ScriptCore token=0x0600110B; handle: System.UInt32;
   return=Sims3.SimIFace.RoutePlanResult]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_Replan(int *param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  int aiStack_48 [18];
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_2);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      piVar1[0x7d] = piVar1[0x7d] + 1;
      RouteHost_PlanFromFollowerStart(piVar1,aiStack_48);
      (**(code **)(*piVar1 + 0x14))();
      goto LAB_007655bd;
    }
  }
  aiStack_48[0] = 2;
  aiStack_48[1] = 0;
  aiStack_48[3] = 0;
  aiStack_48[4] = 0;
  aiStack_48[5] = 0;
  aiStack_48[6] = 0;
  aiStack_48[7] = 0;
  aiStack_48[8] = 0;
  aiStack_48[9] = 0;
  aiStack_48[10] = 0;
  aiStack_48[0xb] = 0;
  aiStack_48[0xc] = 0;
  aiStack_48[0xd] = 0;
  aiStack_48[0xe] = 0;
  aiStack_48[0xf] = 0;
  aiStack_48[0x10] = 0;
LAB_007655bd:
  piVar1 = aiStack_48;
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *piVar1;
    piVar1 = piVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

