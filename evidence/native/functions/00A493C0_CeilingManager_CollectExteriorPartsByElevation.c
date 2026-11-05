/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 original static instructions. ECX manager plus1stackDWORD/RET4. Outside room0; signed
   source level>=0 and above<=live top; rejects selected floor zones and underside level. Each
   onehot quarter requires two floor predicates. Reads ABOVE elevation and buckets exact binary32
   height; response roomID0 records contain packed ABOVE tile locations, not the map float key.
   Original emitter later derives height - binary32 .15. */

void __thiscall CeilingManager_CollectExteriorPartsByElevation(void *this,int param_1)

{
  int *piVar1;
  void *this_00;
  undefined4 *puVar2;
  int iVar3;
  byte bVar4;
  void *pvVar5;
  undefined4 uVar6;
  uint uVar7;
  int *piVar8;
  char cVar9;
  int iVar10;
  size_t _Size;
  float10 fVar11;
  undefined2 local_a4;
  char local_a2;
  byte local_a1;
  undefined2 local_a0;
  char local_9e;
  byte local_9d;
  char local_9b;
  char local_9a;
  char local_99;
  undefined2 local_98;
  char local_96;
  int local_94;
  void *local_90;
  int local_8c;
  undefined1 local_88 [4];
  int *local_84;
  uint local_80;
  undefined4 local_7c;
  float local_78;
  undefined4 local_74;
  undefined4 local_70;
  char *local_6c;
  float local_68;
  int local_64 [2];
  int local_5c;
  float local_58;
  uint local_54;
  int local_50;
  float local_4c;
  void *local_48;
  void *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  char *local_38;
  float local_34;
  void *local_30;
  void *local_2c;
  float local_20;
  void *local_1c;
  undefined4 local_c [3];
  
  pvVar5 = (void *)FUN_00b470c0(*(void **)(*(int *)((int)this + 0x18) + 0x298),0,0);
  if (pvVar5 != (void *)0x0) {
    local_78 = 1.0;
    local_74 = 0x40000000;
    local_6c = "Lot/CeilingManager/SetupMessageDataForOutsideRoom/elevToTilePartMap";
    local_80 = 1;
    local_84 = &DAT_0114d900;
    local_7c = 0;
    local_70 = 0;
    local_5c = *(int *)(*(int *)((int)this + 0x18) + 0x180);
    local_a4 = 0xffff;
    local_a1 = 0xff;
    local_a2 = '\0';
    local_90 = pvVar5;
    bVar4 = SpanShape_BeginLocationEnumeration(pvVar5,(char *)&local_a4);
    while (bVar4 != 0) {
      cVar9 = local_a2 + '\x01';
      local_98 = local_a4;
      local_96 = local_a2;
      if ((-1 < local_a2) && (cVar9 <= local_5c)) {
        uVar6 = FUN_00acf460(*(void **)((int)this + 0x18),&local_a4);
        if ((char)uVar6 == '\0') {
          uVar6 = Lot_TestSelectedFloorZone2(*(void **)((int)this + 0x18),&local_a4);
          if ((char)uVar6 == '\0') {
            this_00 = *(void **)(*(int *)((int)this + 0x18) + 0x290);
            if (this_00 != (void *)0x0) {
              uVar6 = FUN_00a48cd0(this_00,cVar9);
              if ((char)uVar6 != '\0') goto LAB_00a496ae;
            }
            local_8c = 0;
            local_94 = 4;
            do {
              bVar4 = '\x01' << ((byte)local_8c & 0x1f);
              if ((local_a1 & bVar4) != 0) {
                local_a0 = local_98;
                local_9e = cVar9;
                local_9d = bVar4;
                uVar7 = FUN_00ad01d0(*(int *)((int)this + 0x18),(char *)&local_a0,'\0','\0');
                if (((char)uVar7 != '\0') &&
                   (uVar6 = TestFloorCellCornerHeightAgreement
                                      (*(int *)((int)this + 0x18),(char *)&local_a0),
                   (char)uVar6 != '\0')) {
                  local_99 = local_9e;
                  local_9a = local_a0._1_1_;
                  iVar10 = ((local_9e * 0x100 + (int)(char)local_9d) * 0x100 + (int)local_a0._1_1_)
                           * 0x100 + (int)(char)local_a0;
                  local_9b = (char)local_a0;
                  local_50 = iVar10;
                  fVar11 = FUN_0077d7e0(*(void **)((int)this + 0x18),&local_9b);
                  local_68 = (float)fVar11;
                  local_4c = (float)fVar11;
                  FUN_00a48c40(local_88,local_64,&local_4c);
                  if (local_64[0] == local_84[local_80]) {
                    local_58 = local_68;
                    piVar8 = FUN_00a48e10(&local_48,iVar10);
                    local_34 = local_58;
                    FUN_00d4c330(&local_30,piVar8[1] - *piVar8 >> 2,piVar8 + 3);
                    _Size = piVar8[1] - *piVar8;
                    local_2c = memmove(local_30,(void *)*piVar8,_Size);
                    local_2c = (void *)((int)local_2c + ((int)_Size >> 2) * 4);
                    FUN_00a48e60(&local_20,&local_34);
                    local_54 = local_54 & 0xffffff00;
                    FUN_00a48eb0(local_88,local_c,&local_20);
                    if (local_1c != (void *)0x0) {
                      Memory_FreeIfNonNull(local_1c);
                    }
                    if (local_30 != (void *)0x0) {
                      Memory_FreeIfNonNull(local_30);
                    }
                    if (local_48 != (void *)0x0) {
                      Memory_FreeIfNonNull(local_48);
                    }
                  }
                  else {
                    Int32Vector_AppendValue((void *)(local_64[0] + 4),&local_50);
                  }
                }
              }
              local_8c = local_8c + 1;
              local_94 = local_94 + -1;
            } while (local_94 != 0);
            local_94 = 0;
            pvVar5 = local_90;
          }
        }
      }
LAB_00a496ae:
      bVar4 = SpanShape_NextLocation(pvVar5,(char *)&local_a4);
    }
    iVar10 = *local_84;
    piVar8 = local_84;
    if (iVar10 == 0) {
      piVar8 = local_84 + 1;
      iVar10 = local_84[1];
      while (iVar10 == 0) {
        piVar8 = piVar8 + 1;
        iVar10 = *piVar8;
      }
      iVar10 = *piVar8;
    }
    local_64[0] = local_84[local_80];
    if (iVar10 != local_64[0]) {
      do {
        puVar2 = *(undefined4 **)(param_1 + 0x14);
        local_44 = (void *)0x0;
        local_40 = 0;
        local_3c = 0;
        local_38 = "Lot/LotMessageData/tCeilingMsgData/tRoomData";
        if (puVar2 < *(undefined4 **)(param_1 + 0x18)) {
          *(undefined4 **)(param_1 + 0x14) = puVar2 + 5;
          if (puVar2 != (undefined4 *)0x0) {
            *puVar2 = local_48;
            puVar2[4] = "Lot/LotMessageData/tCeilingMsgData/tRoomData";
            puVar2[1] = 0;
            puVar2[2] = 0;
            puVar2[3] = 0;
            pvVar5 = memmove((void *)0x0,(void *)0x0,0);
            puVar2[2] = pvVar5;
          }
        }
        else {
          FUN_00a48fc0((void *)(param_1 + 0x10),puVar2,&local_48);
          if (local_44 != (void *)0x0) {
            Memory_FreeIfNonNull(local_44);
          }
        }
        iVar3 = *(int *)(param_1 + 0x14);
        *(undefined4 *)(iVar3 + -0x14) = 0;
        FUN_00b7b140((void *)(iVar3 + -0x10),*(void **)(iVar10 + 4),*(int *)(iVar10 + 8));
        iVar10 = *(int *)(iVar10 + 0x14);
        while (iVar10 == 0) {
          piVar1 = piVar8 + 1;
          piVar8 = piVar8 + 1;
          iVar10 = *piVar1;
        }
      } while (iVar10 != local_64[0]);
    }
    FUN_00b7a260((int)local_84,local_80);
    local_7c = 0;
    if (1 < local_80) {
      Memory_FreeIfNonNull(local_84);
    }
  }
  return;
}

