/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX binding owner, no stack args; pointer result in EAX.
   Original resource-slot/LOD resolution path revisits pending+5D via6DBE80 for available slots;
   clone path rereads replacedslot before use. Includes alternative resource/LOD switching and
   unresolved external callbacks, not a single stable lifetime certificate. Pending material is
   replayed after acquisition; no write to SceneModel+2A4 is established here. Opaque float/int
   decompiler aliases are reused raw storage, not all original source types. */

undefined4 * __fastcall ModelBinding_ResolveAvailableLodAndPendingMaterial(uint *param_1)

{
  uint *puVar1;
  float *lodSlot;
  uint *puVar2;
  int *piVar3;
  bool bVar4;
  char cVar5;
  uint uVar6;
  float fVar7;
  int iVar8;
  undefined4 *puVar9;
  uint uVar10;
  undefined4 *puVar11;
  void *pvVar12;
  void *this;
  bool bVar13;
  undefined4 *local_30;
  float local_2c;
  undefined4 local_28;
  float local_24;
  float local_20;
  int local_1c;
  int *local_18;
  int *piStack_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar2 = (uint *)param_1[0x11];
  if (((puVar2 != (uint *)0x0) && (*puVar2 != 0)) && ((*puVar2 & 3) == 0)) {
    if ((*(uint *)(param_1[0x11] + 4) & 3) == 0) {
      iVar8 = *(int *)(param_1[0x11] + 4);
    }
    else {
      iVar8 = 0;
    }
    bVar4 = false;
    if (iVar8 == 0) {
      if ((*(uint *)param_1[0x11] & 3) == 0) {
        pvVar12 = *(void **)param_1[0x11];
      }
      else {
        pvVar12 = (void *)0x0;
      }
      uVar6 = FUN_00c2ed00((int)pvVar12);
      puVar11 = (undefined4 *)(uint)(1 < uVar6);
      if ((((param_1[1] & 3) == 0) && (this = (void *)param_1[1], this != (void *)0x0)) ||
         (((*param_1 & 3) == 0 && (this = (void *)*param_1, this != (void *)0x0)))) {
        local_24 = (float)param_1[6];
        fVar7 = (float)FUN_00c2ed00((int)this);
        if ((uint)local_24 < (uint)fVar7) {
          iVar8 = FUN_006d0570(this,(int)local_24);
          local_24 = (*(float *)(iVar8 + 0xc) + *(float *)(iVar8 + 8)) * _DAT_00f9b5b4;
          local_1c = FUN_00c2ed00((int)pvVar12);
          uVar6 = 0;
          local_30 = (undefined4 *)0xffffffff;
          local_2c = DAT_00fab220;
          if (0 < local_1c) {
            do {
              iVar8 = FUN_006d0570(pvVar12,uVar6);
              if ((*(uint *)(iVar8 + 4) < 0x10000) &&
                 (local_20 = ABS((*(float *)(iVar8 + 0xc) + *(float *)(iVar8 + 8)) * _DAT_00f9b5b4 -
                                 local_24), local_20 < local_2c)) {
                local_30 = (undefined4 *)uVar6;
                local_2c = local_20;
              }
              uVar6 = uVar6 + 1;
            } while ((int)uVar6 < local_1c);
            if (-1 < (int)local_30) {
              puVar11 = local_30;
            }
          }
        }
      }
      FUN_006d0570(pvVar12,(int)puVar11);
      if (*(int *)(param_1[0x11] + 8) == 0) {
        local_10 = 0;
        local_c = 0;
        local_8 = 0;
        local_4 = 0;
        puVar9 = (undefined4 *)FUN_006d04f0(pvVar12,(int)puVar11);
        if (puVar9 == (undefined4 *)0x0) {
          bVar13 = FUN_006d0500(pvVar12,(int)puVar11,&local_10);
          if (!bVar13) goto LAB_006dc4d6;
          FUN_006db690((void *)(param_1[0x11] + 4),&local_10,0,0,(int)(short)param_1[8]);
          *(undefined4 **)(param_1[0x11] + 0xc) = puVar11;
        }
        else {
          FUN_00a9b9b0((void *)(param_1[0x11] + 4),puVar9);
          *(undefined4 **)(param_1[0x11] + 0xc) = puVar11;
        }
LAB_006dc4d1:
        bVar4 = true;
      }
      else {
        FUN_00c7ecd0((uint *)(param_1[0x11] + 4));
        local_28 = 0;
        cVar5 = (**(code **)(**(int **)(param_1[0x11] + 8) + 0x10))(pvVar12,puVar11,&local_28);
        if (cVar5 != '\0') {
          FUN_006db6e0((void *)(param_1[0x11] + 4),local_28);
          *(undefined4 **)(param_1[0x11] + 0xc) = puVar11;
          goto LAB_006dc4d1;
        }
      }
LAB_006dc4d6:
      if (((*(uint *)(param_1[0x11] + 4) & 3) == 0) &&
         (iVar8 = *(int *)(param_1[0x11] + 4), iVar8 != 0)) {
        if (bVar4) {
          ModelBinding_RebindMaterialOnLod(param_1,(void *)(param_1[0x11] + 4));
          if ((*(uint *)(param_1[0x11] + 4) & 3) != 0) goto LAB_006dc555;
          iVar8 = *(int *)(param_1[0x11] + 4);
        }
        if (iVar8 != 0) goto LAB_006dc513;
      }
    }
    else {
LAB_006dc513:
      if ((*(int *)(iVar8 + 0x30) == 3) && (puVar2 = param_1 + 0x10, param_1[0x10] != 0)) {
        FUN_005a9550(&local_18,(int *)puVar2);
        piVar3 = (int *)*puVar2;
        if (piVar3 != (int *)0x0) {
          *puVar2 = 0;
          (**(code **)(*piVar3 + 4))();
        }
        (**(code **)(*local_18 + 0x10))();
        (**(code **)(*local_18 + 4))();
      }
    }
  }
LAB_006dc555:
  if (*(char *)((int)param_1 + 0x5e) == '\0') {
    return (undefined4 *)0x0;
  }
  bVar4 = false;
  if (param_1[1] == 0) {
    lodSlot = (float *)(param_1 + 3);
    if (((param_1[3] & 3) == 0) &&
       (local_30 = (undefined4 *)*lodSlot, local_30 != (undefined4 *)0x0)) {
      if (*(char *)((int)param_1 + 0x5d) != '\0') {
        if ((((((uint)*lodSlot & 3) == 0) && (*lodSlot != 0.0)) && ((char)param_1[0x17] != '\0')) &&
           (*(char *)((int)*lodSlot + 0x72) == '\0')) {
          bVar13 = true;
        }
        else {
          bVar13 = false;
        }
        ModelBinding_RebindMaterialOnLod(param_1,lodSlot);
        if (((bVar13) && (((uint)*lodSlot & 3) == 0)) && (*lodSlot != 0.0)) {
          FUN_006dac10((void *)*lodSlot,'\x01',param_1 + 0x18);
        }
        if (((uint)*lodSlot & 3) != 0) goto LAB_006dc82e;
        local_30 = (undefined4 *)*lodSlot;
      }
      if (local_30 != (undefined4 *)0x0) {
        if ((((param_1[2] & 3) == 0) && (param_1[2] != 0)) ||
           (*(char *)((int)local_30 + 0x71) != '\0')) {
          bVar13 = local_30[0xc] == 3;
        }
        else if ((local_30[0xc] == 2) || (local_30[0xc] == 3)) {
          bVar13 = true;
        }
        else {
          bVar13 = false;
        }
        if (bVar13) {
          if ((int *)param_1[0xf] != (int *)0x0) {
            if (((uint)*lodSlot & 3) == 0) {
              local_24 = *lodSlot;
            }
            else {
              local_24 = 0.0;
            }
            if ((param_1[2] & 3) == 0) {
              local_2c = (float)param_1[2];
            }
            else {
              local_2c = 0.0;
            }
            if ((*param_1 & 3) == 0) {
              uVar6 = *param_1;
            }
            else {
              uVar6 = 0;
            }
            if ((*param_1 & 3) == 0) {
              uVar10 = *param_1;
            }
            else {
              uVar10 = 0;
            }
            (**(code **)(*(int *)param_1[0xf] + 0x20))
                      (uVar10,uVar6,local_2c,local_24,param_1[5],param_1[6]);
          }
          FUN_00a9b9b0(param_1 + 2,local_30);
          FUN_00a9b9b0(lodSlot,(undefined4 *)0x0);
          FUN_006dc050(param_1,param_1 + 2);
          param_1[7] = param_1[7] + 1;
          param_1[5] = param_1[6];
        }
      }
    }
  }
  else {
    if (((param_1[1] != 0) && ((param_1[1] & 3) == 0)) &&
       (((puVar2 = param_1 + 3, (param_1[3] & 3) == 0 &&
         (local_30 = (undefined4 *)*puVar2, local_30 != (undefined4 *)0x0)) ||
        ((FUN_006dbb10(param_1,0.0,'\x01'), (*puVar2 & 3) == 0 &&
         (local_30 = (undefined4 *)*puVar2, local_30 != (undefined4 *)0x0)))))) {
      if (*(char *)((int)param_1 + 0x5d) != '\0') {
        ModelBinding_RebindMaterialOnLod(param_1,puVar2);
        if ((*puVar2 & 3) != 0) goto LAB_006dc6de;
        local_30 = (undefined4 *)*puVar2;
      }
      if ((local_30 != (undefined4 *)0x0) && (local_30[0xc] == 3)) {
        if ((param_1[0x11] == 0) && (puVar1 = param_1 + 0x10, param_1[0x10] != 0)) {
          FUN_005a9550(&piStack_14,(int *)puVar1);
          piVar3 = (int *)*puVar1;
          if (piVar3 != (int *)0x0) {
            *puVar1 = 0;
            (**(code **)(*piVar3 + 4))();
          }
          (**(code **)(*piStack_14 + 0x10))();
          (**(code **)(*piStack_14 + 4))();
        }
        uVar6 = 0;
        if ((int *)param_1[0xf] != (int *)0x0) {
          if ((*puVar2 & 3) == 0) {
            local_2c = (float)*puVar2;
          }
          else {
            local_2c = 0.0;
          }
          if ((param_1[2] & 3) == 0) {
            local_24 = (float)param_1[2];
          }
          else {
            local_24 = 0.0;
          }
          if ((param_1[1] & 3) == 0) {
            uVar6 = param_1[1];
          }
          if ((*param_1 & 3) == 0) {
            uVar10 = *param_1;
          }
          else {
            uVar10 = 0;
          }
          (**(code **)(*(int *)param_1[0xf] + 0x20))
                    (uVar10,uVar6,local_24,local_2c,param_1[5],param_1[6]);
        }
        FUN_00a9b9b0(param_1 + 2,local_30);
        FUN_00a9b9b0(puVar2,(undefined4 *)0x0);
        param_1[7] = param_1[7] + 1;
        param_1[5] = param_1[6];
        FUN_00c30730(param_1,param_1 + 1);
        FUN_00a9b9b0(param_1 + 1,(undefined4 *)0x0);
        FUN_006dc050(param_1,param_1 + 2);
        goto LAB_006dc82e;
      }
    }
LAB_006dc6de:
    bVar4 = true;
  }
LAB_006dc82e:
  if ((param_1[2] & 3) == 0) {
    puVar11 = (undefined4 *)param_1[2];
  }
  else {
    puVar11 = (undefined4 *)0x0;
  }
  if (bVar4) {
    if (puVar11 == (undefined4 *)0x0) {
      return (undefined4 *)0x0;
    }
  }
  else if (puVar11 == (undefined4 *)0x0) {
    if ((*param_1 & 3) != 0) {
      return (undefined4 *)0x0;
    }
    pvVar12 = (void *)*param_1;
    if (pvVar12 == (void *)0x0) {
      return (undefined4 *)0x0;
    }
    if (((param_1[3] & 3) == 0) && (param_1[3] != 0)) {
      return (undefined4 *)0x0;
    }
    iVar8 = FUN_00c2ed00((int)pvVar12);
    uVar6 = iVar8 - 1;
    if (-1 < (int)uVar6) {
      do {
        iVar8 = FUN_006d0570(pvVar12,uVar6);
        if ((*(uint *)(iVar8 + 4) < 0x10000) &&
           (puVar11 = (undefined4 *)FUN_006d04f0(pvVar12,uVar6), puVar11 != (undefined4 *)0x0)) {
          param_1[6] = uVar6;
          FUN_00a9b9b0(param_1 + 3,puVar11);
          *(undefined1 *)((int)param_1 + 0x5d) = 1;
          break;
        }
        uVar6 = uVar6 - 1;
      } while (-1 < (int)uVar6);
      if (puVar11 != (undefined4 *)0x0) goto LAB_006dc8d4;
    }
    if ((param_1[3] & 1) == 0) {
      FUN_006dba60(param_1);
    }
    return (undefined4 *)0x0;
  }
LAB_006dc8d4:
  if ((puVar11[0xc] != 2) && (puVar11[0xc] != 3)) {
    return (undefined4 *)0x0;
  }
  if ((param_1[0xe] != 0) && (cVar5 = FUN_006dabe0((int)puVar11), cVar5 == '\0')) {
    FUN_006daba0(puVar11,param_1[0xe]);
  }
  return puVar11;
}

