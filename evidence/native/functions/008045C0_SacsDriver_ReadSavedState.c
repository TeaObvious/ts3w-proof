/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00804829) */
/* Analyst note (PC1.67 SACS migration contract): ECX serialized-driver subobject; RET8 consumes two
   physical words despite inferred one-argument C. Selected header reads key, u16, version/count
   bytes, reserved dword; version>=1 reads signed priority bits to real driver+30, later versions
   skip words. Resolves graph through resource manager before restoring actors via00802E70 and
   declared parameters via007FD180/007FD400. Hash/text byte-count loops and stream+14 accumulated
   status are native; stack aliases and unaff_EBP/EDI constants in C are misleading. Original
   supports live queues/clips/tracks and object-table identity, unlike current idle DTO. Full
   failure transaction and all stream/object receiver contracts remain bounded. */

void __thiscall SacsDriver_ReadSavedState(void *this,void *param_1)

{
  undefined4 *this_00;
  wint_t *pwVar1;
  bool bVar2;
  char cVar3;
  int *piVar4;
  uint *puVar5;
  uint *puVar6;
  int iVar7;
  void *this_01;
  int unaff_EBP;
  undefined4 unaff_EDI;
  void *this_02;
  byte bVar9;
  uint uVar8;
  undefined2 uVar10;
  void *pvVar11;
  int *piVar12;
  byte local_58;
  byte local_57;
  undefined1 local_56;
  undefined1 local_55;
  uint uStack_54;
  undefined1 local_50 [4];
  uint uStack_4c;
  wint_t *pwStack_48;
  undefined1 *local_44;
  undefined2 *local_40;
  char *pcStack_3c;
  uint local_38;
  uint uStack_34;
  void *pvStack_30;
  undefined4 uStack_2c;
  byte abStack_14 [4];
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_40 = (undefined2 *)0x0;
  local_58 = 0;
  local_57 = 0;
  local_56 = 0;
  local_55 = 0;
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    local_44 = this;
    bVar2 = Stream_ReadResourceKeyTGI
                      (*(void **)((int)param_1 + 8),&local_10,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)&local_40,
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),&local_58);
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),&local_57);
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_38,*(uint *)((int)param_1 + 0x10))
    ;
    StreamReader_AccumulateStatus(param_1,bVar2);
    piVar4 = (int *)FUN_004afe80();
    piVar12 = (int *)0x0;
    uVar8 = 0;
    cVar3 = (**(code **)(*piVar4 + 0xc))(&local_10,local_50,0);
    if (cVar3 != '\0') {
      this_02 = (void *)((int)this + -8);
      pvVar11 = this_02;
      FUN_00804330(this_02,piVar12);
      (**(code **)(*piVar12 + 4))();
      if ((char)uVar8 != '\0') {
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&stack0xffffff9c,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        *(undefined4 *)(unaff_EBP + 0x30) = unaff_EDI;
      }
      iVar7 = 1;
      if (1 < (byte)uVar8) {
        do {
          bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_4c,
                                    *(uint *)((int)param_1 + 0x10));
          StreamReader_AccumulateStatus(param_1,bVar2);
          iVar7 = iVar7 + 1;
        } while (iVar7 < (int)(uVar8 & 0xff));
      }
      cVar3 = (char)(uVar8 >> 8);
      while (cVar3 != '\0') {
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&stack0xffffff9c,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        piVar4 = *(int **)((int)this + 8);
        uStack_54 = 0;
        for (; piVar4 != *(int **)((int)this + 0xc); piVar4 = piVar4 + 2) {
          if (*piVar4 == 0) {
            this_01 = (void *)piVar4[1];
            if (this_01 != (void *)0x0) goto LAB_008047d8;
            goto LAB_0080478d;
          }
        }
        this_01 = (void *)0x0;
LAB_0080478d:
        if ((*(int *)((int)this + 4) != 0) &&
           (iVar7 = FUN_007fd820(*(int *)((int)this + 4)), iVar7 != 0)) {
          FUN_00803b00(this_02,iVar7);
          puVar5 = *(uint **)((int)this + 8);
          if (puVar5 == *(uint **)((int)this + 0xc)) {
            return;
          }
          while (*puVar5 != uStack_54) {
            puVar5 = puVar5 + 2;
            if (puVar5 == *(uint **)((int)this + 0xc)) {
              return;
            }
          }
          this_01 = (void *)puVar5[1];
        }
        if (this_01 == (void *)0x0) {
          return;
        }
LAB_008047d8:
        cVar3 = SacsWalker_ReadSavedState(this_01,param_1);
        if (cVar3 == '\0') {
          return;
        }
        cVar3 = (char)(uVar8 >> 8) + -1;
        uVar8 = (uint)CONCAT21((short)(uVar8 >> 0x10),cVar3) << 8;
      }
      bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&stack0xffffffa0,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      *(undefined4 *)(unaff_EBP + 0x38) = 0;
      *(undefined1 *)(unaff_EBP + 0x34) = 0;
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),abStack_14);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),abStack_14);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),&stack0xffffff92);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),&stack0xffffff93);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar9 = (byte)(uVar8 >> 0x10);
      while (uVar10 = (undefined2)(uVar8 >> 0x10), bVar9 != 0) {
        local_10 = 0;
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&stack0xffffffa4,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_10,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        piVar4 = *(int **)((int)this + 0x18);
        uStack_54 = local_10;
        for (; piVar4 != *(int **)((int)this + 0x1c); piVar4 = piVar4 + 4) {
          if (*piVar4 == 0) {
            piVar4 = piVar4 + 1;
            if (piVar4 != (int *)0x0) goto LAB_00804964;
            goto LAB_00804926;
          }
        }
        piVar4 = (int *)0x0;
LAB_00804926:
        if ((*(int *)((int)this + 4) == 0) ||
           (iVar7 = FUN_007fd860(*(int *)((int)this + 4)), iVar7 == 0)) {
LAB_00804960:
          if (piVar4 != (int *)0x0) {
LAB_00804964:
            SacsParameter_SetHashAndClearText(piVar4,uStack_54);
          }
        }
        else {
          FUN_00801a90(this_02,iVar7);
          for (piVar4 = *(int **)((int)this + 0x18); piVar4 != *(int **)((int)this + 0x1c);
              piVar4 = piVar4 + 4) {
            if (*piVar4 == 0) {
              piVar4 = piVar4 + 1;
              goto LAB_00804960;
            }
          }
        }
        bVar9 = (byte)uVar10 - 1;
        uVar8 = (uint)CONCAT11((byte)((ushort)uVar10 >> 8),bVar9) << 0x10;
      }
      if ((byte)(uVar8 >> 0x18) != 0) {
        this_00 = (undefined4 *)((int)this + 0x18);
        do {
          bVar9 = (byte)(uVar8 >> 0x18);
          puVar5 = (uint *)0x0;
          pwStack_48 = (wint_t *)&DAT_011c8e54;
          local_44 = &DAT_011c8e54;
          local_10 = 0;
          pcStack_3c = "SACS/StateMachineDriver";
          local_40 = &DAT_011c8e56;
          bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_10,
                                    *(uint *)((int)param_1 + 0x10));
          StreamReader_AccumulateStatus(param_1,bVar2);
          StreamContext_ReadUtf16String(param_1,&pwStack_48);
          pwVar1 = pwStack_48;
          puVar6 = (uint *)*this_00;
          uStack_54 = local_10;
          for (; puVar6 != *(uint **)((int)this_02 + 0x24); puVar6 = puVar6 + 4) {
            if (*puVar6 == local_10) {
              puVar5 = puVar6 + 1;
              if (puVar5 != (uint *)0x0) goto LAB_00804ab0;
              break;
            }
          }
          if ((*(int *)((int)this_02 + 0xc) == 0) ||
             (uVar8 = FUN_007fd860(*(int *)((int)this_02 + 0xc)), uVar8 == 0)) {
LAB_00804aac:
            if (puVar5 != (uint *)0x0) {
LAB_00804ab0:
              FUN_007fd400(puVar5,pwVar1);
            }
          }
          else {
            local_38 = *(uint *)(uVar8 + 0x2c);
            puVar5 = *(uint **)((int)this + 0x1c);
            pvStack_30 = (void *)0x0;
            uStack_2c = 0;
            uStack_34 = uVar8;
            if (puVar5 < *(uint **)((int)this + 0x20)) {
              *(uint **)((int)this + 0x1c) = puVar5 + 4;
              this_02 = pvVar11;
              if (puVar5 != (uint *)0x0) {
                *puVar5 = local_38;
                puVar5[1] = uVar8;
                puVar5[2] = 0;
                puVar5[3] = 0;
              }
            }
            else {
              FUN_00801550(this_00,puVar5,&local_38);
              this_02 = pvVar11;
            }
            if (pvStack_30 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_30);
            }
            for (puVar5 = (uint *)*this_00; pvVar11 = this_02,
                puVar5 != *(uint **)((int)this_02 + 0x24); puVar5 = puVar5 + 4) {
              if (*puVar5 == uStack_54) {
                puVar5 = puVar5 + 1;
                goto LAB_00804aac;
              }
            }
          }
          if ((2 < (int)((int)local_40 - (int)pwStack_48 & 0xfffffffeU)) &&
             (pwStack_48 != (wint_t *)0x0)) {
            Memory_FreeIfNonNull(pwStack_48);
          }
          uVar8 = (uint)(byte)(bVar9 - 1) << 0x18;
        } while ((byte)(bVar9 - 1) != 0);
      }
    }
  }
  return;
}

