/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161970 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetPathData [assembly=ScriptCore token=0x06001111; handle: System.UInt32,
   pathIndex: System.UInt32; return=Sims3.SimIFace.PathData]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_GetPathData(undefined4 *param_1,uint param_2,int param_3)

{
  int *piVar1;
  code *pcVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 auStack_40 [16];
  
  if (DAT_011d50c4 == (void *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_2);
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x10))();
      piVar4 = (int *)piVar3[0x38];
      piVar1 = piVar3 + 0x38;
      if (piVar4 != piVar1) {
        do {
          if (param_3 == 0) break;
          piVar4 = (int *)*piVar4;
          param_3 = param_3 + -1;
        } while (piVar4 != piVar1);
        if ((piVar4 != piVar1) && ((int *)piVar4[2] != (int *)0x0)) {
          puVar5 = (undefined4 *)(**(code **)(*(int *)piVar4[2] + 0x30))();
          auStack_40[2] = puVar5[2];
          auStack_40[3] = puVar5[3];
          auStack_40[0] = *puVar5;
          FUN_0076c100(auStack_40 + 4,puVar5 + 4);
          pcVar2 = *(code **)(*piVar3 + 0x14);
          puVar5 = auStack_40;
          puVar7 = auStack_40 + 8;
          for (iVar6 = 8; iVar6 != 0; iVar6 = iVar6 + -1) {
            *puVar7 = *puVar5;
            puVar5 = puVar5 + 1;
            puVar7 = puVar7 + 1;
          }
          (*pcVar2)();
          puVar5 = auStack_40 + 8;
          for (iVar6 = 8; iVar6 != 0; iVar6 = iVar6 + -1) {
            *param_1 = *puVar5;
            puVar5 = puVar5 + 1;
            param_1 = param_1 + 1;
          }
          return;
        }
      }
    }
  }
  auStack_40[0] = 0;
  auStack_40[1] = 0;
  auStack_40[2] = 0;
  auStack_40[3] = 0;
  auStack_40[4] = 0;
  auStack_40[5] = 0;
  auStack_40[6] = 0;
  auStack_40[7] = 0;
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x14))();
  }
  puVar5 = auStack_40;
  for (iVar6 = 8; iVar6 != 0; iVar6 = iVar6 + -1) {
    *param_1 = *puVar5;
    puVar5 = puVar5 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

