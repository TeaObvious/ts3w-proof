/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX resource, one reader-context stack word/RET4, AL
   status. Unsigned major-2<=2 admits2..4; inner bone-table version is separately consumed
   by00576D20. Every admitted major reads the IK chain count, including major3; each chain has
   UInt32 bone-count/indices, eleven info DWORDs, then four indices, live stride0x4C. Major<3
   consumes seven further DWORDs. Legacy signaturesCAB067B8 or8EAF13DE on authored8EAF13DE resolve
   exact same group/instance under type0C244B35 and recursively read that resource. Missing-primary
   fallback is not established here. Native matrices, derived rig names and processing retain the
   complete original calls; these are not all reproduced by raw field decoding. */

undefined1 __thiscall Skeleton_ReadStructuredResource(void *this,void *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  bool bVar3;
  char cVar4;
  undefined1 uVar5;
  uint uVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  int *piVar9;
  void *pvVar10;
  int iVar11;
  int iVar12;
  undefined4 *puVar13;
  int *piVar14;
  char *pcVar15;
  undefined4 uStack_54;
  uint local_50;
  int local_4c;
  uint local_48;
  uint local_44;
  uint local_40;
  void *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_48,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  if (2 < local_48 - 2) {
    if ((*(int *)((int)this + 0x10) == -0x7150ec22) &&
       ((local_48 == 0xcab067b8 || (local_48 == 0x8eaf13de)))) {
      local_38 = *(undefined4 *)((int)this + 8);
      local_34 = *(undefined4 *)((int)this + 0xc);
      local_2c = *(undefined4 *)((int)this + 0x14);
      local_30 = 0xc244b35;
      piVar9 = (int *)FUN_004afe80();
      if ((piVar9 != (int *)0x0) &&
         (piVar9 = (int *)(**(code **)(*piVar9 + 0x44))(&local_38), piVar9 != (int *)0x0)) {
        piVar14 = (int *)0x1;
        uStack_54 = 0;
        cVar4 = (**(code **)(*piVar9 + 0x34))(&local_3c,&uStack_54,1,3,1,0);
        if (cVar4 != '\0') {
          uVar6 = 1;
          pvVar10 = (void *)(**(code **)(*piVar14 + 0x18))();
          pvVar10 = StreamReader_Construct(&local_44,pvVar10,uVar6);
          uVar5 = Skeleton_ReadStructuredResource(this,pvVar10);
          StreamReader_ReleaseAuxiliary(&local_44);
          (**(code **)(*piVar14 + 0x20))();
          if (piVar14 != (int *)0x0) {
            (**(code **)(*piVar14 + 8))();
          }
          return uVar5;
        }
        if (piVar14 != (int *)0x0) {
          (**(code **)(*piVar14 + 8))();
        }
      }
    }
    return 0;
  }
  pvVar10 = (void *)((int)this + 0x28);
  local_3c = pvVar10;
  cVar4 = Skeleton_ReadBoneTable(pvVar10,param_1);
  if (cVar4 != '\0') {
    uVar6 = FUN_00575750((int)pvVar10);
    if (uVar6 == 0) {
      return 0;
    }
    local_40 = uVar6;
    FUN_0057c010((void *)((int)this + 0x8c),uVar6);
    FUN_0057c010((void *)((int)this + 0x9c),uVar6);
    if (uVar6 != 0) {
      iVar12 = 0;
      local_4c = 0;
      local_44 = local_40;
      do {
        puVar13 = (undefined4 *)(local_4c + 0x10 + *(int *)((int)this + 0x2c));
        uVar8 = puVar13[1];
        uVar1 = puVar13[2];
        uVar2 = puVar13[3];
        iVar11 = local_4c + *(int *)((int)this + 0x2c);
        puVar7 = (undefined4 *)(*(int *)((int)this + 0x8c) + iVar12);
        *puVar7 = *puVar13;
        puVar7[1] = uVar8;
        puVar7[2] = uVar1;
        puVar7[3] = uVar2;
        uVar8 = *(undefined4 *)(iVar11 + 0x24);
        uVar1 = *(undefined4 *)(iVar11 + 0x28);
        uVar2 = *(undefined4 *)(iVar11 + 0x2c);
        puVar7[4] = *(undefined4 *)(iVar11 + 0x20);
        puVar7[5] = uVar8;
        puVar7[6] = uVar1;
        puVar7[7] = uVar2;
        uVar8 = *(undefined4 *)(iVar11 + 0x34);
        uVar1 = *(undefined4 *)(iVar11 + 0x38);
        uVar2 = *(undefined4 *)(iVar11 + 0x3c);
        puVar7[8] = *(undefined4 *)(iVar11 + 0x30);
        puVar7[9] = uVar8;
        puVar7[10] = uVar1;
        puVar7[0xb] = uVar2;
        if (*(int *)(iVar11 + 0x58) < 0) {
          puVar13 = (undefined4 *)(*(int *)((int)this + 0x8c) + iVar12);
          uVar8 = puVar13[1];
          uVar1 = puVar13[2];
          uVar2 = puVar13[3];
          iVar11 = *(int *)((int)this + 0x8c) + iVar12;
          puVar7 = (undefined4 *)(*(int *)((int)this + 0x9c) + iVar12);
          *puVar7 = *puVar13;
          puVar7[1] = uVar8;
          puVar7[2] = uVar1;
          puVar7[3] = uVar2;
          uVar8 = *(undefined4 *)(iVar11 + 0x14);
          uVar1 = *(undefined4 *)(iVar11 + 0x18);
          uVar2 = *(undefined4 *)(iVar11 + 0x1c);
          puVar7[4] = *(undefined4 *)(iVar11 + 0x10);
          puVar7[5] = uVar8;
          puVar7[6] = uVar1;
          puVar7[7] = uVar2;
          uVar8 = *(undefined4 *)(iVar11 + 0x24);
          uVar1 = *(undefined4 *)(iVar11 + 0x28);
          uVar2 = *(undefined4 *)(iVar11 + 0x2c);
          puVar7[8] = *(undefined4 *)(iVar11 + 0x20);
          puVar7[9] = uVar8;
          puVar7[10] = uVar1;
          puVar7[0xb] = uVar2;
        }
        else {
          FUN_0054cbf0((float *)(*(int *)((int)this + 0x8c) + iVar12),
                       (float *)(*(int *)(iVar11 + 0x58) * 0x30 + *(int *)((int)this + 0x9c)),
                       (float *)(iVar12 + *(int *)((int)this + 0x9c)));
        }
        local_4c = local_4c + 0x70;
        iVar12 = iVar12 + 0x30;
        local_44 = local_44 - 1;
      } while (local_44 != 0);
    }
    local_50 = 0;
    bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_50,*(uint *)((int)param_1 + 0x10))
    ;
    StreamReader_AccumulateStatus(param_1,bVar3);
    FUN_0057c420((void *)((int)this + 0xac),local_50);
    local_40 = 0;
    if (local_50 != 0) {
      local_4c = 0;
      do {
        puVar13 = (undefined4 *)(*(int *)((int)this + 0xac) + local_4c);
        local_44 = 0;
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_44,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        FUN_00c221f0(puVar13,local_44);
        uVar8 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)((int)param_1 + 8),(uint *)*puVar13,
                           puVar13[1] - (int)*puVar13 >> 2,*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,(byte)uVar8);
        uVar8 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)((int)param_1 + 8),puVar13 + 4,0xb,
                           *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,(byte)uVar8);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),puVar13 + 0xf,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),puVar13 + 0x10,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),puVar13 + 0x11,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),puVar13 + 0x12,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        local_4c = local_4c + 0x4c;
        local_40 = local_40 + 1;
      } while (local_40 < local_50);
    }
    if (local_48 < 3) {
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xbc),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xc0),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xc4),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 200),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xcc),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xd0),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xd4),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
    }
    if ((local_48 < 4) && (*(int *)((int)this + 0x7c) == *(int *)((int)this + 0x80))) {
      iVar12 = *(int *)((int)this + 8);
      iVar11 = *(int *)((int)this + 0xc);
      if ((iVar12 == 0x65c68fc1) && (iVar11 == 0x26e972c5)) {
        FUN_00405910((void *)((int)this + 0x7c),"acRig","");
      }
      else {
        if ((iVar12 == 0x7e4db284) && (iVar11 == 0x52385bc5)) {
          pcVar15 = "adRig";
        }
        else if ((iVar12 == 0x42b56538) && (iVar11 == -0x1692a83b)) {
          pcVar15 = "ahRig";
        }
        else if ((iVar12 == 0x576b847c) && (iVar11 == 0xd5a13c5)) {
          pcVar15 = "alRig";
        }
        else if ((iVar12 == -0x6b86f01d) && (iVar11 == -0x1f03d14d)) {
          pcVar15 = "ccRig";
        }
        else if ((iVar12 == 0x7167e55a) && (iVar11 == -0x5c7fec4d)) {
          pcVar15 = "cdRig";
        }
        else if ((iVar12 == -0x52ffcd5a) && (iVar11 == 0xc4b17b3)) {
          pcVar15 = "chRig";
        }
        else if ((iVar12 == 0x34c1bcbb) && (iVar11 == -0x2fa8033b)) {
          pcVar15 = "auRig";
        }
        else if ((iVar12 == 0x27c38fc9) && (iVar11 == 0x2183c4b3)) {
          pcVar15 = "cuRig";
        }
        else {
          if ((iVar12 != -0xa2d758e) || (iVar11 != 0x192f5c47)) goto LAB_0057c928;
          pcVar15 = "puRig";
        }
        FUN_004f61f0((void *)((int)this + 0x7c),pcVar15);
      }
    }
  }
LAB_0057c928:
  FUN_0057b8f0((int)this);
  FUN_0057b6e0((int)this);
  FUN_00576380(local_3c,*(int *)((int)this + 0xac) != *(int *)((int)this + 0xb0));
  return *(undefined1 *)((int)param_1 + 0x14);
}

