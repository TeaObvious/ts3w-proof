/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163508 (original PC 1.67 TS3W.exe).
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
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
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
  float fStack_158;
  float fStack_154;
  int iStack_150;
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
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
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
          iVar5 = iStack_178 / 3;
          FUN_00ab1360(this,&fStack_3c);
          FUN_00ab1440(this,&fStack_5c);
          uStack_160 = iVar5 * 3;
          piVar2 = (int *)FUN_004e4500(-(uint)((int)((ulonglong)uStack_160 * 4 >> 0x20) != 0) |
                                       (uint)((ulonglong)uStack_160 * 4),"World/Placement",0);
          local_15c = piVar2;
          if (0 < iVar5) {
            pfStack_170 = (float *)((int)piVar2 + 8);
            fStack_ec = DAT_0103fd88;
            fStack_e8 = DAT_0103fd88;
            fStack_e4 = DAT_0103fd88;
            fStack_e0 = DAT_0103fd88;
            iStack_180 = 0;
            fVar11 = DAT_0103fd88;
            fVar12 = DAT_0103fd88;
            fVar13 = DAT_0103fd88;
            fVar14 = DAT_0103fd88;
            do {
              fStack_144 = *(float *)(iStack_180 + 8 + iStack_174);
              fStack_14c = *(float *)(iStack_180 + iStack_174);
              fStack_148 = *(float *)(iStack_180 + 4 + iStack_174);
              fVar7 = (fStack_144 * fStack_58 - fStack_148 * fStack_54) + fStack_50 * fStack_14c;
              fVar8 = (fStack_14c * fStack_54 - fStack_144 * fStack_5c) + fStack_50 * fStack_148;
              fVar9 = (fStack_148 * fStack_5c - fStack_14c * fStack_58) + fStack_50 * fStack_144;
              fStack_11c = (fVar9 * fStack_58 - fVar8 * fStack_54) * fVar11 + fStack_14c + fStack_4c
              ;
              fVar9 = (fVar7 * fStack_54 - fVar9 * fStack_5c) * fVar12 + fStack_148 + fStack_48;
              fStack_114 = (fVar8 * fStack_5c - fVar7 * fStack_58) * fVar13 + fStack_144 + fStack_44
              ;
              fStack_110 = (fVar7 * fStack_5c - fVar7 * fStack_5c) * fVar14 + fStack_14c + fStack_40
              ;
              fStack_140 = fStack_14c;
              fStack_118 = fVar9;
              fStack_dc = fStack_11c;
              fStack_d8 = fVar9;
              fStack_d4 = fStack_114;
              fStack_d0 = fStack_110;
              fStack_bc = fStack_11c;
              fStack_b8 = fVar9;
              fStack_b4 = fStack_114;
              fStack_b0 = fStack_110;
              if ((((0.0 <= fStack_11c) && (fStack_11c <= (float)this[0x5d])) && (0.0 <= fStack_114)
                  ) && (fStack_114 <= (float)this[0x5e])) {
                fStack_17c = 0.0;
                fStack_12c = fStack_11c;
                fStack_128 = fVar9;
                fStack_124 = fStack_114;
                fStack_120 = fStack_110;
                fStack_fc = fStack_11c;
                fStack_f8 = fVar9;
                fStack_f4 = fStack_114;
                fStack_f0 = fStack_110;
                fStack_6c = fStack_11c;
                fStack_68 = fVar9;
                fStack_64 = fStack_114;
                fStack_60 = fStack_110;
                uVar3 = FUN_00b9a130(local_16c,fStack_11c,fStack_114,&iStack_130,&uStack_181,
                                     &fStack_17c);
                if (((char)uVar3 != '\0') && (fStack_128 < fStack_17c)) {
                  fVar9 = fStack_17c;
                }
                iVar4 = this[0x60];
                if (0 < iVar4) {
                  fStack_9c = fStack_11c;
                  fStack_98 = fStack_118;
                  fStack_94 = fStack_114;
                  fStack_90 = fStack_110;
                  fStack_7c = fStack_11c;
                  fStack_78 = fStack_118;
                  fStack_74 = fStack_114;
                  fStack_70 = fStack_110;
                  do {
                    iStack_150 = (int)(char)iVar4;
                    fStack_158 = fStack_7c;
                    fStack_154 = fStack_94;
                    FUN_00af7730(&fStack_158,&stack0xfffffe74);
                    cVar1 = FUN_00a8e0b0((void *)this[0xa4],&stack0xfffffe74,0xf,'\x01');
                    if (cVar1 != '\0') {
                      fVar6 = FUN_00a8c690((void *)this[0xa4],&fStack_158);
                      fStack_164 = (float)fVar6;
                      if ((float10)fVar9 < fVar6) {
                        fVar9 = fStack_164;
                      }
                      break;
                    }
                    iVar4 = iVar4 + -1;
                  } while (0 < iVar4);
                }
                fStack_10c = fStack_11c;
                fStack_104 = fStack_114;
                fStack_100 = fStack_110;
                piVar2 = local_15c;
                fVar11 = fStack_ec;
                fVar12 = fStack_e8;
                fVar13 = fStack_e4;
                fVar14 = fStack_e0;
                fStack_108 = fVar9;
              }
              fVar7 = (fStack_114 * fStack_38 - fVar9 * fStack_34) + fStack_30 * fStack_11c;
              fVar8 = (fStack_11c * fStack_34 - fStack_114 * fStack_3c) + fStack_30 * fVar9;
              fVar10 = (fVar9 * fStack_3c - fStack_11c * fStack_38) + fStack_30 * fStack_114;
              fStack_cc = (fVar10 * fStack_38 - fVar8 * fStack_34) * fVar11 + fStack_11c + fStack_2c
              ;
              fStack_c8 = (fVar7 * fStack_34 - fVar10 * fStack_3c) * fVar12 + fVar9 + fStack_28;
              fStack_c4 = (fVar8 * fStack_3c - fVar7 * fStack_38) * fVar13 + fStack_114 + fStack_24;
              fStack_c0 = (fVar7 * fStack_3c - fVar7 * fStack_3c) * fVar14 + fStack_110 + fStack_20;
              pfStack_170[-2] = fStack_cc;
              pfStack_170[-1] = fStack_c8;
              *pfStack_170 = fStack_c4;
              iStack_180 = iStack_180 + 0xc;
              pfStack_170 = pfStack_170 + 3;
              iVar5 = iVar5 + -1;
              fStack_ac = fStack_cc;
              fStack_a8 = fStack_c8;
              fStack_a4 = fStack_c4;
              fStack_a0 = fStack_c0;
              fStack_8c = fStack_cc;
              fStack_88 = fStack_c8;
              fStack_84 = fStack_c4;
              fStack_80 = fStack_c0;
            } while (iVar5 != 0);
          }
          (**(code **)(*local_168 + 0xa8))(param_4,piVar2,0,uStack_160);
          uVar3 = FUN_004e44e0((int)piVar2);
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}

