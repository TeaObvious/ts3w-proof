/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PASS reader. Requires PASS tag; reads pass key/flags, stage-selection words, two PARM
   groups, packed render-state counts, dynamic states, a 32-bit texture-slot mask and per-slot
   payloads for 16 visited slots. This assembles precompiled metadata into a render pass, not HLSL
   bytecode. Check field widths, mode bits and branch flags against the original instructions. */

undefined1 __thiscall ShaderPass_ReadPASS(void *this,void *param_1,void *param_2)

{
  void *this_00;
  bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint *puVar8;
  uint local_3c;
  uint local_38;
  int local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  undefined4 local_1c;
  short local_18;
  uint local_4;
  
  this_00 = param_1;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_38,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (local_38 != 0x53534150) {
    StreamReader_AccumulateStatus(this_00,0);
    *(undefined1 *)((int)this_00 + 0x14) = 0;
    return 0;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),this,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  puVar8 = (uint *)((int)this + 4);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),puVar8,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  *(uint *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(uint *)((int)this + 0x18) = 0;
  if ((*(byte *)puVar8 & 0xf8) != 0) {
    uVar2 = Stream_ReadUInt32ArrayByByteOrder
                      (*(int **)((int)this_00 + 8),(uint *)((int)this + 8),4,
                       *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,(byte)uVar2);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x18),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
  }
  *(uint *)((int)this + 0x20) = 0;
  *(uint *)((int)this + 0x1c) = 0;
  if ((*(byte *)puVar8 & 7) != 0) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x20),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x1c),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x24),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x28),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_3c,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (local_3c == 0x4d524150) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x150),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    puVar8 = (uint *)((int)this + 0x154);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),puVar8,*(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    *(undefined4 *)((int)this + 0x16c) = *(undefined4 *)((int)this + 0x168);
    *(undefined4 *)((int)this + 0x17c) = *(undefined4 *)((int)this + 0x178);
    *(undefined4 *)((int)this + 0x158) = 0;
    if (*puVar8 != 0) {
      local_34 = FUN_0079abc0(param_2,*(uint *)((int)this + 0x150));
      FUN_0079f0c0((void *)((int)this + 0x168),*puVar8);
      param_1 = (void *)0x0;
      if (*puVar8 != 0) {
        do {
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_28,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_2c,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_30,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          ShaderParameter_DecodePackedBinding(&local_1c,local_28,local_2c,local_30,local_34);
          puVar7 = *(undefined4 **)((int)this + 0x16c);
          if (puVar7 < *(undefined4 **)((int)this + 0x170)) {
            *(undefined4 **)((int)this + 0x16c) = puVar7 + 7;
            if (puVar7 != (undefined4 *)0x0) {
              puVar5 = &local_1c;
              for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
                *puVar7 = *puVar5;
                puVar5 = puVar5 + 1;
                puVar7 = puVar7 + 1;
              }
            }
          }
          else {
            FUN_0079f150((void *)((int)this + 0x168),puVar7,&local_1c);
          }
          if ((local_18 != 2) &&
             (uVar3 = (local_4 >> 8 & 0x3ff) + (local_4 & 0xff),
             *(uint *)((int)this + 0x158) < uVar3)) {
            *(uint *)((int)this + 0x158) = uVar3;
          }
          param_1 = (void *)((int)param_1 + 1);
        } while (param_1 < *(void **)((int)this + 0x154));
      }
      param_1 = (void *)((uint)param_1 & 0xffffff00);
      FUN_0079f380(*(undefined4 **)((int)this + 0x168),*(undefined4 **)((int)this + 0x16c),param_1);
    }
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_3c,*(uint *)((int)this_00 + 0x10))
    ;
    StreamReader_AccumulateStatus(this_00,bVar1);
    if (local_3c == 0x4d524150) {
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x15c),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      puVar8 = (uint *)((int)this + 0x160);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),puVar8,*(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      *(undefined4 *)((int)this + 0x164) = 0;
      if (*puVar8 != 0) {
        param_2 = (void *)FUN_0079abc0(param_2,*(uint *)((int)this + 0x15c));
        FUN_0079f0c0((void *)((int)this + 0x178),*puVar8);
        param_1 = (void *)0x0;
        if (*puVar8 != 0) {
          do {
            bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_30,
                                      *(uint *)((int)this_00 + 0x10));
            StreamReader_AccumulateStatus(this_00,bVar1);
            bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_2c,
                                      *(uint *)((int)this_00 + 0x10));
            StreamReader_AccumulateStatus(this_00,bVar1);
            bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_28,
                                      *(uint *)((int)this_00 + 0x10));
            StreamReader_AccumulateStatus(this_00,bVar1);
            ShaderParameter_DecodePackedBinding(&local_1c,local_30,local_2c,local_28,(int)param_2);
            puVar7 = *(undefined4 **)((int)this + 0x17c);
            if (puVar7 < *(undefined4 **)((int)this + 0x180)) {
              *(undefined4 **)((int)this + 0x17c) = puVar7 + 7;
              if (puVar7 != (undefined4 *)0x0) {
                puVar5 = &local_1c;
                for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
                  *puVar7 = *puVar5;
                  puVar5 = puVar5 + 1;
                  puVar7 = puVar7 + 1;
                }
              }
            }
            else {
              FUN_0079f150((void *)((int)this + 0x178),puVar7,&local_1c);
            }
            if ((local_18 != 2) &&
               (uVar3 = (local_4 >> 8 & 0x3ff) + (local_4 & 0xff),
               *(uint *)((int)this + 0x164) < uVar3)) {
              *(uint *)((int)this + 0x164) = uVar3;
            }
            param_1 = (void *)((int)param_1 + 1);
          } while (param_1 < *(void **)((int)this + 0x160));
        }
        param_2 = (void *)((uint)param_2 & 0xffffff00);
        FUN_0079f380(*(undefined4 **)((int)this + 0x178),*(undefined4 **)((int)this + 0x17c),param_2
                    );
      }
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_24,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      uVar6 = local_24 & 0xffff;
      uVar3 = local_24 >> 0x10;
      if (uVar6 != *(uint *)((int)this + 0x38)) {
        if (*(int *)((int)this + 0x34) != 0) {
          FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 0x34));
          *(undefined4 *)((int)this + 0x34) = 0;
        }
        *(uint *)((int)this + 0x38) = uVar6;
        if (uVar6 != 0) {
          iVar4 = FUN_004e4500(uVar6 << 3,"Shader/RenderStates",0);
          *(int *)((int)this + 0x34) = iVar4;
          if (iVar4 == 0) {
            *(undefined4 *)((int)this + 0x38) = 0;
            StreamReader_AccumulateStatus(this_00,0);
            *(undefined1 *)((int)this_00 + 0x14) = 0;
            return 0;
          }
        }
      }
      if (*(int *)((int)this + 0x38) != 0) {
        uVar2 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)((int)this_00 + 8),*(uint **)((int)this + 0x34),
                           *(int *)((int)this + 0x38) * 2,*(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,(byte)uVar2);
      }
      if (uVar3 != *(uint *)((int)this + 0x3c)) {
        *(uint *)((int)this + 0x3c) = uVar3;
        if (*(void **)((int)this + 0x40) != (void *)0x0) {
          Memory_FreeIfNonNull(*(void **)((int)this + 0x40));
          *(undefined4 *)((int)this + 0x40) = 0;
        }
        if (uVar3 != 0) {
          iVar4 = FUN_004e4500(uVar3 * 0xc,"Shader/DynamicRenderStates",0);
          *(int *)((int)this + 0x40) = iVar4;
          if (iVar4 == 0) {
            *(undefined4 *)((int)this + 0x3c) = 0;
            StreamReader_AccumulateStatus(this_00,0);
            *(undefined1 *)((int)this_00 + 0x14) = 0;
            return 0;
          }
        }
      }
      if (*(int *)((int)this + 0x3c) != 0) {
        uVar2 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)((int)this_00 + 8),*(uint **)((int)this + 0x40),
                           *(int *)((int)this + 0x3c) * 3,*(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,(byte)uVar2);
      }
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x44),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      memset((void *)((int)this + 0x88),0,0x40);
      memset((void *)((int)this + 0x48),0,0x40);
      uVar3 = 0;
      puVar8 = (uint *)((int)this + 0xd0);
      do {
        if ((*(uint *)((int)this + 0x44) & 1 << ((byte)uVar3 & 0x1f)) != 0) {
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),puVar8 + -0x12,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),puVar8,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
        }
        uVar3 = uVar3 + 1;
        puVar8 = puVar8 + 1;
      } while (uVar3 < 0x10);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_20,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      if (*(uint *)((int)this + 200) != local_20) {
        *(uint *)((int)this + 200) = local_20;
        if (*(void **)((int)this + 0xcc) != (void *)0x0) {
          Memory_FreeIfNonNull(*(void **)((int)this + 0xcc));
          *(undefined4 *)((int)this + 0xcc) = 0;
        }
        if (local_20 != 0) {
          iVar4 = FUN_004e4500(-(uint)((int)((ulonglong)local_20 * 0xc >> 0x20) != 0) |
                               (uint)((ulonglong)local_20 * 0xc),"Shader/DynamicRenderStates",0);
          *(int *)((int)this + 0xcc) = iVar4;
          if (iVar4 == 0) {
            *(undefined4 *)((int)this + 200) = 0;
            goto LAB_0079fb73;
          }
        }
      }
      if (*(int *)((int)this + 200) != 0) {
        uVar2 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)((int)this_00 + 8),*(uint **)((int)this + 0xcc),
                           *(int *)((int)this + 200) * 3,*(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,(byte)uVar2);
      }
      return *(undefined1 *)((int)this_00 + 0x14);
    }
  }
LAB_0079fb73:
  StreamReader_AccumulateStatus(this_00,0);
  *(undefined1 *)((int)this_00 + 0x14) = 0;
  return 0;
}

