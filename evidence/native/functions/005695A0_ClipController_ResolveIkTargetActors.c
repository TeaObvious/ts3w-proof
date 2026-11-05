/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX clip controller,no stack arguments.
   Iterates CLIP IK chains/targets, reads bound object GUID, compares with ClipIkInfo owner00577A10.
   Equal owner targets resolve to actual playing actor; other GUIDs resolve via00934320. Retrieves
   animation component/rig, bone lookup and appends executable target records; missing
   actor/component/bone may omit output. Current retarget projection only preserves/changes GUID
   rows and does not establish this full physical binding result. */

void __fastcall ClipController_ResolveIkTargetActors(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  void *pvVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  void *pvVar9;
  int *piVar10;
  int iVar11;
  uint uStack_38;
  uint uStack_30;
  int iStack_18;
  int iStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_1 + 0x28);
  *(undefined1 *)(param_1 + 0x5fc) = 0;
  pvVar4 = (void *)(**(code **)(**(int **)(param_1 + 0x1c) + 0x24))();
  uVar5 = FUN_00577a80(param_1 + 0x4f0);
  uStack_38 = 0;
  if (uVar5 != 0) {
    do {
      iStack_18 = 0;
      iStack_14 = 0;
      uVar6 = FUN_00577ae0((void *)(param_1 + 0x4f0),uStack_38);
      uStack_30 = 0;
      if (uVar6 != 0) {
        do {
          iStack_18 = 0;
          iStack_14 = 0;
          uStack_c = 0;
          uStack_10 = 0xffffffff;
          uVar7 = FUN_00577b40((void *)(param_1 + 0x4f0),uStack_38,uStack_30,&iStack_18);
          if ((char)uVar7 != '\0') {
            iVar8 = FUN_00577a10(param_1 + 0x4f0);
            if (iVar8 == 0) {
              iVar11 = 0;
              iVar8 = 0;
            }
            else {
              iVar11 = *(int *)(iVar8 + 8);
              iVar8 = *(int *)(iVar8 + 0xc);
            }
            if (((iStack_18 != iVar11) || (pvVar9 = pvVar4, iStack_14 != iVar8)) &&
               ((pvVar9 = (void *)FUN_00934320(&iStack_18), pvVar9 == (void *)0x0 ||
                ((*(int *)((int)pvVar9 + 8) != *(int *)((int)pvVar4 + 8) ||
                 (*(int *)((int)pvVar9 + 0xc) != *(int *)((int)pvVar4 + 0xc))))))) {
              *(undefined1 *)(param_1 + 0x5fc) = 1;
            }
            if (pvVar9 != (void *)0x0) {
              uVar1 = *(undefined4 *)((int)pvVar9 + 0xc);
              uVar2 = *(undefined4 *)((int)pvVar9 + 8);
              pvVar9 = Object_GetComponentByMask(pvVar9,DAT_011dd484);
              if ((pvVar9 != (void *)0x0) &&
                 (piVar10 = (int *)(**(code **)(*(int *)((int)pvVar9 + 8) + 0x20))(),
                 piVar10 != (int *)0x0)) {
                (**(code **)*piVar10)();
                iVar8 = FUN_00575c80((int)(piVar10 + 10));
                uVar3 = uStack_10;
                if (iVar8 != -1) {
                  FUN_005694f0((void *)(param_1 + 0x28));
                  iVar11 = *(int *)(param_1 + 0x2c);
                  *(undefined4 *)(iVar11 + -0x14) = uVar1;
                  *(undefined4 *)(iVar11 + -0x18) = uVar2;
                  *(uint *)(iVar11 + -0x10) = uStack_38;
                  *(uint *)(iVar11 + -0xc) = uStack_30;
                  *(int *)(iVar11 + -8) = iVar8;
                  *(undefined4 *)(iVar11 + -4) = uVar3;
                }
                (**(code **)(*piVar10 + 4))();
              }
            }
          }
          uStack_30 = uStack_30 + 1;
        } while (uStack_30 < uVar6);
      }
      uStack_38 = uStack_38 + 1;
    } while (uStack_38 < uVar5);
  }
  return;
}

