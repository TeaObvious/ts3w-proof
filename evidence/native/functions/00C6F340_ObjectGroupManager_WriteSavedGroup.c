/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object-group writer. Physical manager ECX, Stack4 resource writer, Stack8 opaque
   raw32 forwarded to935770, StackC I/O context, RET0C. Existing int/EAX decompiler metadata is
   preserved: early failure writes only AL0 with upper EAX unspecified; normal completion returns
   full EAX0/1. Writes OBJN version20; optional signature maps use installed prototype/signature
   services. Captures manager pose, prepares contexts, optionally invokes managed SaveObjectGroup
   with default DWORDFFFFFFFF, writes GUID then937C40 per row, seeks back on failed rows and
   backpatches successful count/block size. Writes sized contexts via935E80; context+19 chooses NOBJ
   suppression versus retained writer service. Final success combines all-row and stream status.
   Complete516instruction1578byte owned body has two ranges and excludes the8byte gap. No
   provider/RNG/timing/factory parity or complete older-version writer follows. Only analyst name
   and previously empty PLATE changed; existing signature, storage, convention, body, disassembly
   and original bytes preserved. */

int __thiscall
ObjectGroupManager_WriteSavedGroup(void *this,void *param_1,undefined4 param_2,void *param_3)

{
  short sVar1;
  void *pvVar2;
  undefined4 *arg0;
  bool bVar3;
  byte bVar4;
  char cVar5;
  uint3 extraout_var;
  undefined4 uVar6;
  uint uVar7;
  uint *puVar8;
  undefined4 uVar9;
  uint3 extraout_var_00;
  uint3 uVar12;
  int *piVar10;
  int iVar11;
  undefined4 *puVar13;
  undefined4 unaff_EDI;
  float10 fVar14;
  int *local_128;
  uint local_120;
  undefined **local_11c [2];
  ushort uStack_114;
  undefined2 uStack_112;
  uint local_110;
  uint local_10c;
  undefined4 uStack_100;
  void *pvStack_fc;
  void *pvStack_f8;
  void *local_e8;
  void *local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined **local_d0 [11];
  void *local_a4;
  uint local_a0;
  undefined4 local_9c;
  undefined4 local_88;
  undefined **local_80 [11];
  void *local_54;
  uint local_50;
  undefined4 local_4c;
  undefined **ppuStack_3c;
  undefined4 local_38;
  byte bStack_34;
  
  local_e8 = this;
  local_e4 = ObjectRegistry_GetGlobal();
  local_dc = *(undefined4 *)((int)this + 0x4c);
  local_e0 = *(undefined4 *)((int)this + 0x48);
  local_d8 = 0x4d1a5589;
  local_d4 = 0;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_e0,1);
  uVar12 = extraout_var;
  if (!bVar3) goto LAB_00c6f631;
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0x14,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  pvVar2 = *(void **)((int)param_1 + 8);
  FUN_0093aa40(local_80);
  local_38 = 0x2dc343f;
  FUN_0093aa40(local_d0);
  local_88 = 0x736884f1;
  if (*(char *)((int)this + 0x9d) != '\0') {
    local_128 = *(int **)((int)this + 0x18);
    for (piVar10 = *(int **)((int)this + 0x14); piVar10 != local_128; piVar10 = piVar10 + 1) {
      uVar6 = ObjectResource_ReadPrototypeSignature
                        ((uint *)(*piVar10 + 0x18),(int *)&local_110,&local_120);
      if ((char)uVar6 != '\0') {
        uVar7 = ObjectSignatureService_FindValue(local_110,local_10c,0x2dc343f);
        if (uVar7 != 0) {
          ObjectSignatureMap_InsertUnique(local_80,local_110,local_10c,uVar7 + 1);
        }
        uVar7 = ObjectSignatureService_FindValue(local_120,(uint)local_11c[0],0x736884f1);
        if (uVar7 != 0) {
          ObjectSignatureMap_InsertUnique(local_d0,local_120,(uint)local_11c[0],uVar7 + 1);
        }
      }
    }
  }
  ObjectSignatureMap_WriteVersionOne(local_80,pvVar2);
  ObjectSignatureMap_WriteVersionOne(local_d0,pvVar2);
  local_d0[0] = &PTR_FUN_01044038;
  FUN_00b305a0((int)local_a4,local_a0);
  local_9c = 0;
  if (1 < local_a0) {
    Memory_FreeIfNonNull(local_a4);
  }
  FUN_0059f450(local_d0);
  local_80[0] = &PTR_FUN_01044038;
  FUN_00b305a0((int)local_54,local_50);
  local_4c = 0;
  if (1 < local_50) {
    Memory_FreeIfNonNull(local_54);
  }
  FUN_0059f450(local_80);
  puVar8 = (uint *)(**(code **)(*(int *)this + 100))(&local_110);
  FUN_007d7b90(param_1,puVar8);
  fVar14 = (float10)(**(code **)(*(int *)this + 0x68))();
  bVar4 = FUN_004de390(*(int **)((int)param_1 + 8),(float)fVar14,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  uVar6 = 0;
  local_11c[0] = (undefined **)(**(code **)(**(int **)((int)param_1 + 8) + 0x24))();
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  (**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0);
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  if (*(char *)((int)param_3 + 0x19) == '\0') {
    FUN_007d4040(*(int *)((int)param_3 + 0x14));
  }
  FUN_009358b0(param_3,0x14);
  FUN_00935770(param_3,param_2);
  uVar9 = FUN_00935870(param_3,this);
  if ((char)uVar9 != '\0') {
    piVar10 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar7 = 0xffffffff;
    if (*(char *)((int)this + 0x75) != '\0') {
      local_11c[0] = &PTR_FUN_0100886c;
      uStack_112 = 0xc;
      uStack_114 = 2;
      Variant_AssignUInt64(local_11c,(ulonglong *)((int)this + 0x48));
      iVar11 = (**(code **)(*piVar10 + 0x138))
                         (&ppuStack_3c,"ScriptCore.LoadSaveManager,ScriptCore","SaveObjectGroup",
                          local_11c,1);
      sVar1 = *(short *)(iVar11 + 10);
      if ((sVar1 == 9) || (sVar1 == 0x10)) {
        if ((*(byte *)(iVar11 + 8) & 0x30) == 0) {
          if (sVar1 == 0) {
            puVar8 = (uint *)0x0;
          }
          else {
            puVar8 = (uint *)(iVar11 + 0x10);
          }
        }
        else {
          puVar8 = *(uint **)(iVar11 + 0x10);
        }
      }
      else {
        puVar8 = &DAT_011d7700;
      }
      uVar7 = *puVar8;
      ppuStack_3c = &PTR_FUN_00fba6f4;
      if ((bStack_34 & 4) != 0) {
        FUN_004f5760(&ppuStack_3c,'\0');
      }
      local_11c[0] = &PTR_FUN_00fba6f4;
      if ((uStack_114 & 4) != 0) {
        FUN_004f5760(local_11c,'\0');
      }
    }
    bVar4 = FUN_004de060(*(int **)((int)param_1 + 8),uVar7,*(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    (**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0);
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    (**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0);
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    arg0 = *(undefined4 **)((int)this + 0x18);
    uVar7 = CONCAT13(1,(int3)uVar6);
    for (puVar13 = *(undefined4 **)((int)this + 0x14); puVar13 != arg0; puVar13 = puVar13 + 1) {
      pvVar2 = (void *)*puVar13;
      uStack_100 = (**(code **)(*piVar10 + 0x24))(0);
      bVar4 = FUN_004de0c0(*(int **)((int)param_1 + 8),*(undefined8 *)((int)pvVar2 + 8),
                           *(int *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      this = pvStack_fc;
      if (*(char *)((int)param_1 + 0x14) == '\0') break;
      bVar4 = ObjectRegistry_WriteSavedObjectRecord(pvStack_f8,pvVar2,param_1,param_3);
      if (bVar4 == 0) {
        (**(code **)(*piVar10 + 0x28))(uStack_100,0);
        uVar7 = uVar7 & 0xffffff;
      }
      this = pvStack_fc;
    }
    iVar11 = (**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0);
    if ((iVar11 == -1) ||
       (cVar5 = (**(code **)(**(int **)((int)param_1 + 8) + 0x28))(local_128,0), cVar5 == '\0')) {
LAB_00c6f85e:
      *(undefined1 *)((int)param_1 + 0x14) = 0;
    }
    else {
      bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      cVar5 = (**(code **)(**(int **)((int)param_1 + 8) + 0x28))(iVar11,0);
      if (cVar5 == '\0') goto LAB_00c6f85e;
    }
    iVar11 = (**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0);
    if (((iVar11 == -1) ||
        (local_11c[0] = (undefined **)(**(code **)(**(int **)((int)param_1 + 8) + 0x24))(0),
        local_11c[0] == (undefined **)0xffffffff)) ||
       (cVar5 = (**(code **)(**(int **)((int)param_1 + 8) + 0x28))(piVar10,0), cVar5 == '\0')) {
LAB_00c6f8d4:
      *(undefined1 *)((int)param_1 + 0x14) = 0;
    }
    else {
      bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),(iVar11 - (int)piVar10) - 4,
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      cVar5 = (**(code **)(**(int **)((int)param_1 + 8) + 0x28))(local_11c[0],0);
      if (cVar5 == '\0') goto LAB_00c6f8d4;
    }
    bVar4 = ObjectIoContexts_WriteSizedEntries(param_3,this,param_1);
    if (bVar4 != 0) {
      if (*(char *)((int)param_3 + 0x19) == '\0') {
        uVar7 = StreamContext_GetPositionAndMarkNegative(param_1);
        Stream_BackpatchUInt32(param_1,local_120,uVar7);
        pvVar2 = *(void **)((int)param_3 + 0x14);
        FUN_007d4810(pvVar2,param_1);
        FUN_007d4040((int)pvVar2);
        iVar11 = StreamContext_GetPositionAndMarkNegative(param_1);
        uVar7 = iVar11 - uVar7;
      }
      else {
        Stream_BackpatchUInt32(param_1,local_120,0);
        uVar7 = 0;
      }
      Stream_BackpatchUInt32(param_1,(uint)arg0,uVar7);
      ResourceStreamContext_Close(param_1);
      if (((char)((uint)unaff_EDI >> 0x18) != '\0') && (*(char *)((int)param_1 + 0x14) != '\0')) {
        return 1;
      }
      return 0;
    }
  }
  StreamReader_AccumulateStatus(param_1,0);
  *(undefined1 *)((int)param_1 + 0x14) = 0;
  uVar12 = extraout_var_00;
LAB_00c6f631:
  return (uint)uVar12 << 8;
}

