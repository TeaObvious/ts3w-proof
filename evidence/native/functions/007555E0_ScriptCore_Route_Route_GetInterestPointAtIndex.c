/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b78 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetInterestPointAtIndex [assembly=ScriptCore token=0x0600114C;
   routeHandle: System.UInt32, interestPointIndex: System.UInt32;
   return=Sims3.SimIFace.RouteInterestPoint]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_GetInterestPointAtIndex(undefined4 *param_1,uint param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  int *piVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 auStack_80 [4];
  undefined4 auStack_70 [3];
  undefined4 auStack_64 [3];
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 auStack_40 [16];
  
  piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_2);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x10))();
    if ((char)piVar2[0x3d] == '\0') {
      piVar8 = piVar2 + 0x38;
      if ((int *)*piVar8 == piVar8) goto LAB_007556af;
      piVar8 = *(int **)(*piVar8 + 8);
    }
    else {
      piVar8 = (int *)piVar2[0x3b];
    }
    if (piVar8 != (int *)0x0) {
      piVar1 = piVar8 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      piVar3 = (int *)(**(code **)(*piVar8 + 0x15c))();
      piVar5 = (int *)*piVar3;
      uVar7 = 0;
      piVar4 = piVar5;
      if (piVar5 != piVar3) {
        do {
          piVar4 = (int *)*piVar4;
          uVar7 = uVar7 + 1;
        } while (piVar4 != piVar3);
        if ((param_3 < uVar7) && (uVar7 = 0, piVar5 != piVar3)) {
LAB_00755680:
          if (uVar7 != param_3) goto code_r0x00755684;
          iVar6 = piVar5[2];
          if (iVar6 != 0) {
            auStack_80[0] = *(undefined4 *)(iVar6 + 8);
            FUN_0076c150(auStack_80 + 1,(undefined4 *)(iVar6 + 0x10));
            FUN_0076c150(auStack_70,(undefined4 *)(iVar6 + 0x20));
            FUN_0076c150(auStack_64,(undefined4 *)(iVar6 + 0x30));
            uStack_58 = *(undefined4 *)(iVar6 + 0x40);
            uStack_54 = *(undefined4 *)(iVar6 + 0x44);
            uStack_50 = *(undefined4 *)(iVar6 + 0x50);
            uStack_4c = *(undefined4 *)(iVar6 + 0x54);
            uStack_48 = *(undefined4 *)(iVar6 + 0x58);
            uStack_44 = *(undefined4 *)(iVar6 + 0x60);
            puVar9 = auStack_80;
            puVar10 = auStack_40;
            for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
              *puVar10 = *puVar9;
              puVar9 = puVar9 + 1;
              puVar10 = puVar10 + 1;
            }
            LOCK();
            iVar6 = *piVar1;
            *piVar1 = *piVar1 + -1;
            UNLOCK();
            if (iVar6 == 1) {
              LOCK();
              *piVar1 = 1;
              UNLOCK();
              (**(code **)*piVar8)(1);
            }
            iVar6 = *piVar2;
            goto LAB_007556c8;
          }
        }
      }
LAB_00755691:
      LOCK();
      iVar6 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar6 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar8)(1);
      }
    }
  }
LAB_007556af:
  memset(auStack_40,0,0x40);
  if (piVar2 != (int *)0x0) {
    iVar6 = *piVar2;
LAB_007556c8:
    (**(code **)(iVar6 + 0x14))();
  }
  puVar9 = auStack_40;
  for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
    *param_1 = *puVar9;
    puVar9 = puVar9 + 1;
    param_1 = param_1 + 1;
  }
  return;
code_r0x00755684:
  piVar5 = (int *)*piVar5;
  uVar7 = uVar7 + 1;
  if (piVar5 == piVar3) goto LAB_00755691;
  goto LAB_00755680;
}

