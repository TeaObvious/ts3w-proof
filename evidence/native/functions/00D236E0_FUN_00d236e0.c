/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. ECXundo owner plus packedlocator/patternquad/flag threewords RET0C. Per selected quarter reads old quad and rotation, compares all four keys and selectedrotation before D235A0 records/applies; default/paired-floor logic and special globals remain explicit opaque children. Price collection can skip when catalog key plus preset semantic compareA623D0 unchanged, with additional special product/lot+4BC gates. New price first fromCB0E60 unless thirdflag; old depreciation fromowner+4C; each contribution SUBSS then MULSS0.25 (106F8C8) then ADDSS accumulator. Actual changes trigger virtual30 existing float total, x87 FADDsubtotal, FSTPfloat into virtual2C. No MathF.Round-to-int/native funds or exact immutable CLR refcount equivalence follows. */

void __thiscall FUN_00d236e0(void *this,undefined2 *param_1,_GUID *param_2,int param_3)

{
  void *this_00;
  bool bVar1;
  byte bVar2;
  char cVar3;
  bool bVar4;
  bool bVar5;
  undefined4 uVar6;
  uint uVar7;
  byte bVar8;
  char cVar9;
  int iVar10;
  float10 fVar11;
  int *piVar12;
  byte *pbVar13;
  undefined4 local_b8;
  byte local_b2;
  char local_b1;
  undefined4 local_b0;
  float local_ac;
  char local_a8;
  undefined3 uStack_a7;
  float local_a4;
  float local_a0;
  int local_9c;
  undefined4 local_98;
  undefined4 local_94;
  char local_90;
  undefined3 uStack_8f;
  undefined4 local_8c;
  _GUID *local_88;
  _GUID *local_84;
  ulong local_80;
  int local_7c;
  int local_78;
  int local_74;
  int local_50 [4];
  int local_40 [16];
  
  local_ac = 0.0;
  local_a0 = 0.0;
  if (param_3 == 0) {
    fVar11 = FUN_00cb0e60(&param_2->Data1,'\0');
    local_a0 = (float)fVar11;
  }
  local_b1 = *(char *)(DAT_011edbc4 + 0x164);
  bVar8 = *(byte *)((int)param_1 + 3);
  this_00 = *(void **)(*(int *)((int)this + 0x50) + 0x290);
  cVar9 = *(char *)(param_1 + 1);
  local_b2 = bVar8 & 0x10;
  bVar4 = false;
  uVar6 = FUN_00a48cd0(this_00,cVar9);
  bVar8 = (byte)~bVar8 >> 4 & 1;
  bVar1 = false;
  if (bVar8 == 0) {
    if ((char)uVar6 == '\0') {
      FUN_00a98060(this_00,(int)cVar9);
    }
  }
  else if ((*(char *)(param_1 + 1) == '\0') || ((char)uVar6 == '\0')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  local_84 = (_GUID *)FUN_00c8b420();
  local_88 = (_GUID *)FUN_00c8b3c0();
  local_9c = 0;
  do {
    bVar2 = '\x01' << ((byte)local_9c & 0x1f);
    if ((*(byte *)((int)param_1 + 3) & bVar2) != 0) {
      local_b8._0_2_ = *param_1;
      local_b8._2_1_ = *(undefined1 *)(param_1 + 1);
      local_b8._3_1_ = bVar2 | local_b2;
      FUN_00afba70(&local_80);
      FloorManager_CopyPatternKeysAtCellPart(this_00,(char *)&local_b8,&local_80);
      uVar7 = FUN_00a8ca50(this_00,(byte *)&local_b8);
      cVar3 = (char)uVar7;
      _local_90 = CONCAT31(uStack_8f,cVar3);
      cVar9 = local_b1;
      if (*(char *)((int)this + 0x54) != '\0') {
        cVar9 = cVar3;
      }
      _local_a8 = CONCAT31(uStack_a7,cVar9);
      uVar6 = FUN_00a8ae70(&local_80,(int *)param_2);
      if (((char)uVar6 != '\0') || (local_a8 != cVar3)) {
        iVar10 = 0;
        if ((!bVar1) && (((char)uVar6 != '\0' && ((~*(byte *)((int)param_1 + 3) & 0x10) != 0)))) {
          bVar4 = ResourceKeyQuad_Equals(&local_80,(undefined *)&DAT_011ec8e0);
          if ((bVar4) ||
             (bVar4 = ResourceKeyQuad_Equals(&local_80,(undefined *)&DAT_011ec920), bVar4)) {
            cVar9 = '\x01';
          }
          else {
            cVar9 = '\0';
          }
          bVar4 = ResourceKeyQuad_Equals(param_2,(undefined *)&DAT_011ec8e0);
          if (bVar4) {
LAB_00d238ac:
            cVar3 = '\x01';
          }
          else {
            bVar4 = ResourceKeyQuad_Equals(param_2,(undefined *)&DAT_011ec920);
            cVar3 = '\0';
            if (bVar4) goto LAB_00d238ac;
          }
          if (cVar9 != cVar3) {
            iVar10 = (cVar9 != '\0') + 1;
          }
        }
        FUN_00d235a0(this,&local_b8,(int *)&local_80,(byte *)param_2,(char)_local_90,(byte)_local_a8
                     ,iVar10);
        bVar4 = true;
        if (bVar1) {
          local_b0._3_1_ = local_b8._3_1_ | 0x10;
          local_b0._0_2_ = (undefined2)local_b8;
          local_b0._2_1_ = local_b8._2_1_;
          bVar5 = ResourceKeyQuad_Equals(&local_80,(undefined *)&DAT_011ec8e0);
          if (bVar5) {
            pbVar13 = (byte *)((int)this_00 + 0x50);
            piVar12 = &DAT_011ec8e0;
            uVar6 = 0;
          }
          else {
            bVar5 = ResourceKeyQuad_Equals(param_2,(undefined *)&DAT_011ec8e0);
            if (!bVar5) goto LAB_00d23994;
            FUN_00afba70(local_40);
            FloorManager_CopyPatternKeysAtCellPart(this_00,(char *)&local_b0,local_40);
            uVar7 = FUN_00a8ca50(this_00,(byte *)&local_b8);
            local_98 = CONCAT31(local_98._1_3_,(char)uVar7);
            pbVar13 = (byte *)&DAT_011ec8e0;
            piVar12 = local_40;
            uVar6 = local_98;
          }
          FUN_00d235a0(this,&local_b0,piVar12,pbVar13,(char)uVar6,0,0);
        }
LAB_00d23994:
        if ((((local_80 != param_2->Data1) || (local_78 != *(int *)param_2->Data4)) ||
            (local_74 != *(int *)(param_2->Data4 + 4))) ||
           ((iVar10._0_2_ = param_2->Data2, iVar10._2_2_ = param_2->Data3, local_7c != iVar10 ||
            (uVar6 = FUN_00a623d0(local_50,(int *)(param_2 + 3)), (char)uVar6 == '\0')))) {
          local_a4 = 0.0;
          if (param_3 == 0) {
            iVar10 = _AfxIsEqualGUID(param_2,local_84);
            if ((char)iVar10 == '\0') {
              if (bVar8 != 0) goto LAB_00d23a8d;
            }
            else {
              if (bVar8 == 0) goto LAB_00d23a07;
LAB_00d23a8d:
              if (((*(int *)((int)this + 0x50) != 0) &&
                  (*(char *)(*(int *)((int)this + 0x50) + 0x4bc) != '\0')) &&
                 (iVar10 = _AfxIsEqualGUID(param_2,local_88), (char)iVar10 != '\0')) {
                local_94 = CONCAT31(local_94._1_3_,*(undefined1 *)((int)this + 0x4c));
                uVar6 = local_94;
                goto LAB_00d23a12;
              }
            }
          }
          else {
LAB_00d23a07:
            local_8c = CONCAT31(local_8c._1_3_,*(undefined1 *)((int)this + 0x4c));
            uVar6 = local_8c;
LAB_00d23a12:
            fVar11 = FUN_00cb0e60(&local_80,(char)uVar6);
            local_a4 = (float)fVar11;
          }
          local_ac = (local_a0 - local_a4) * 0.25 + local_ac;
        }
      }
    }
    local_9c = local_9c + 1;
    if (3 < local_9c) {
      if (bVar4) {
        fVar11 = (float10)(**(code **)(*(int *)this + 0x30))();
        (**(code **)(*(int *)this + 0x2c))((float)(fVar11 + (float10)local_ac));
      }
      return;
    }
  } while( true );
}
