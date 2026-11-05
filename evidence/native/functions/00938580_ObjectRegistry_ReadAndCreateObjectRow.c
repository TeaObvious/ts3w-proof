/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst original PC1.67 instruction contract. ECX object registry plus44physical stack
   bytes/RET2Ch. Selects unused GUID, reads row version/component-name mask and original
   resource-reference/prototype data, allocates expanded component storage, then calls934560
   synchronously on the same reader/context. Later event27, resource/init/attach branches can
   refuse/remove/recover the object. Returned object and out flags follow original partial-failure
   flow; serialized GUID is not universally runtime identity. No whole factory fallback or callback
   policy inferred. */

undefined4 * __thiscall
ObjectRegistry_ReadAndCreateObjectRow
          (void *this,void *param_1,uint *param_2,ulonglong param_3,void *param_4,void *param_5,
          undefined4 param_6,undefined4 param_7,undefined1 *param_8,undefined1 *param_9,
          undefined1 *param_10)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  bool bVar4;
  uint uVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  void *this_00;
  void *this_01;
  uint uVar9;
  ulonglong guid;
  char local_b7;
  char local_b4 [4];
  int *local_b0;
  int local_ac;
  uint local_a8;
  char *local_a4;
  uint local_a0;
  int local_9c;
  undefined4 local_98;
  int local_94;
  uint local_90;
  int local_8c;
  undefined4 local_88;
  int local_84;
  uint local_80;
  uint local_7c;
  int local_78;
  undefined4 local_74;
  int local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  uint local_5c [3];
  int aiStack_50 [4];
  LPCWSTR apWStack_40 [4];
  int local_30 [12];
  
  *param_8 = 0;
  *param_9 = 1;
  *param_10 = 0;
  guid = ObjectRegistry_SelectUnusedGuid(this,param_3);
  if (guid == 0) {
    return (undefined4 *)0x0;
  }
  local_a8 = 0;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_a8,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if ((*(char *)((int)param_1 + 0x14) == '\0') || (local_a8 < 7)) {
    return (undefined4 *)0x0;
  }
  local_a4 = (char *)0x0;
  local_80 = 0;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_80,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if (*(char *)((int)param_1 + 0x14) == '\0') {
    return (undefined4 *)0x0;
  }
  if (0x20 < local_80) {
    return (undefined4 *)0x0;
  }
  uVar9 = 0;
  if (local_80 != 0) {
    do {
      bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_b0,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      if (*(char *)((int)param_1 + 0x14) == '\0') {
        return (undefined4 *)0x0;
      }
      uVar5 = ObjectRegistry_FindMaskByNameHash(this,(uint)local_b0);
      if (uVar5 != 0) {
        local_a4 = (char *)((uint)local_a4 | uVar5);
      }
      uVar9 = uVar9 + 1;
    } while (uVar9 < local_80);
  }
  if (*(char *)((int)param_1 + 0x14) == '\0') {
    return (undefined4 *)0x0;
  }
  local_a0 = 0;
  local_9c = 0;
  local_98 = 0;
  local_94 = 0;
  local_7c = 0;
  local_78 = 0;
  local_74 = 0;
  local_70 = 0;
  local_6c = 0;
  local_68 = 0;
  local_64 = 0;
  local_60 = 0;
  if (7 < local_a8) {
    if (*param_2 < 0xe) {
      StreamContext_ReadResourceKey(param_1,&local_a0);
    }
    else {
      ReadUInt16AndAccumulateStatus(param_1,(ushort *)local_b4);
      ResourceReferences_ResolveNarrowHandle((void *)param_2[3],(ushort *)local_b4,&local_a0);
      if (8 < local_a8) {
        ReadUInt16AndAccumulateStatus(param_1,(ushort *)local_b4);
        ResourceReferences_ResolveNarrowHandle((void *)param_2[3],(ushort *)local_b4,&local_7c);
      }
      if (9 < local_a8) {
        ReadUInt16AndAccumulateStatus(param_1,(ushort *)local_b4);
        ResourceReferences_ResolveNarrowHandle((void *)param_2[3],(ushort *)local_b4,&local_6c);
      }
    }
  }
  uVar6 = FUN_0092f9c0();
  FUN_00939a40(local_30,uVar6);
  local_b7 = *(char *)((int)this + 0x11e4);
  bVar2 = false;
  if (local_b7 == '\0') {
    if (local_a8 < 10) {
      uVar6 = ObjectResource_ReadPrototypeSignature(&local_a0,(int *)&local_b0,&local_90);
      cVar3 = (char)uVar6;
    }
    else {
      uVar6 = FUN_00937330(&local_a0,&local_6c,&local_b0,&local_90);
      cVar3 = (char)uVar6;
    }
    if (((cVar3 == '\0') ||
        ((local_b0 != (int *)0x0 || local_ac != 0 &&
         (uVar6 = FUN_0093a9f0(param_4,local_b0,local_ac,&local_b0), (char)uVar6 == '\0')))) ||
       ((local_90 != 0 || local_8c != 0 &&
        (uVar6 = FUN_0093a9f0(param_5,local_90,local_8c,&local_b0), (char)uVar6 == '\0')))) {
      local_b7 = '\x01';
    }
  }
  bVar1 = false;
  if ((local_b7 != '\0') && (uVar9 = FUN_0093a660(&local_a0,local_30), (char)uVar9 == '\0')) {
    uVar9 = FUN_0093a660(&local_7c,local_30);
    if ((char)uVar9 == '\0') {
      local_8c = local_9c;
      local_90 = local_a0;
      local_88 = local_98;
      local_84 = 0;
      uVar9 = FUN_0093a660(&local_90,local_30);
      if ((char)uVar9 == '\0') {
        bVar2 = true;
        if (local_94 == 0x1000000) {
          *param_10 = 1;
          goto LAB_009388fb;
        }
      }
      else {
        local_a0 = local_90;
        local_9c = local_8c;
        local_98 = local_88;
        local_94 = local_84;
      }
    }
    else {
      local_9c = local_78;
      local_a0 = local_7c;
      *param_10 = 1;
      *(int *)((int)this + 0x11e8) = *(int *)((int)this + 0x11e8) + 1;
      local_98 = local_74;
      local_94 = local_70;
LAB_009388fb:
      bVar1 = true;
    }
  }
  ParameterBuilder_FinalizeBorrowedTable(local_30,local_5c);
  uVar9 = Object_ExpandComponentMask((uint)local_a4,local_5c);
  if (local_b7 != '\0') {
    local_b0 = (int *)0x0;
    piVar7 = FUN_0074efa0((int *)&local_b0);
    uVar5 = ObjectResource_LoadParamsForPrototypeKey(&local_a0,piVar7);
    if (((char)uVar5 != '\0') && ((local_b0[10] | uVar9) != uVar9)) {
      uVar9 = Object_ExpandComponentMask(local_b0[10] | uVar9,local_5c);
    }
    if (local_b0 != (int *)0x0) {
      (**(code **)(*local_b0 + 4))();
    }
  }
  piVar7 = Object_AllocateComponentStorage(guid,uVar9,&local_a0);
  local_b0 = piVar7;
  if (piVar7 == (int *)0x0) {
LAB_00938b86:
    if (!bVar2) goto LAB_00938bb4;
  }
  else {
    LOCK();
    piVar7[1] = piVar7[1] + 1;
    UNLOCK();
    uVar6 = Object_ReadComponentPayloads(piVar7,param_1,(int)param_2,(uint)local_a4);
    if ((char)uVar6 == '\0') {
      ObjectRegistry_RemoveActiveObject(this,piVar7);
      FUN_00874fb0(&local_b0,(undefined4 *)0x0);
      piVar7 = local_b0;
      goto LAB_00938b86;
    }
    local_b4[0] = '\x01';
    ObjectEvents_Dispatch(0x27,piVar7,local_b4);
    if (local_b4[0] == '\0') {
      *param_9 = 0;
      goto LAB_00938a11;
    }
    if (bVar1) {
      iVar8 = FUN_00789260(piVar7);
      if (iVar8 != 0) {
        *param_9 = 0;
        goto LAB_00938a11;
      }
      iVar8 = FUN_00741ef0(piVar7);
      if (iVar8 != 0) {
        *(undefined1 *)(iVar8 + 0x21) = 1;
      }
    }
    if (local_b7 == '\0') {
      bVar4 = ObjectEvents_Dispatch(1,piVar7,(void *)0x0);
      if (bVar4) {
        ObjectRegistry_AttachObject(this,piVar7);
      }
      else {
        bVar2 = true;
      }
    }
    else if (!bVar2) {
      uVar6 = FUN_00934950(piVar7,local_5c);
      if ((char)uVar6 == '\0') {
        bVar2 = true;
      }
      else {
        ObjectRegistry_AttachObject(this,piVar7);
        *param_8 = 1;
      }
      iVar8 = FUN_00ab0d40(piVar7);
      if (iVar8 != 0) {
        *(byte *)(iVar8 + 0x40) = *(byte *)(iVar8 + 0x40) | 2;
      }
    }
    if (!bVar1) goto LAB_00938b86;
    if (!bVar2) {
      this_00 = (void *)FUN_005a7920(piVar7);
      if (this_00 != (void *)0x0) {
        this_01 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,&local_a0);
        local_a4 = "CAS/PresetXml";
        FUN_004088f0(apWStack_40,&local_a4);
        if (this_01 != (void *)0x0) {
          ObjectProduct_ReadFirstPresetString(this_01,apWStack_40);
        }
        local_90 = 0;
        local_8c = 0;
        local_88 = 0;
        local_84 = 0;
        aiStack_50[0] = 0;
        aiStack_50[1] = 0;
        aiStack_50[2] = 0;
        aiStack_50[3] = 0;
        FUN_0094b150(this_00,aiStack_50,(int *)&local_90);
        FUN_00949460(this_00,apWStack_40[0]);
        FUN_004ef8f0((int *)apWStack_40);
      }
      goto LAB_00938bb4;
    }
  }
  if (piVar7 != (int *)0x0) {
    iVar8 = FUN_00741ef0(piVar7);
    if (iVar8 == 0) {
LAB_00938a11:
      ObjectRegistry_RemoveActiveObject(this,piVar7);
      FUN_007462e0((int *)&local_b0);
      FUN_00582cf0(local_30);
      return (undefined4 *)0x0;
    }
    piVar7[10] = piVar7[10] | 0x400000;
    *(undefined1 *)(iVar8 + 0x22) = 1;
    ObjectRegistry_AttachObject(this,piVar7);
  }
LAB_00938bb4:
  FUN_007462e0((int *)&local_b0);
  FUN_00582cf0(local_30);
  return piVar7;
}

