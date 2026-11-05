/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163508 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPointsOnRoofsAbove [assembly=ScriptCore token=0x060007A5; lotId:
   System.UInt64, seedArray: System.Single[]&, posArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_FindPointsOnRoofsAbove
          (int param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  char cVar1;
  uint in_EAX;
  int *this;
  int *allocation;
  undefined4 uVar2;
  undefined4 extraout_EAX;
  int iVar3;
  int iVar4;
  float10 fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  char cStack_182;
  undefined1 uStack_181;
  int iStack_180;
  float fStack_17c;
  int iStack_178;
  int iStack_174;
  float *pfStack_170;
  void *local_16c;
  int *local_168;
  float fStack_164;
  uint uStack_160;
  int *local_15c;
  LotXZLevel LStack_158;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  int iStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (this != (int *)0x0) {
      local_15c = (int *)GetGlobalInterfacePointer_11D5BBC();
      local_16c = (void *)0x0;
      local_168 = (int *)0x0;
      in_EAX = (**(code **)(*local_15c + 0x78))(*param_3,&local_168,&local_16c);
      if (iStack_178 != 0) {
        local_16c = (void *)this[0xab];
        in_EAX = 0;
        if (local_16c != (void *)0x0) {
          iVar4 = iStack_178 / 3;
          Lot_GetLocalToWorldPose(this,&fStack_3c);
          Lot_GetWorldToLocalPose(this,&fStack_5c);
          uStack_160 = iVar4 * 3;
          allocation = (int *)FUN_004e4500(-(uint)((int)((ulonglong)uStack_160 * 4 >> 0x20) != 0) |
                                           (uint)((ulonglong)uStack_160 * 4),"World/Placement",0);
          local_15c = allocation;
          if (0 < iVar4) {
            pfStack_170 = (float *)((int)allocation + 8);
            fVar10 = 2.0;
            fVar11 = 2.0;
            fVar12 = 2.0;
            fVar13 = 2.0;
            fStack_ec = 2.0;
            fStack_e8 = 2.0;
            fStack_e4 = 2.0;
            fStack_e0 = 2.0;
            iStack_180 = 0;
            do {
              fStack_144 = *(float *)(iStack_180 + 8 + iStack_174);
              fStack_14c = *(float *)(iStack_180 + iStack_174);
              fStack_148 = *(float *)(iStack_180 + 4 + iStack_174);
              fVar6 = (fStack_144 * fStack_58 - fStack_148 * fStack_54) + fStack_50 * fStack_14c;
              fVar7 = (fStack_14c * fStack_54 - fStack_144 * fStack_5c) + fStack_50 * fStack_148;
              fVar8 = (fStack_148 * fStack_5c - fStack_14c * fStack_58) + fStack_50 * fStack_144;
              fStack_11c = (fVar8 * fStack_58 - fVar7 * fStack_54) * fVar10 + fStack_14c + fStack_4c
              ;
              fVar8 = (fVar6 * fStack_54 - fVar8 * fStack_5c) * fVar11 + fStack_148 + fStack_48;
              fStack_114 = (fVar7 * fStack_5c - fVar6 * fStack_58) * fVar12 + fStack_144 + fStack_44
              ;
              fStack_110 = (fVar6 * fStack_5c - fVar6 * fStack_5c) * fVar13 + fStack_14c + fStack_40
              ;
              fStack_140 = fStack_14c;
              fStack_118 = fVar8;
              fStack_dc = fStack_11c;
              fStack_d8 = fVar8;
              fStack_d4 = fStack_114;
              fStack_d0 = fStack_110;
              fStack_bc = fStack_11c;
              fStack_b8 = fVar8;
              fStack_b4 = fStack_114;
              fStack_b0 = fStack_110;
              if ((((0.0 <= fStack_11c) && (fStack_11c <= (float)this[0x5d])) && (0.0 <= fStack_114)
                  ) && (fStack_114 <= (float)this[0x5e])) {
                fStack_17c = 0.0;
                fStack_12c = fStack_11c;
                fStack_128 = fVar8;
                fStack_124 = fStack_114;
                fStack_120 = fStack_110;
                fStack_fc = fStack_11c;
                fStack_f8 = fVar8;
                fStack_f4 = fStack_114;
                fStack_f0 = fStack_110;
                fStack_6c = fStack_11c;
                fStack_68 = fVar8;
                fStack_64 = fStack_114;
                fStack_60 = fStack_110;
                uVar2 = FUN_00b9a130(local_16c,fStack_11c,fStack_114,&iStack_130,&uStack_181,
                                     &fStack_17c);
                if (((char)uVar2 != '\0') && (fStack_128 < fStack_17c)) {
                  fVar8 = fStack_17c;
                }
                iVar3 = this[0x60];
                if (0 < iVar3) {
                  fStack_9c = fStack_11c;
                  fStack_98 = fStack_118;
                  fStack_94 = fStack_114;
                  fStack_90 = fStack_110;
                  fStack_7c = fStack_11c;
                  fStack_78 = fStack_118;
                  fStack_74 = fStack_114;
                  fStack_70 = fStack_110;
                  do {
                    LStack_158.level = (int)(char)iVar3;
                    LStack_158.x = fStack_7c;
                    LStack_158.z = fStack_94;
                    EncodeCellCoordinates(&LStack_158.x,(char *)((int)register0x00000010 + -0x18c));
                    cVar1 = FUN_00a8e0b0((void *)this[0xa4],
                                         (char *)((int)register0x00000010 + -0x18c),0xf,'\x01');
                    if (cVar1 != '\0') {
                      fVar5 = LotLevelHeight_SampleLocalPosition((void *)this[0xa4],&LStack_158);
                      fStack_164 = (float)fVar5;
                      if ((float10)fVar8 < fVar5) {
                        fVar8 = fStack_164;
                      }
                      break;
                    }
                    iVar3 = iVar3 + -1;
                  } while (0 < iVar3);
                }
                fStack_10c = fStack_11c;
                fStack_104 = fStack_114;
                fStack_100 = fStack_110;
                allocation = local_15c;
                fVar10 = fStack_ec;
                fVar11 = fStack_e8;
                fVar12 = fStack_e4;
                fVar13 = fStack_e0;
                fStack_108 = fVar8;
              }
              fVar6 = (fStack_114 * fStack_38 - fVar8 * fStack_34) + fStack_30 * fStack_11c;
              fVar7 = (fStack_11c * fStack_34 - fStack_114 * fStack_3c) + fStack_30 * fVar8;
              fVar9 = (fVar8 * fStack_3c - fStack_11c * fStack_38) + fStack_30 * fStack_114;
              fStack_cc = (fVar9 * fStack_38 - fVar7 * fStack_34) * fVar10 + fStack_11c + fStack_2c;
              fStack_c8 = (fVar6 * fStack_34 - fVar9 * fStack_3c) * fVar11 + fVar8 + fStack_28;
              fStack_c4 = (fVar7 * fStack_3c - fVar6 * fStack_38) * fVar12 + fStack_114 + fStack_24;
              fStack_c0 = (fVar6 * fStack_3c - fVar6 * fStack_3c) * fVar13 + fStack_110 + fStack_20;
              pfStack_170[-2] = fStack_cc;
              pfStack_170[-1] = fStack_c8;
              *pfStack_170 = fStack_c4;
              iStack_180 = iStack_180 + 0xc;
              pfStack_170 = pfStack_170 + 3;
              iVar4 = iVar4 + -1;
              fStack_ac = fStack_cc;
              fStack_a8 = fStack_c8;
              fStack_a4 = fStack_c4;
              fStack_a0 = fStack_c0;
              fStack_8c = fStack_cc;
              fStack_88 = fStack_c8;
              fStack_84 = fStack_c4;
              fStack_80 = fStack_c0;
            } while (iVar4 != 0);
          }
          (**(code **)(*local_168 + 0xa8))(param_4,allocation,0,uStack_160);
          Memory_FreeIfNonNull(allocation);
          return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}

