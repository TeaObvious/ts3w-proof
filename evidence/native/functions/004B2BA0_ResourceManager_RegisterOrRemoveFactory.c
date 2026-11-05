/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. Registered factory mutation: ECX manager, three
   physical DWORD stack words and RET0C; AL status. Add/remove branches maintain type buckets and
   ordered factory/priority entries with reference ownership. Existing virtual factory/allocator
   types remain opaque. The stored decompiler signature is inferred and is not an independently
   established foreign prototype. Full owned range 004b2ba0..004b2ecf; instruction bytes unchanged.
    */

undefined4 ResourceManager_RegisterOrRemoveFactory(char param_1,int *param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  uint *in_ECX;
  int *piVar5;
  uint *unaff_ESI;
  uint *puVar6;
  uint uVar7;
  int *piVar8;
  LPCRITICAL_SECTION this;
  uint uStack_84;
  int *piStack_80;
  LPCRITICAL_SECTION p_Stack_7c;
  uint *puStack_78;
  undefined4 uStack_74;
  uint auStack_70 [4];
  undefined4 uStack_60;
  char *pcStack_5c;
  uint *puStack_58;
  undefined4 uStack_54;
  uint uStack_4c;
  int aiStack_48 [6];
  uint auStack_30 [4];
  uint auStack_20 [7];
  int iStack_4;
  
  uVar1 = 0;
  if (param_2 != (int *)0x0) {
    if (param_1 == '\0') {
      this = (LPCRITICAL_SECTION)(in_ECX + 0x68);
      p_Stack_7c = this;
      FUN_004e1c00(this,(uint *)&DAT_00fb3ce0);
      PickCandidateMap_Begin(in_ECX + 0x1e,&uStack_84);
      uVar2 = *(uint *)(in_ECX[0x1f] + in_ECX[0x20] * 4);
      uVar7 = uStack_84;
      auStack_70[0] = uVar2;
      if (uStack_84 != uVar2) {
        do {
          piVar5 = *(int **)(uVar7 + 4);
          if (piVar5 != *(int **)(uVar7 + 8)) {
            piVar8 = piVar5 + 2;
            do {
              if ((int *)*piVar5 == param_2) {
                iVar4 = (**(code **)(*param_2 + 0xc))();
                if (iVar4 == 1) {
                  (**(code **)(*param_2 + 0x14))();
                }
                if (piVar8 < *(int **)(uVar7 + 8)) {
                  FUN_004b0d60(piVar8,*(int **)(uVar7 + 8),piVar5);
                }
                *(int *)(uVar7 + 8) = *(int *)(uVar7 + 8) + -8;
                if ((int *)**(int **)(uVar7 + 8) != (int *)0x0) {
                  (**(code **)(*(int *)**(int **)(uVar7 + 8) + 8))();
                }
              }
              else {
                piVar5 = piVar5 + 2;
                piVar8 = piVar8 + 2;
              }
              uVar2 = auStack_70[0];
            } while (piVar5 != *(int **)(uVar7 + 8));
          }
          uVar7 = *(uint *)(uVar7 + 0x1c);
          while (uVar7 == 0) {
            puVar3 = (uint *)(piStack_80 + 1);
            piStack_80 = piStack_80 + 1;
            uVar7 = *puVar3;
          }
          this = p_Stack_7c;
        } while (uVar7 != uVar2);
      }
      FUN_004e1cc0(this);
    }
    else {
      puStack_78 = in_ECX;
      (**(code **)(*param_2 + 0x10))();
      uVar2 = (**(code **)(*param_2 + 0x2c))(0,0);
      puVar3 = auStack_20;
      if (8 < uVar2) {
        puVar3 = (uint *)(**(code **)(*(int *)in_ECX[2] + 8))
                                   (uVar2 * 4,"ResourceSystem/ResourceMan/TypeIdArray",0);
      }
      (**(code **)(*param_2 + 0x2c))(puVar3,uVar2);
      FUN_004e1c00(in_ECX + 0x68,(uint *)&DAT_00fb3ce0);
      if (uVar2 != 0) {
        do {
          uStack_84 = uVar2;
          FUN_00577090(in_ECX + 0x1e,&puStack_78,puVar3);
          puVar6 = puStack_78;
          if (puStack_78 == *(uint **)(in_ECX[0x1f] + in_ECX[0x20] * 4)) {
            auStack_70[3] = in_ECX[2];
            auStack_70[0] = 0;
            auStack_70[1] = 0;
            auStack_70[2] = 0;
            uStack_60 = 0;
            pcStack_5c = "ResourceSystem/ResourceMan/Mgr/FArray";
            FUN_004b1b30(&uStack_4c,puVar3,(int *)auStack_70);
            FUN_004b0c20((int *)auStack_70);
            FUN_004b24f0(in_ECX + 0x1e,&puStack_58,&uStack_4c);
            puVar6 = puStack_58;
            uStack_74 = uStack_54;
            puStack_78 = puStack_58;
            FUN_004b0c20(aiStack_48);
          }
          iVar4 = iStack_4;
          for (piVar5 = (int *)puVar6[1];
              ((piVar5 != (int *)puVar6[2] && ((int *)*piVar5 != param_2)) &&
              (iStack_4 <= piVar5[1])); piVar5 = piVar5 + 2) {
          }
          if (piVar5 == (int *)puVar6[2]) {
            piStack_80 = param_2;
            (**(code **)(*param_2 + 4))();
            piVar5 = (int *)puVar6[2];
            p_Stack_7c = (LPCRITICAL_SECTION)iVar4;
            if (piVar5 < (int *)puVar6[3]) {
              puVar6[2] = (uint)(piVar5 + 2);
              if (piVar5 != (int *)0x0) {
                *piVar5 = (int)param_2;
                (**(code **)(*param_2 + 4))();
                piVar5[1] = iVar4;
              }
            }
            else {
              FUN_004b22b0(puVar6 + 1,piVar5,(int *)&piStack_80);
            }
            if (piStack_80 != (int *)0x0) {
              (**(code **)(*piStack_80 + 8))();
            }
          }
          else {
            (**(code **)(*param_2 + 4))();
            piVar8 = (int *)puVar6[2];
            if ((piVar8 == (int *)puVar6[3]) || (piVar5 != piVar8)) {
              FUN_004b22b0(puVar6 + 1,piVar5,(int *)&stack0xffffff6c);
            }
            else {
              puVar6[2] = (uint)(piVar8 + 2);
              if (piVar8 != (int *)0x0) {
                *piVar8 = (int)param_2;
                (**(code **)(*param_2 + 4))();
                piVar8[1] = iStack_4;
              }
            }
            if (param_2 != (int *)0x0) {
              (**(code **)(*param_2 + 8))();
            }
          }
          puVar3 = puVar3 + 1;
          in_ECX = auStack_20;
          uVar2 = uStack_84 - 1;
        } while (uStack_84 - 1 != 0);
        uStack_84 = 0;
        puVar3 = unaff_ESI;
      }
      FUN_004e1cc0((LPCRITICAL_SECTION)(in_ECX + 0x68));
      if (puVar3 != auStack_30) {
        (**(code **)(*(int *)in_ECX[2] + 0xc))(puVar3,0);
        return 1;
      }
    }
    uVar1 = 1;
  }
  return uVar1;
}

