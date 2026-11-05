/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163a80 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetDoorRoomsImpl [assembly=ScriptCore token=0x06000854; scriptHandle:
   System.UInt64, roomDef: Sims3.SimIFace.eRoomDefinition; return=System.Int32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint * ScriptCore_World__World_GetDoorRoomsImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  uint *puVar1;
  short sVar2;
  void *pvVar3;
  undefined4 *puVar4;
  void *pvVar5;
  int *piVar6;
  int iVar7;
  undefined4 *unaff_EBP;
  uint uVar8;
  uint uVar9;
  uint *puVar10;
  uint uVar11;
  float yaw;
  undefined4 uStack_98;
  char acStack_94 [4];
  undefined2 uStack_90;
  undefined1 uStack_8e;
  undefined1 uStack_8d;
  void *pvStack_8c;
  undefined4 *puStack_88;
  uint uStack_84;
  void *pvStack_80;
  uint *puStack_7c;
  uint *puStack_78;
  char *pcStack_74;
  uint uStack_70;
  float fStack_6c;
  float fStack_68;
  int iStack_64;
  float fStack_60;
  float fStack_5c;
  int iStack_58;
  uint uStack_54;
  float fStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  float fStack_44;
  float fStack_40;
  int iStack_3c;
  float fStack_38;
  float fStack_34;
  int iStack_30;
  char acStack_2c [8];
  void *pvStack_24;
  uint uStack_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  puVar4 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (puVar4 == (undefined4 *)0x0) {
    return (uint *)0x0;
  }
  LOCK();
  puVar4[1] = puVar4[1] + 1;
  UNLOCK();
  puStack_88 = puVar4;
  pvVar3 = Object_GetComponentByMask(puVar4,DAT_011edf08);
  if ((pvVar3 != (void *)0x0) &&
     (pvVar5 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,puVar4 + 6), pvStack_24 = pvVar5,
     pvVar5 != (void *)0x0)) {
    piVar6 = (int *)FUN_0068f130((int)puVar4);
    if ((piVar6 == (int *)0x0) || (iVar7 = (**(code **)(*piVar6 + 0xc))(0x90566b0e), iVar7 == 0)) {
      pvStack_8c = (void *)0x0;
    }
    else {
      pvStack_8c = *(void **)(iVar7 + 0x298);
    }
    if (pvStack_8c != (void *)0x0) {
      ObjectLocation_CopyXZLevel(pvVar3,&fStack_50,&uStack_4c,&uStack_48);
      fStack_1c = fStack_50;
      uStack_18 = uStack_4c;
      uStack_14 = uStack_48;
      yaw = PlacementLocation_ReadYawWithRefresh(pvVar3);
      uStack_54 = Placement_QuantizeYawToOctant(yaw);
      uVar11 = (*(int *)((int)pvVar5 + 0xd8) - *(int *)((int)pvVar5 + 0xd4)) / 0x28;
      uVar9 = uVar11 + 1 & 0xfffffffe;
      pcStack_74 = "Scripting/WorldHost";
      pvStack_80 = (void *)0x0;
      puStack_78 = (uint *)0x0;
      puStack_7c = (uint *)0x0;
      uStack_98 = uVar11;
      uStack_84 = uVar9;
      FUN_004d5650(&pvStack_80,uVar9);
      uVar8 = 0;
      if (uVar11 != 0) {
        puVar10 = puStack_7c;
        do {
          uStack_10 = 0;
          uStack_c = 0;
          uStack_8 = 0;
          uStack_4 = 0;
          fStack_6c = -1.0;
          fStack_68 = -1.0;
          iStack_64 = 0;
          fStack_60 = -1.0;
          fStack_5c = -1.0;
          iStack_58 = 0;
          ObjectCatalog_ReadWallPlacementRow
                    (pvStack_24,uVar8,&fStack_6c,&fStack_68,&fStack_60,&fStack_5c,&iStack_64,
                     &uStack_10);
          iStack_58 = iStack_64;
          puVar1 = puStack_7c;
          if (iStack_64 == 0) {
            iStack_3c = iStack_64;
            iStack_30 = iStack_64;
            fStack_44 = fStack_6c;
            fStack_40 = fStack_68;
            fStack_38 = fStack_60;
            fStack_34 = fStack_5c;
            FUN_00c45750(&fStack_44,&uStack_54,&fStack_44,uVar8 >> 1);
            FUN_00c456b0(&fStack_44,&fStack_1c,&fStack_44);
            FUN_00784df0(acStack_2c,&fStack_44,&fStack_38);
            uStack_90._0_1_ = -1;
            uStack_90._1_1_ = 0xff;
            uStack_8e = 0;
            uStack_8d = 0xff;
            acStack_94[0] = -1;
            acStack_94[1] = 0xff;
            acStack_94[2] = 0;
            acStack_94[3] = 0xff;
            WallLocator_QueryFirstAdjacentTile(acStack_2c,&uStack_90);
            WallLocator_QueryOtherAdjacentTile((undefined2 *)acStack_2c,(undefined2 *)acStack_94);
            sVar2 = FUN_00b470e0(pvStack_8c,(char *)&uStack_90,param_3,'\0');
            uStack_70 = FUN_00b470e0(pvStack_8c,acStack_94,param_3,'\0');
            uStack_70 = uStack_70 & 0xffff;
            uStack_20 = (uint)sVar2;
            if (puVar10 < puStack_78) {
              puStack_7c = puVar10 + 1;
              if (puVar10 != (uint *)0x0) {
                *puVar10 = uStack_20;
              }
            }
            else {
              FUN_00982420(&pvStack_80,puVar10,&uStack_20);
            }
            uStack_70 = (uint)(short)uStack_70;
            if (puStack_7c < puStack_78) {
              puVar10 = puStack_7c + 1;
              uVar11 = uStack_98;
              puVar1 = puVar10;
              if (puStack_7c != (uint *)0x0) {
                *puStack_7c = uStack_70;
              }
            }
            else {
              FUN_00982420(&pvStack_80,puStack_7c,&uStack_70);
              puVar10 = puStack_7c;
              uVar11 = uStack_98;
              puVar1 = puStack_7c;
            }
          }
          puStack_7c = puVar1;
          uVar8 = uVar8 + 2;
        } while (uVar8 < uVar11);
        uVar9 = uStack_84;
      }
      if (1 < uVar9) {
        piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
        puVar10 = &uStack_98;
        (**(code **)(*piVar6 + 0x8c))(puVar10,uVar9);
        puVar4 = puStack_88;
        (**(code **)(*piVar6 + 0xa4))(acStack_94 + -0xc,puStack_88,0,uVar9);
        if (puVar4 != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(puVar4);
        }
        piVar6 = unaff_EBP + 1;
        LOCK();
        iVar7 = *piVar6;
        *piVar6 = *piVar6 + -1;
        UNLOCK();
        if (iVar7 == 1) {
          LOCK();
          *piVar6 = 1;
          UNLOCK();
          (**(code **)*unaff_EBP)(1);
        }
        return puVar10;
      }
      if (pvStack_80 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_80);
      }
      puVar4 = puStack_88;
    }
  }
  piVar6 = puVar4 + 1;
  LOCK();
  iVar7 = *piVar6;
  *piVar6 = *piVar6 + -1;
  UNLOCK();
  if (iVar7 == 1) {
    LOCK();
    *piVar6 = 1;
    UNLOCK();
    (**(code **)*puVar4)(1);
  }
  return (uint *)0x0;
}

