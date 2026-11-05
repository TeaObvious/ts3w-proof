/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  wint_t *pwVar1;
  bool bVar2;
  char cVar3;
  int *piVar4;
  uint *puVar5;
  uint *puVar6;
  int iVar7;
  void *this_00;
  int unaff_EBP;
  undefined4 unaff_EDI;
  void *this_01;
  uint uVar8;
  undefined2 uVar9;
  void *pvVar10;
  int *piVar11;
  uint uVar12;
  byte local_58;
  byte local_57;
  byte local_56;
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
    piVar11 = (int *)0x0;
    uVar8 = 0;
    cVar3 = (**(code **)(*piVar4 + 0xc))(&local_10,local_50,0);
    if (cVar3 != '\0') {
      this_01 = (void *)((int)this + -8);
      pvVar10 = this_01;
      FUN_00804330(this_01,piVar11);
      (**(code **)(*piVar11 + 4))();
      if ((char)uVar8 != '\0') {
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)(local_50 + -0x14),
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
        uVar12 = 0;
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)(local_50 + -0x14),
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        for (piVar4 = *(int **)((int)this + 8); uStack_54 = uVar12,
            piVar4 != *(int **)((int)this + 0xc); piVar4 = piVar4 + 2) {
          if (*piVar4 == 0) {
            this_00 = (void *)piVar4[1];
            if (this_00 != (void *)0x0) goto LAB_008047d8;
            goto LAB_0080478d;
          }
        }
        this_00 = (void *)0x0;
LAB_0080478d:
        if ((*(int *)((int)this + 4) != 0) &&
           (iVar7 = FUN_007fd820(*(int *)((int)this + 4)), iVar7 != 0)) {
          SacsDriver_CreateDefinedActorWalker(this_01,iVar7);
          puVar6 = *(uint **)((int)this + 8);
          if (puVar6 == *(uint **)((int)this + 0xc)) {
            return;
          }
          while (*puVar6 != uStack_54) {
            puVar6 = puVar6 + 2;
            if (puVar6 == *(uint **)((int)this + 0xc)) {
              return;
            }
          }
          this_00 = (void *)puVar6[1];
        }
        if (this_00 == (void *)0x0) {
          return;
        }
LAB_008047d8:
        cVar3 = SacsWalker_ReadSavedState(this_00,param_1);
        if (cVar3 == '\0') {
          return;
        }
        cVar3 = (char)(uVar8 >> 8) + -1;
        uVar8 = (uint)CONCAT21((short)(uVar8 >> 0x10),cVar3) << 8;
      }
      bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)(local_50 + -0x10),
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      *(undefined4 *)(unaff_EBP + 0x38) = 0;
      *(undefined1 *)(unaff_EBP + 0x34) = 0;
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),abStack_14);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),abStack_14);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),local_50 + -0x1e);
      StreamReader_AccumulateStatus(param_1,bVar2);
      bVar2 = Stream_ReadByte(*(void **)((int)param_1 + 8),local_50 + -0x1d);
      StreamReader_AccumulateStatus(param_1,bVar2);
      cVar3 = (char)(uVar8 >> 0x10);
      while (uVar9 = (undefined2)(uVar8 >> 0x10), cVar3 != '\0') {
        local_10 = 0;
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)(local_50 + -0xc),
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
          FUN_00801a90(this_01,iVar7);
          for (piVar4 = *(int **)((int)this + 0x18); piVar4 != *(int **)((int)this + 0x1c);
              piVar4 = piVar4 + 4) {
            if (*piVar4 == 0) {
              piVar4 = piVar4 + 1;
              goto LAB_00804960;
            }
          }
        }
        cVar3 = (char)uVar9 + -1;
        uVar8 = (uint)CONCAT11((char)((ushort)uVar9 >> 8),cVar3) << 0x10;
      }
      if ((char)(uVar8 >> 0x18) != '\0') {
        piVar4 = (int *)((int)this + 0x18);
        do {
          cVar3 = (char)(uVar8 >> 0x18);
          puVar6 = (uint *)0x0;
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
          puVar5 = (uint *)*piVar4;
          uStack_54 = local_10;
          for (; puVar5 != *(uint **)((int)this_01 + 0x24); puVar5 = puVar5 + 4) {
            if (*puVar5 == local_10) {
              puVar6 = puVar5 + 1;
              if (puVar6 != (uint *)0x0) goto LAB_00804ab0;
              break;
            }
          }
          if (*(int *)((int)this_01 + 0xc) == 0) {
LAB_00804aac:
            if (puVar6 != (uint *)0x0) {
LAB_00804ab0:
              FUN_007fd400(puVar6,pwVar1);
            }
          }
          else {
            uVar8 = FUN_007fd860(*(int *)((int)this_01 + 0xc));
            if (uVar8 == 0) goto LAB_00804aac;
            local_38 = *(uint *)(uVar8 + 0x2c);
            puVar6 = *(uint **)((int)this + 0x1c);
            pvStack_30 = (void *)0x0;
            uStack_2c = 0;
            uStack_34 = uVar8;
            if (puVar6 < *(uint **)((int)this + 0x20)) {
              *(uint **)((int)this + 0x1c) = puVar6 + 4;
              this_01 = pvVar10;
              if (puVar6 != (uint *)0x0) {
                *puVar6 = local_38;
                puVar6[1] = uVar8;
                puVar6[2] = 0;
                puVar6[3] = 0;
              }
            }
            else {
              FUN_00801550(piVar4,puVar6,&local_38);
              this_01 = pvVar10;
            }
            if (pvStack_30 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_30);
            }
            puVar6 = (uint *)*piVar4;
            pvVar10 = this_01;
            if (puVar6 != *(uint **)((int)this_01 + 0x24)) {
              do {
                if (*puVar6 == uStack_54) {
                  puVar6 = puVar6 + 1;
                  goto LAB_00804aac;
                }
                puVar6 = puVar6 + 4;
              } while (puVar6 != *(uint **)((int)this_01 + 0x24));
            }
          }
          if ((2 < (int)((int)local_40 - (int)pwStack_48 & 0xfffffffeU)) &&
             (pwStack_48 != (wint_t *)0x0)) {
            Memory_FreeIfNonNull(pwStack_48);
          }
          uVar8 = (uint)(byte)(cVar3 - 1U) << 0x18;
        } while ((byte)(cVar3 - 1U) != 0);
      }
    }
  }
  return;
}

