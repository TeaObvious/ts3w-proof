/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0108d650 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_SetTaskContext [assembly=ScriptCore token=0x06000125; taskId:
   System.UInt64, context: ScriptCore.TaskContext&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_TaskControl__TaskControl_SetTaskContext(uint param_1,int param_2,int *param_3)

{
  undefined4 *puVar1;
  ushort uVar2;
  ushort *puVar3;
  int iVar4;
  int *piVar5;
  undefined4 *puVar6;
  uint uVar7;
  uint *puVar8;
  void *pvVar9;
  uint *puVar10;
  undefined8 *puVar11;
  int iVar12;
  size_t _Size;
  undefined4 *puVar13;
  undefined4 uVar14;
  undefined4 *extraout_EAX;
  undefined4 *extraout_EAX_00;
  undefined4 *extraout_EAX_01;
  uint uVar15;
  uint uVar16;
  longlong lVar17;
  int *piStack_c8;
  uint uStack_c4;
  undefined4 *puStack_c0;
  undefined4 *puStack_bc;
  int iStack_b8;
  void *pvStack_b4;
  int iStack_b0;
  int *piStack_ac;
  undefined4 uStack_a8;
  uint uStack_a4;
  int iStack_a0;
  uint uStack_9c;
  uint uStack_98;
  undefined4 *puStack_94;
  undefined4 *puStack_90;
  undefined4 auStack_80 [32];
  
  iVar4 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar4 == 0) {
    pvVar9 = (void *)0x0;
  }
  else {
    pvVar9 = (void *)(iVar4 + -8);
  }
  pvStack_b4 = pvVar9;
  lVar17 = (**(code **)(*(int *)((int)pvVar9 + 8) + 0x118))();
  if (lVar17 == CONCAT44(param_2,param_1)) {
    return (uint)lVar17 & 0xffffff00;
  }
  puVar6 = (undefined4 *)param_3[4];
  piStack_c8 = (int *)0x0;
  if (puVar6 != (undefined4 *)0x0) {
    if (((uint)puVar6 & 0xff000000) != 0x43000000) goto LAB_00d84e48;
    piVar5 = (int *)(**(code **)(*(int *)((int)pvVar9 + 8) + 0xcc))(puVar6);
    puVar6 = FUN_008c8d00(&piStack_c8,piVar5);
    if (piStack_c8 == (int *)0x0) goto LAB_00d84e48;
  }
  piVar5 = piStack_c8;
  puVar6 = (undefined4 *)FindTaskStateWithOptionalCreation(pvVar9,param_1,param_2,1);
  puStack_bc = puVar6;
  if (puVar6 != (undefined4 *)0x0) {
    uStack_a8 = FUN_00e75550();
    FUN_00d71d30((int)puVar6);
    iVar4 = *(int *)(param_3[1] + 8) + -1;
    puVar6[0x50] = iVar4;
    iStack_b8 = 0;
    if (-1 < iVar4) {
      piStack_ac = puVar6 + 0xf;
      iStack_b0 = 0;
      do {
        piVar5 = piStack_ac;
        puVar8 = (uint *)*piStack_ac;
        puVar1 = (undefined4 *)(iStack_b0 + 0x10 + param_3[1]);
        if (puVar8 == (uint *)0x0) {
          puVar8 = (uint *)FUN_00d71660();
          *piVar5 = (int)puVar8;
          memset(puVar8,0,0x2c);
        }
        puVar8[9] = 0;
        puVar8[8] = 0;
        puVar8[10] = 0;
        puVar3 = (ushort *)*puVar1;
        puVar8[1] = (uint)puVar3;
        uVar7 = FUN_00e52e80(uStack_a8,puVar3);
        *puVar8 = uVar7;
        puVar8[2] = puVar1[2];
        puVar8[3] = puVar1[3];
        puVar8[4] = puVar1[4];
        puVar8[6] = puVar1[5];
        puVar8[7] = puVar1[6];
        puVar8[10] = puVar1[7];
        puVar8[5] = 0;
        uVar2 = *(ushort *)(uVar7 + 0x38);
        puVar8[9] = (uint)uVar2;
        pvVar9 = (void *)FUN_00d71ac0((int)puStack_bc,(uint)uVar2);
        puVar8[8] = (uint)pvVar9;
        memset(pvVar9,0,puVar8[9]);
        if (iStack_b8 != 0) {
          piVar5 = (int *)piVar5[-1];
          *(uint *)(piVar5[8] + puVar8[6]) =
               (uint)*(ushort *)(*piVar5 + 0x3e) + (uint)*(ushort *)(*piVar5 + 0x34) + piVar5[4] +
               piVar5[8];
        }
        puVar10 = *(uint **)(*puVar8 + 0x30);
        puStack_94 = auStack_80;
        puStack_90 = auStack_80;
        if (puVar10 != (uint *)0x0) {
          if ((byte)*puVar10 == 0) {
LAB_00d849d4:
            puStack_90 = puStack_94;
          }
          else {
            do {
              puVar10 = FUN_00d84180(&uStack_98,(byte *)puVar10);
              if (puVar8[2] <= uStack_98) {
                if (uStack_98 == puVar8[2]) goto LAB_00d849e4;
                goto LAB_00d849d4;
              }
            } while ((char)*puVar10 != '\0');
            puStack_90 = puStack_94;
          }
        }
LAB_00d849e4:
        puVar6 = puStack_bc;
        if (iStack_b8 == puStack_bc[0x50]) {
          puVar6 = (undefined4 *)0x0;
          if (*param_3 == 0) goto LAB_00d84a1f;
          puVar6 = (undefined4 *)FUN_00d84040((int)&uStack_98,*param_3);
          puVar13 = puStack_94;
          if ((char)puVar6 != '\0') goto LAB_00d84a1f;
joined_r0x00d84d94:
          puVar6 = puVar13;
          if ((puStack_94 != (undefined4 *)0x0) && (puStack_94 != auStack_80)) {
            Memory_FreeIfNonNull(puStack_94);
            puVar6 = extraout_EAX_00;
          }
          if (piStack_c8 != (int *)0x0) {
            uVar7 = (**(code **)(*piStack_c8 + 4))();
            return uVar7 & 0xffffff00;
          }
          goto LAB_00d84e48;
        }
LAB_00d84a1f:
        uStack_c4 = (int)puStack_90 - (int)puStack_94 >> 3;
        if (uStack_c4 != puVar8[3]) {
          if ((puStack_94 != (undefined4 *)0x0) && (puStack_94 != auStack_80)) {
            Memory_FreeIfNonNull(puStack_94);
            puVar6 = extraout_EAX;
          }
          if (piStack_c8 != (int *)0x0) {
            uVar7 = (**(code **)(*piStack_c8 + 4))();
            return uVar7 & 0xffffff00;
          }
          goto LAB_00d84e48;
        }
        puStack_c0 = (undefined4 *)puVar1[9];
        if (puStack_c0 == (undefined4 *)0x0) {
          uVar7 = 0;
        }
        else {
          uVar7 = puStack_c0[2];
        }
        puVar13 = puVar6;
        if (uVar7 != uStack_c4) goto joined_r0x00d84d94;
        if (uStack_c4 != 0) {
          uVar7 = (uint)*(ushort *)(*puVar8 + 0x3e);
          uVar15 = (uint)*(ushort *)(*puVar8 + 0x34);
          uStack_9c = (puVar8[4] - uVar15) - uVar7;
          uVar16 = 0;
          iStack_a0 = uVar15 + uVar7 + puVar8[8];
          puVar8 = (uint *)(uVar7 + puVar8[8]);
          uStack_a4 = 0;
          if (uStack_c4 != 0) {
            puStack_c0 = puStack_c0 + 4;
LAB_00d84a92:
            puVar6 = (undefined4 *)(uint)*(byte *)(puStack_94 + uVar16 * 2);
            puVar1 = (undefined4 *)*puStack_c0;
            switch(puVar6) {
            case (undefined4 *)0x0:
              if (puVar1 != (undefined4 *)0x0) {
                iVar4 = FUN_00ea1930(puVar1);
                iVar12 = FUN_00e759e0();
                if (iVar4 == iVar12) {
                  puVar10 = FUN_00ea1940(puVar1);
                  uVar7 = *puVar10;
LAB_00d84bf3:
                  *puVar8 = uVar7;
                  goto LAB_00d84bf5;
                }
              }
              break;
            case (undefined4 *)0x1:
              if (puVar1 != (undefined4 *)0x0) {
                iVar4 = FUN_00ea1930(puVar1);
                iVar12 = FUN_00e75a10();
                if (iVar4 == iVar12) {
                  puVar10 = FUN_00ea1940(puVar1);
                  *puVar8 = *puVar10;
                  puVar8[1] = puVar10[1];
                  goto LAB_00d84bf5;
                }
              }
              break;
            case (undefined4 *)0x2:
              if (puVar1 != (undefined4 *)0x0) {
                iVar4 = FUN_00ea1930(puVar1);
                iVar12 = FUN_00e75a40();
                if (iVar4 == iVar12) {
                  puVar11 = (undefined8 *)FUN_00ea1940(puVar1);
                  *(undefined8 *)puVar8 = *puVar11;
                  goto LAB_00d84bf5;
                }
              }
              break;
            case (undefined4 *)0x3:
              *puVar8 = (uint)puVar1;
LAB_00d84bf5:
              puStack_c0 = puStack_c0 + 1;
              uVar16 = uVar16 + 1;
              puVar8 = puVar8 + 2;
              if (uStack_c4 <= uVar16) goto LAB_00d84c0e;
              goto LAB_00d84a92;
            case (undefined4 *)0x4:
              iVar4 = puStack_94[uVar16 * 2 + 1];
              if ((puVar1 != (undefined4 *)0x0) && (iVar12 = FUN_00ea1930(puVar1), iVar12 == iVar4))
              {
                _Size = FUN_00e6f890(iVar4,(uint *)0x0);
                uVar7 = iStack_a0 + uStack_a4;
                uStack_a4 = uStack_a4 + (_Size + 7 & 0xfffffff8);
                if (uStack_a4 <= uStack_9c) {
                  *puVar8 = uVar7;
                  puVar6 = FUN_00ea1940(puVar1);
                  memcpy((void *)*puVar8,puVar6,_Size);
                  goto LAB_00d84bf5;
                }
              }
              break;
            case (undefined4 *)0x5:
              break;
            case (undefined4 *)0x6:
              if ((puVar1 != (undefined4 *)0x0) &&
                 (iVar4 = FUN_00ea1930(puVar1), iVar4 == DAT_01221ea8)) {
                puVar6 = FUN_00ea1940(puVar1);
                uVar7 = 0;
                if (((ushort *)*puVar6 == (ushort *)0x0) ||
                   (uVar7 = FUN_00e52e80(uStack_a8,(ushort *)*puVar6), uVar7 != 0))
                goto LAB_00d84bf3;
              }
              break;
            default:
              if ((puStack_94 != (undefined4 *)0x0) && (puStack_94 != auStack_80)) {
                Memory_FreeIfNonNull(puStack_94);
                puVar6 = extraout_EAX_01;
              }
              if (piStack_c8 != (int *)0x0) {
                puVar6 = (undefined4 *)(**(code **)(*piStack_c8 + 4))();
              }
              goto LAB_00d84e48;
            }
            puVar6 = (undefined4 *)FUN_00d83e30((int)&uStack_98);
            if (piStack_c8 != (int *)0x0) {
              uVar7 = (**(code **)(*piStack_c8 + 4))();
              return uVar7 & 0xffffff00;
            }
            goto LAB_00d84e48;
          }
        }
LAB_00d84c0e:
        if ((puStack_94 != (undefined4 *)0x0) && (puStack_94 != auStack_80)) {
          Memory_FreeIfNonNull(puStack_94);
        }
        piStack_ac = piStack_ac + 1;
        iStack_b0 = iStack_b0 + 0x28;
        iStack_b8 = iStack_b8 + 1;
      } while (iStack_b8 <= (int)puStack_bc[0x50]);
      pvVar9 = pvStack_b4;
      puVar6 = puStack_bc;
    }
    if ((int)puVar6[0x50] < (int)puVar6[0x51]) {
      do {
        iVar4 = puVar6[0x51];
        puVar6[0x51] = iVar4 + -1;
        if ((undefined4 *)puVar6[iVar4 + 0xf] != (undefined4 *)0x0) {
          FUN_00d71670((undefined4 *)puVar6[iVar4 + 0xf]);
          puVar6[iVar4 + 0xf] = 0;
        }
      } while ((int)puVar6[0x50] < (int)puVar6[0x51]);
    }
    puVar1 = (undefined4 *)puVar6[0xf];
    *puVar6 = puVar1[1];
    puVar6[1] = puVar1[10];
    *(undefined1 *)((int)puVar6 + 0x14a) = 0;
    iVar4 = FUN_00e85330((ushort *)puVar1[1]);
    puVar6[9] = iVar4;
    piVar5 = RuntimeTypeDescriptor_ResolveClass(*(int **)(iVar4 + 0xc));
    puVar6[10] = piVar5;
    puVar6[6] = 0;
    puVar6[7] = 0;
    puVar6[8] = 0;
    puVar6[0xd] = 0;
    puVar6[0xb] = 0;
    puVar6[0xe] = 0;
    *(undefined1 *)((int)puVar6 + 0x14b) = 0;
    puVar6[0x53] = 0;
    if ((ushort *)*param_3 != (ushort *)0x0) {
      uVar7 = FUN_00e52e80(uStack_a8,(ushort *)*param_3);
      puVar6[0x53] = uVar7;
    }
    if (puVar6[0xc] == 0) {
      puVar13 = (undefined4 *)FUN_00d719c0();
      puVar6[0xc] = puVar13;
      *puVar13 = 0;
      puVar13[1] = 0;
      puVar13[2] = 0;
      puVar13[3] = 0;
      puVar13[4] = 0;
      puVar13[5] = 0;
      puVar13[6] = 0;
      puVar13[7] = 0;
      puVar13[8] = 0;
      puVar13[9] = 0;
      puVar13[1] = *puVar1;
    }
    piVar5 = piStack_c8;
    uVar7 = uStack_c4 >> 8;
    uStack_c4 = uStack_c4 & 0xffffff00;
    if (param_3[2] == -3) {
      uStack_c4 = CONCAT31((int3)uVar7,1);
    }
    uVar14 = FUN_00d77ed0(pvVar9,param_1,param_2,param_3[2],param_3[3],piStack_c8,(char)uStack_c4);
    if (piVar5 != (int *)0x0) {
      uVar14 = (**(code **)(*piVar5 + 4))();
    }
    return CONCAT31((int3)((uint)uVar14 >> 8),1);
  }
  if (piVar5 != (int *)0x0) {
    uVar7 = (**(code **)(*piVar5 + 4))();
    return uVar7 & 0xffffff00;
  }
LAB_00d84e48:
  return (uint)puVar6 & 0xffffff00;
}

