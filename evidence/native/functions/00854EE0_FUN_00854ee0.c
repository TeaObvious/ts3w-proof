/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX BicycleBody init, plainRET. Calls858870 base then requires+A4 and virtual20 rig before selected work. Front/rear name lookups at10284B8/1028490 store+E8/+F0; both==-1 admission tests. With rig, initializes+B4 to1.0, optional temporary pose/matrix translation distance replaces it, then MULSS0.5 stores+B8. Missing eitherbone is wheelbase1.0/frontoffset0.5; host0.5 is not a bug. No-rig path retains base behavior; full858870 default, matrix evaluator/lookups/pose/actuator/animation scheduling/ref lifetime and SSE-vs-host arithmetic remain open. */
void __fastcall FUN_00854ee0(int param_1)

{
  float *pfVar1;
  float *pfVar2;
  undefined1 auVar3 [16];
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  void *pvVar7;
  int iVar8;
  int *piVar9;
  int *extraout_ECX;
  undefined1 auVar10 [16];
  undefined4 uStack_24;
  undefined1 auStack_20 [16];
  
  FUN_00858870(param_1);
  *(undefined4 *)(param_1 + 0xc4) = 1;
  if (*(int **)(param_1 + 0xa4) != (int *)0x0) {
    puVar4 = (undefined4 *)(**(code **)(**(int **)(param_1 + 0xa4) + 0x20))();
    if (puVar4 != (undefined4 *)0x0) {
      puVar6 = puVar4 + 10;
      uVar5 = FUN_00576040(puVar6,(byte *)"transformBone");
      *(undefined4 *)(param_1 + 0xd4) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"steeringWheel");
      *(undefined4 *)(param_1 + 0xd8) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"lowerBracket_anim");
      *(undefined4 *)(param_1 + 0xdc) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"L_pedal_upright");
      *(undefined4 *)(param_1 + 0xe0) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"R_pedal_upright");
      *(undefined4 *)(param_1 + 0xe4) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"front_wheel_position");
      *(undefined4 *)(param_1 + 0xe8) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"front_wheelRotate");
      *(undefined4 *)(param_1 + 0xec) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"rear_wheel_position");
      *(undefined4 *)(param_1 + 0xf0) = uVar5;
      uVar5 = FUN_00576040(puVar6,(byte *)"rear_wheelRotate");
      *(undefined4 *)(param_1 + 0xf4) = uVar5;
      *(undefined4 *)(param_1 + 0xb4) = 0x3f800000;
      if ((*(int *)(param_1 + 0xe8) != -1) && (*(int *)(param_1 + 0xf0) != -1)) {
        puVar6 = FUN_005749a0();
        if (puVar6 == (undefined4 *)0x0) {
          pvVar7 = (void *)0x0;
        }
        else {
          piVar9 = extraout_ECX;
          FUN_007fd370(auStack_20 + -0x14,puVar4);
          pvVar7 = FUN_00575050(puVar6,piVar9);
        }
        if (pvVar7 != (void *)0x0) {
          *(int *)((int)pvVar7 + 4) = *(int *)((int)pvVar7 + 4) + 1;
        }
        uStack_24 = pvVar7;
        FUN_005744a0((int)pvVar7);
        FUN_00574a90(pvVar7);
        iVar8 = FUN_00574ab0(pvVar7);
        pfVar1 = (float *)(*(int *)(param_1 + 0xe8) * 0x30 + iVar8);
        pfVar2 = (float *)(*(int *)(param_1 + 0xf0) * 0x30 + iVar8);
        auVar10._0_4_ =
             (pfVar1[2] - pfVar2[2]) * (pfVar1[2] - pfVar2[2]) +
             (pfVar1[1] - pfVar2[1]) * (pfVar1[1] - pfVar2[1]) +
             (*pfVar1 - *pfVar2) * (*pfVar1 - *pfVar2);
        auVar10._4_4_ = auVar10._0_4_;
        auVar10._8_4_ = auVar10._0_4_;
        auVar10._12_4_ = auVar10._0_4_;
        auStack_20 = sqrtps(auVar10,auVar10);
        *(undefined4 *)(param_1 + 0xb4) = auStack_20._0_4_;
        FUN_00565d20(&uStack_24);
      }
      *(float *)(param_1 + 0xb8) = *(float *)(param_1 + 0xb4) * 0.5;
      pvVar7 = (void *)FUN_004e4500(0x5c,"Animation/RotateController",0);
      if (pvVar7 == (void *)0x0) {
        piVar9 = (int *)0x0;
      }
      else {
        piVar9 = FUN_0056af40(pvVar7,*(undefined4 *)(param_1 + 0xa4));
      }
      if (piVar9 != (int *)0x0) {
        piVar9[1] = piVar9[1] + 1;
      }
      uStack_24 = piVar9;
      if (*(int *)(param_1 + 0xd4) != -1) {
        (**(code **)(*piVar9 + 0x50))();
      }
      if (*(int *)(param_1 + 0xd8) != -1) {
        (**(code **)(*piVar9 + 0x50))();
      }
      if (*(int *)(param_1 + 0xe8) != -1) {
        (**(code **)(*piVar9 + 0x50))();
      }
      if (*(int *)(param_1 + 0xdc) != -1) {
        FUN_0056b5c0(piVar9,*(int *)(param_1 + 0xdc));
      }
      if (*(int *)(param_1 + 0xe0) != -1) {
        auStack_20._0_12_ = ZEXT812(0xbf800000);
        auStack_20._12_4_ = 0xbf800000;
        FUN_0056b670(piVar9,*(int *)(param_1 + 0xe0),0,0x3e924925,(undefined4 *)auStack_20);
      }
      if (*(int *)(param_1 + 0xe4) != -1) {
        auStack_20._0_12_ = ZEXT812(0xbf800000);
        auStack_20._12_4_ = 0xbf800000;
        FUN_0056b670(piVar9,*(int *)(param_1 + 0xe4),0,0x3e924925,(undefined4 *)auStack_20);
      }
      if (*(int *)(param_1 + 0xec) != -1) {
        FUN_0056b5c0(piVar9,*(int *)(param_1 + 0xec));
      }
      if (*(int *)(param_1 + 0xf4) != -1) {
        FUN_0056b5c0(piVar9,*(int *)(param_1 + 0xf4));
      }
      FUN_0056ac70(piVar9,*(undefined4 *)(param_1 + 0xac));
      FUN_0056ac90(piVar9,0x3f1daee6);
      auVar3._12_4_ = 0;
      auVar3._0_12_ = ZEXT412(0x3f800000) << 0x40;
      auStack_20 = auVar3 << 0x20;
      (**(code **)(*piVar9 + 0x4c))();
      FUN_00854d50((undefined4 *)(param_1 + 0xd0),(int *)(auStack_20 + -8));
      (**(code **)(**(int **)(param_1 + 0xa4) + 0x14))
                (0x2711,*(undefined4 *)(param_1 + 0xd0),2,0xbf800000,0xbf800000,0,0,0,0);
      iVar8 = piVar9[1];
      piVar9[1] = iVar8 + -1;
      if (iVar8 + -1 == 0) {
        piVar9[1] = 1;
        (**(code **)*piVar9)(1);
      }
    }
  }
  return;
}

