/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX route path plus two physical words, RET8. Full
   typed path construction and option-driven branches. Ordinary door approach uses2.0, catalog
   flag10000 selects3.0, retained special identity can select0.25; calls819E40 to split native
   nodes. Do not infer all doors are exactly2.0 or corner interpolation from native dense-node
   algorithm. */

void __thiscall RoutePath_BuildTypedSegments(void *this,int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  bool bVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int *this_00;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int extraout_EDX;
  char cVar9;
  void *pvVar10;
  undefined4 *puVar11;
  bool bVar12;
  bool bVar13;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined1 auVar14 [16];
  char local_146;
  undefined4 *local_140;
  char local_13b;
  char local_13a;
  char local_139;
  char local_138;
  char local_137;
  char local_136;
  char local_135;
  char local_134;
  char local_133;
  char local_132;
  char local_131;
  undefined4 local_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  float local_118;
  int local_114;
  int local_110 [2];
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  void *local_ec;
  undefined4 *local_e8;
  int local_e4;
  undefined4 *local_e0 [4];
  int local_d0 [2];
  undefined4 local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined1 local_b0;
  int local_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  undefined4 local_60;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float local_40;
  undefined4 local_24;
  
  local_ec = this;
  local_114 = thunk_FUN_00835d40();
  if (local_114 == 0) {
    return;
  }
  pvVar10 = (void *)((int)this + 0x40);
  uVar5 = RoutingOptions_TestMask(pvVar10,0x10,0,'\0');
  local_13b = (char)uVar5;
  uVar5 = RoutingOptions_TestMask(pvVar10,2,0,'\x01');
  local_137 = (char)uVar5;
  uVar5 = RoutingOptions_TestMask(pvVar10,4,0,'\x01');
  local_139 = (char)uVar5;
  uVar5 = RoutingOptions_TestMask(pvVar10,0x20,0,'\0');
  local_146 = (char)uVar5;
  uVar5 = RoutingOptions_TestMask(pvVar10,0x40,0,'\0');
  cVar9 = (char)uVar5;
  uVar5 = RoutingOptions_TestMask(pvVar10,8,0,'\x01');
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x4000,'\0');
  local_138 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x80,'\0');
  local_133 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x200,'\0');
  local_136 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x400,'\0');
  local_131 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x8000000,'\0');
  local_135 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x10000000,'\0');
  local_134 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0,0x20000000,'\0');
  local_132 = (char)uVar6;
  uVar6 = RoutingOptions_TestMask(pvVar10,0x20,0,'\x01');
  if (((local_146 != '\0') && (local_138 == '\0')) && ((char)uVar6 == '\0')) {
    local_13b = '\x01';
    cVar9 = '\x01';
  }
  local_108 = 0;
  local_104 = 0;
  this_00 = (int *)(param_1 + 8);
  puVar7 = (undefined4 *)*this_00;
  local_110[0] = -0x399ff499;
  local_130 = 0;
  uStack_12c = 0;
  uStack_128 = 0;
  uStack_124 = 0;
  local_100 = 0;
  uStack_fc = 0;
  uStack_f8 = 0;
  uStack_f4 = 0;
  local_140 = puVar7;
  if (cVar9 != '\0') {
    puVar8 = *(undefined4 **)(param_1 + 0xc);
    puVar11 = puVar7;
    if (puVar7 != puVar8) {
      do {
        if ((puVar11[7] == 1) && ((puVar11[0xb] == 0x3b83 || (puVar11[0xb] == 0x347c)))) break;
        puVar11 = puVar11 + 0x10;
      } while (puVar11 != puVar8);
      if (puVar11 != puVar8) {
        puVar7 = FUN_007aaa30(this_00,puVar7,puVar11);
        for (; ((puVar7 != *(undefined4 **)(param_1 + 0xc) && (puVar7[7] == 1)) &&
               ((puVar7[0xb] == 0x3b83 || (puVar7[0xb] == 0x347c)))); puVar7 = puVar7 + 0x10) {
        }
        local_140 = puVar7;
        FUN_00819d40(param_2);
        *(undefined1 *)(param_2[1] + -0x10) = 0;
        *(undefined4 *)(param_2[1] + -0x30) = 0xf00e2192;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x28) = 0;
        *(undefined4 *)(iVar1 + -0x24) = 0;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x20) = local_130;
        *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
        *(undefined4 *)(iVar1 + -0x18) = uStack_128;
        *(undefined4 *)(iVar1 + -0x14) = uStack_124;
        *(undefined4 **)(param_2[1] + -0x40) = puVar7;
        if (puVar7 != *(undefined4 **)(param_1 + 0xc)) {
          puVar7 = puVar7 + 0x10;
          local_140 = puVar7;
        }
        if (local_146 != '\0') {
          FUN_007aaa30(this_00,puVar7,*(undefined4 **)(param_1 + 0xc));
          return;
        }
        goto LAB_0081a225;
      }
    }
    local_13b = '\0';
    local_146 = '\0';
  }
LAB_0081a225:
  if ((char)uVar5 == '\0') {
    if (local_146 != '\0') goto LAB_0081ae8c;
  }
  else {
    puVar8 = *(undefined4 **)(param_1 + 0xc);
    if (puVar7 != puVar8) {
      do {
        if (((*(ushort *)((int)puVar7 + 0xe) & 0x800) != 0) && (puVar7[0xb] == 0xa582)) break;
        puVar7 = puVar7 + 0x10;
      } while (puVar7 != puVar8);
      if (puVar7 != puVar8) {
        puVar7 = FUN_007aaa30(this_00,(undefined4 *)*this_00,puVar7);
        for (; ((puVar7 != *(undefined4 **)(param_1 + 0xc) &&
                ((*(ushort *)((int)puVar7 + 0xe) & 0x800) != 0)) && (puVar7[0xb] == 0xa582));
            puVar7 = puVar7 + 0x10) {
        }
        local_140 = puVar7;
        FUN_00819d40(param_2);
        *(undefined1 *)(param_2[1] + -0x10) = 0;
        *(undefined4 *)(param_2[1] + -0x30) = 0x8d43950a;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x28) = 0;
        *(undefined4 *)(iVar1 + -0x24) = 0;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x20) = local_130;
        *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
        *(undefined4 *)(iVar1 + -0x18) = uStack_128;
        *(undefined4 *)(iVar1 + -0x14) = uStack_124;
        *(undefined4 **)(param_2[1] + -0x40) = puVar7;
        puVar8 = *(undefined4 **)(param_1 + 0xc);
        if (puVar7 == puVar8) {
          return;
        }
        puVar7 = puVar7 + 0x10;
        if (puVar7 == puVar8) {
          return;
        }
        local_140 = puVar7;
        if (local_146 != '\0') {
          FUN_007aaa30(this_00,puVar7,puVar8);
          return;
        }
        goto LAB_0081a32b;
      }
    }
    puVar7 = (undefined4 *)*this_00;
    local_137 = '\0';
    local_140 = puVar7;
  }
LAB_0081a32b:
  if (puVar7 != *(undefined4 **)(param_1 + 0xc)) {
    do {
      puVar8 = puVar7;
      local_e8 = puVar7;
      if (local_139 == '\0') {
        if (((local_13b == '\0') ||
            (local_e4 = (-(uint)(local_135 != '\0') & 0x9a781ca0) + 0xf00e2192, puVar7[7] != 1)) ||
           ((puVar7[0xb] != 0x3b83 && (puVar7[0xb] != 0x347c)))) {
          if ((local_138 != '\0') && (puVar7[7] == 0xb)) {
            FUN_00819d40(param_2);
            *(undefined4 *)(param_2[1] + -0x30) = 0xc6600b67;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x28) = 0;
            *(undefined4 *)(iVar1 + -0x24) = 0;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x20) = local_130;
            *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
            *(undefined4 *)(iVar1 + -0x18) = uStack_128;
            *(undefined4 *)(iVar1 + -0x14) = uStack_124;
            *(undefined4 **)(param_2[1] + -0x40) = puVar7;
            *(undefined1 *)(param_2[1] + -0x10) = 1;
            FUN_00819d40(param_2);
            *(undefined1 *)(param_2[1] + -0x10) = 1;
            *(undefined4 *)(param_2[1] + -0x30) = 0x5e69f74b;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x28) = 0;
            *(undefined4 *)(iVar1 + -0x24) = 0;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x20) = local_130;
            *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
            *(undefined4 *)(iVar1 + -0x18) = uStack_128;
            *(undefined4 *)(iVar1 + -0x14) = uStack_124;
            while ((puVar8 != *(undefined4 **)(param_1 + 0xc) &&
                   (local_140 = puVar8, puVar8[7] == 0xb))) {
              puVar8 = puVar8 + 0x10;
              local_140 = puVar8;
            }
            *(undefined4 **)(param_2[1] + -0x40) = puVar8;
          }
          goto LAB_0081a4f6;
        }
        if ((puVar7 != (undefined4 *)*this_00) &&
           ((*param_2 == param_2[1] || (*(undefined4 **)(param_2[1] + -0x40) != puVar7)))) {
          FUN_00819d40(param_2);
          *(undefined4 *)(param_2[1] + -0x30) = 0xc6600b67;
          iVar1 = param_2[1];
          *(undefined4 *)(iVar1 + -0x28) = 0;
          *(undefined4 *)(iVar1 + -0x24) = 0;
          iVar1 = param_2[1];
          *(undefined4 *)(iVar1 + -0x20) = local_130;
          *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
          *(undefined4 *)(iVar1 + -0x18) = uStack_128;
          *(undefined4 *)(iVar1 + -0x14) = uStack_124;
          *(undefined4 **)(param_2[1] + -0x40) = puVar7;
          *(undefined1 *)(param_2[1] + -0x10) = 0;
        }
        FUN_00819d40(param_2);
        *(undefined1 *)(param_2[1] + -0x10) = 0;
        *(int *)(param_2[1] + -0x30) = local_e4;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x28) = 0;
        *(undefined4 *)(iVar1 + -0x24) = 0;
        iVar1 = param_2[1];
        *(undefined4 *)(iVar1 + -0x20) = local_130;
        *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
        *(undefined4 *)(iVar1 + -0x18) = uStack_128;
        *(undefined4 *)(iVar1 + -0x14) = uStack_124;
        if (puVar7 != *(undefined4 **)(param_1 + 0xc)) {
          while (puVar7[7] == 1) {
            if (((puVar7[0xb] != 0x3b83) && (puVar7[0xb] != 0x347c)) ||
               (puVar7 = puVar7 + 0x10, puVar7 == *(undefined4 **)(param_1 + 0xc))) break;
          }
        }
        *(undefined4 **)(param_2[1] + -0x40) = puVar7;
        puVar8 = puVar7 + -0x10;
      }
      else {
LAB_0081a4f6:
        if (((local_137 == '\0') || ((*(ushort *)((int)puVar7 + 0xe) & 0x800) == 0)) ||
           (puVar7[0xb] != 0xa582)) {
          if (local_134 == '\0') {
            if (local_137 != '\0') goto LAB_0081a749;
LAB_0081a873:
            if (local_139 != '\0') goto LAB_0081a983;
            if ((local_132 != '\0') &&
               (((puVar7[7] == 0 || (puVar7[7] == 6)) &&
                ((*(ushort *)((int)puVar7 + 0xe) & 0x200) != 0)))) {
              if ((puVar8 != (undefined4 *)*this_00) &&
                 ((*param_2 == param_2[1] || (*(undefined4 **)(param_2[1] + -0x40) != puVar8)))) {
                FUN_00819d40(param_2);
                *(int *)(param_2[1] + -0x30) = local_110[0];
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x28) = 0;
                *(undefined4 *)(iVar1 + -0x24) = 0;
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x20) = local_130;
                *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                *(undefined1 *)(param_2[1] + -0x10) = 0;
              }
              puVar7 = puVar8;
              if (puVar8 != *(undefined4 **)(param_1 + 0xc)) {
                do {
                  puVar8 = puVar7;
                  if (((puVar8[7] != 0) && (puVar8[7] != 6)) ||
                     ((*(ushort *)((int)puVar8 + 0xe) & 0x200) == 0)) {
                    FUN_00819d40(param_2);
                    *(undefined1 *)(param_2[1] + -0x10) = 0;
                    *(undefined4 *)(param_2[1] + -0x30) = 0x89a9f6d7;
                    goto LAB_0081a70b;
                  }
                  puVar7 = puVar8 + 0x10;
                } while (puVar8 + 0x10 != *(undefined4 **)(param_1 + 0xc));
                goto LAB_0081ae78;
              }
              goto LAB_0081a739;
            }
            if (local_133 != '\0') {
              iVar1 = puVar7[7];
              if ((iVar1 == 0) || (iVar1 == 10)) {
                bVar12 = true;
              }
              else {
                bVar12 = false;
              }
              if (local_136 == '\0') {
                if (bVar12) goto LAB_0081aa28;
              }
              else if ((bVar12) || (iVar1 == 6)) {
LAB_0081aa28:
                if ((*(byte *)((int)puVar7 + 0xe) & 0x40) == 0) {
                  bVar12 = puVar8 == (undefined4 *)*this_00;
                  iVar1 = param_2[1];
                  bVar13 = *param_2 == iVar1;
                  if (((bVar12) || (bVar13)) || (*(undefined4 **)(iVar1 + -0x40) != puVar8)) {
                    bVar4 = false;
                    if ((!bVar12) && (!bVar13)) goto LAB_0081aa64;
LAB_0081aa71:
                    bVar3 = false;
                    if (!bVar12) {
                      if (!bVar13) goto LAB_0081aa7f;
LAB_0081aacc:
                      FUN_00819d40(param_2);
                      *(int *)(param_2[1] + -0x30) = local_110[0];
                      iVar1 = param_2[1];
                      *(undefined4 *)(iVar1 + -0x28) = 0;
                      *(undefined4 *)(iVar1 + -0x24) = 0;
                      iVar1 = param_2[1];
                      *(undefined4 *)(iVar1 + -0x20) = local_130;
                      *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                      *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                      *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                      *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                      *(undefined1 *)(param_2[1] + -0x10) = 0;
                    }
                  }
                  else {
                    bVar4 = true;
LAB_0081aa64:
                    if (*(int *)(*(int *)(iVar1 + -0x40) + 0x1c) != 3) goto LAB_0081aa71;
                    bVar3 = true;
LAB_0081aa7f:
                    if (!bVar4) {
                      if (!bVar3) goto LAB_0081aacc;
                      if (puVar8 + -0x10 != *(undefined4 **)(iVar1 + -0x40)) {
                        FUN_00819d40(param_2);
                        *(int *)(param_2[1] + -0x30) = local_110[0];
                        iVar1 = param_2[1];
                        *(undefined4 *)(iVar1 + -0x28) = 0;
                        *(undefined4 *)(iVar1 + -0x24) = 0;
                        iVar1 = param_2[1];
                        *(undefined4 *)(iVar1 + -0x20) = local_130;
                        *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                        *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                        *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                        *(undefined4 **)(param_2[1] + -0x40) = puVar8 + -0x10;
                        *(undefined1 *)(param_2[1] + -0x10) = 0;
                      }
                    }
                  }
                  puVar7 = puVar8;
                  uVar5 = local_130;
                  uVar6 = uStack_12c;
                  uVar15 = uStack_128;
                  uVar16 = uStack_124;
                  if (puVar8 != *(undefined4 **)(param_1 + 0xc)) {
                    do {
                      puVar8 = puVar7;
                      iVar1 = puVar8[7];
                      if ((iVar1 == 0) || (iVar1 == 10)) {
                        bVar12 = true;
                      }
                      else {
                        bVar12 = false;
                      }
                      if (local_136 == '\0') {
                        if (bVar12) goto LAB_0081ab3b;
LAB_0081ab41:
                        if (iVar1 == 2) {
                          local_110[0] = -0x1ea3503b;
                          local_108 = 0;
                          local_104 = 0;
                          local_100 = uVar5;
                          uStack_fc = uVar6;
                          uStack_f8 = uVar15;
                          uStack_f4 = uVar16;
                        }
                        else {
                          FUN_00819d40(param_2);
                          *(undefined1 *)(param_2[1] + -0x10) = 0;
                          *(undefined4 *)(param_2[1] + -0x30) = 0xe15cafc5;
                          iVar1 = param_2[1];
                          *(undefined4 *)(iVar1 + -0x28) = 0;
                          *(undefined4 *)(iVar1 + -0x24) = 0;
                          iVar1 = param_2[1];
                          *(undefined4 *)(iVar1 + -0x20) = local_130;
                          *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                          *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                          *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                          *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                          uVar5 = local_130;
                          uVar6 = uStack_12c;
                          uVar15 = uStack_128;
                          uVar16 = uStack_124;
                        }
                        if ((local_131 == '\0') || (puVar8[7] != 7)) goto LAB_0081a739;
                      }
                      else {
                        if ((!bVar12) && (iVar1 != 6)) goto LAB_0081ab41;
LAB_0081ab3b:
                        if ((*(byte *)((int)puVar8 + 0xe) & 0x40) != 0) goto LAB_0081ab41;
                      }
                      puVar7 = puVar8 + 0x10;
                    } while (puVar8 + 0x10 != *(undefined4 **)(param_1 + 0xc));
                    goto LAB_0081ae78;
                  }
                  goto LAB_0081a739;
                }
              }
            }
LAB_0081a983:
            if ((puVar7[7] != 2) || ((puVar7[0xb] != 0xb828 && (puVar7[0xb] != 0xb0c2)))) {
              if ((puVar7[7] == 3) && ((iVar1 = puVar7[0xb], iVar1 == 0xb828 || (iVar1 == 0xb0c2))))
              {
                iVar2 = param_2[1];
                if (*param_2 != iVar2) {
                  if (iVar1 == 0xb828) {
                    FUN_00819780((int)local_e0);
                    local_e0[0] = puVar8;
                    FUN_00819240(local_d0,local_110);
                    local_b0 = 1;
                    FUN_00819de0(param_2,local_e0);
                  }
                  else {
                    puVar7 = (undefined4 *)(*(int *)(iVar2 + -0x40) + 0x40);
                    if (puVar8 != puVar7) {
                      puVar8 = FUN_007aaa30(this_00,puVar7,puVar8);
                    }
                    *(undefined4 **)(iVar2 + -0x40) = puVar8;
                  }
                }
                local_108 = 0;
                local_110[0] = -0x399ff499;
                local_104 = 0;
                local_100 = local_130;
                uStack_fc = uStack_12c;
                uStack_f8 = uStack_128;
                uStack_f4 = uStack_124;
              }
              goto LAB_0081ae78;
            }
            iVar1 = local_e8[8];
            local_94 = local_e8[9];
            local_118 = 2.0;
            if ((((iVar1 != 0 || local_94 != 0) &&
                 (pvVar10 = ObjectRegistry_GetGlobal(), pvVar10 != (void *)0x0)) &&
                (pvVar10 = ObjectRegistry_FindBorrowed(pvVar10,CONCAT44(local_94,iVar1)),
                pvVar10 != (void *)0x0)) &&
               (pvVar10 = Object_FindCatalogInfo(pvVar10), pvVar10 != (void *)0x0)) {
              if ((*(uint *)((int)pvVar10 + 0xd0) & 0x10000) == 0) {
                if ((iVar1 == *(int *)(local_114 + 0x988)) &&
                   (local_94 == *(int *)(local_114 + 0x98c))) {
                  local_118 = 0.25;
                }
              }
              else {
                local_118 = 3.0;
              }
            }
            iVar1 = param_2[1];
            if ((*param_2 == iVar1) || (*(int *)(iVar1 + -0x30) != 0x50660d52)) {
LAB_0081acff:
              FUN_00819e40(this_00,local_110,local_110[0] != -0x1ea3503b,&local_140,local_118,'\0',
                           param_2);
              puVar8 = local_140;
            }
            else {
              FUN_008191e0(*(undefined4 **)(iVar1 + -0x40),&local_50);
              FUN_008191e0(local_e8,&local_70);
              auVar14._0_4_ =
                   (fStack_68 - fStack_48) * (fStack_68 - fStack_48) +
                   (fStack_6c - fStack_4c) * (fStack_6c - fStack_4c) +
                   (local_70 - local_50) * (local_70 - local_50);
              auVar14._4_4_ = auVar14._0_4_;
              auVar14._8_4_ = auVar14._0_4_;
              auVar14._12_4_ = auVar14._0_4_;
              auVar14 = sqrtps(auVar14,auVar14);
              local_40 = auVar14._0_4_;
              local_60 = 0x3f000000;
              if (0.5 <= local_40) goto LAB_0081acff;
              if ((undefined4 *)(extraout_EDX + 0x40) < puVar8) {
                puVar8 = FUN_007aaa30(this_00,(undefined4 *)(extraout_EDX + 0x40),puVar8);
              }
            }
            uStack_88 = puVar8[2];
            local_90 = *puVar8;
            local_24 = puVar8[9];
            uVar5 = puVar8[8];
            uStack_8c = puVar8[1];
            uStack_84 = local_90;
            local_80 = local_90;
            uStack_7c = uStack_8c;
            uStack_78 = uStack_88;
            uStack_74 = local_90;
            FUN_00819780((int)local_e0);
            local_b0 = puVar8[0xb] != 0xb0c2;
            local_d0[0] = 0x50660d52;
            local_c4 = local_24;
            local_c0 = local_80;
            uStack_bc = uStack_7c;
            uStack_b8 = uStack_78;
            uStack_b4 = uStack_74;
            local_e0[0] = puVar8;
            local_c8 = uVar5;
            FUN_00819de0(param_2,local_e0);
            local_104 = puVar8[9];
            local_108 = puVar8[8];
            local_110[0] = 0x443f45ce;
            local_100 = local_80;
            uStack_fc = uStack_7c;
            uStack_f8 = uStack_78;
            uStack_f4 = uStack_74;
          }
          else {
            if (((puVar7[7] == 0) || (puVar7[7] == 6)) &&
               ((*(ushort *)((int)puVar7 + 0xe) & 0x100) != 0)) {
              puVar7 = (undefined4 *)*this_00;
              iVar1 = param_2[1];
              local_13a = *param_2 == iVar1;
              if (((puVar8 == puVar7) || ((bool)local_13a)) ||
                 (bVar12 = true, *(undefined4 **)(iVar1 + -0x40) != puVar8)) {
                bVar12 = false;
              }
              bVar13 = false;
              if (((!(bool)local_13a) &&
                  (FUN_008192a0(local_e0,(undefined4 *)(iVar1 + -0x40)), local_d0[0] == 0x50660d52))
                 && ((*(ushort *)((int)local_e0[0] + 0xe) & 0x1180) != 0)) {
                bVar13 = true;
              }
              if ((puVar8 != puVar7) && (((local_13a != '\0' || (!bVar12)) && (!bVar13)))) {
                FUN_00819d40(param_2);
                *(int *)(param_2[1] + -0x30) = local_110[0];
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x28) = 0;
                *(undefined4 *)(iVar1 + -0x24) = 0;
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x20) = local_130;
                *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                *(undefined1 *)(param_2[1] + -0x10) = 0;
              }
              puVar7 = puVar8;
              if (puVar8 != *(undefined4 **)(param_1 + 0xc)) {
LAB_0081a6d0:
                puVar8 = puVar7;
                if (((puVar8[7] == 0) || (puVar8[7] == 6)) &&
                   ((*(ushort *)((int)puVar8 + 0xe) & 0x100) != 0)) goto code_r0x0081a6e4;
                FUN_00819d40(param_2);
                *(undefined1 *)(param_2[1] + -0x10) = 0;
                *(undefined4 *)(param_2[1] + -0x30) = 0x9a00b7cc;
LAB_0081a70b:
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x28) = 0;
                *(undefined4 *)(iVar1 + -0x24) = 0;
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x20) = local_130;
                *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                if (puVar8[7] != 7) goto LAB_0081a739;
                goto LAB_0081ae78;
              }
            }
            else {
LAB_0081a749:
              iVar1 = puVar7[7];
              if ((((iVar1 != 0) && (iVar1 != 0xd)) && (iVar1 != 6)) ||
                 ((*(byte *)((int)puVar7 + 0xe) & 0x80) == 0)) goto LAB_0081a873;
              puVar7 = (undefined4 *)*this_00;
              iVar1 = param_2[1];
              local_13a = *param_2 == iVar1;
              if (((puVar8 == puVar7) || ((bool)local_13a)) ||
                 (bVar12 = true, *(undefined4 **)(iVar1 + -0x40) != puVar8)) {
                bVar12 = false;
              }
              bVar13 = false;
              if (((!(bool)local_13a) &&
                  (FUN_008192a0(local_e0,(undefined4 *)(iVar1 + -0x40)), local_d0[0] == 0x50660d52))
                 && ((*(ushort *)((int)local_e0[0] + 0xe) & 0x1180) != 0)) {
                bVar13 = true;
              }
              if (((puVar8 != puVar7) && ((local_13a != '\0' || (!bVar12)))) && (!bVar13)) {
                FUN_00819d40(param_2);
                *(int *)(param_2[1] + -0x30) = local_110[0];
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x28) = 0;
                *(undefined4 *)(iVar1 + -0x24) = 0;
                iVar1 = param_2[1];
                *(undefined4 *)(iVar1 + -0x20) = local_130;
                *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
                *(undefined4 *)(iVar1 + -0x18) = uStack_128;
                *(undefined4 *)(iVar1 + -0x14) = uStack_124;
                *(undefined4 **)(param_2[1] + -0x40) = puVar8;
                *(undefined1 *)(param_2[1] + -0x10) = 0;
              }
              puVar7 = puVar8;
              if (puVar8 != *(undefined4 **)(param_1 + 0xc)) {
                do {
                  puVar8 = puVar7;
                  iVar1 = puVar8[7];
                  if ((((iVar1 != 0) && (iVar1 != 0xd)) && (iVar1 != 6)) ||
                     ((*(byte *)((int)puVar8 + 0xe) & 0x80) == 0)) {
                    FUN_00819d40(param_2);
                    *(undefined1 *)(param_2[1] + -0x10) = 0;
                    *(undefined4 *)(param_2[1] + -0x30) = 0xe99b65d5;
                    goto LAB_0081a70b;
                  }
                  puVar7 = puVar8 + 0x10;
                } while (puVar8 + 0x10 != *(undefined4 **)(param_1 + 0xc));
                goto LAB_0081ae78;
              }
            }
LAB_0081a739:
            puVar8 = puVar8 + -0x10;
          }
        }
        else {
          if ((puVar8 != (undefined4 *)*this_00) &&
             ((*param_2 == param_2[1] || (*(undefined4 **)(param_2[1] + -0x40) != puVar8)))) {
            FUN_00819d40(param_2);
            *(undefined4 *)(param_2[1] + -0x30) = 0xc6600b67;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x28) = 0;
            *(undefined4 *)(iVar1 + -0x24) = 0;
            iVar1 = param_2[1];
            *(undefined4 *)(iVar1 + -0x20) = local_130;
            *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
            *(undefined4 *)(iVar1 + -0x18) = uStack_128;
            *(undefined4 *)(iVar1 + -0x14) = uStack_124;
            *(undefined4 **)(param_2[1] + -0x40) = puVar8;
            *(undefined1 *)(param_2[1] + -0x10) = 0;
          }
          FUN_00819d40(param_2);
          *(undefined1 *)(param_2[1] + -0x10) = 0;
          *(undefined4 *)(param_2[1] + -0x30) = 0x8d43950a;
          iVar1 = param_2[1];
          *(undefined4 *)(iVar1 + -0x28) = 0;
          *(undefined4 *)(iVar1 + -0x24) = 0;
          iVar1 = param_2[1];
          *(undefined4 *)(iVar1 + -0x20) = local_130;
          *(undefined4 *)(iVar1 + -0x1c) = uStack_12c;
          *(undefined4 *)(iVar1 + -0x18) = uStack_128;
          *(undefined4 *)(iVar1 + -0x14) = uStack_124;
          puVar7 = *(undefined4 **)(param_1 + 0xc);
          if (puVar8 != puVar7) {
            do {
              if (((*(ushort *)((int)puVar8 + 0xe) & 0x800) == 0) || (puVar8[0xb] != 0xa582)) break;
              puVar8 = puVar8 + 0x10;
            } while (puVar8 != puVar7);
            if (puVar8 != puVar7) {
              *(undefined4 **)(param_2[1] + -0x40) = puVar8;
              puVar8 = puVar8 + -0x10;
              goto LAB_0081ae78;
            }
          }
          *(undefined4 **)(param_2[1] + -0x40) = puVar7 + -0x10;
          puVar8 = puVar8 + -0x10;
        }
      }
LAB_0081ae78:
      puVar7 = puVar8 + 0x10;
      local_140 = puVar7;
    } while (puVar7 != *(undefined4 **)(param_1 + 0xc));
  }
LAB_0081ae8c:
  local_e0[0] = (undefined4 *)(*(int *)(param_1 + 0xc) + -0x40);
  if ((*param_2 == param_2[1]) || (*(undefined4 **)(param_2[1] + -0x40) != local_e0[0])) {
    local_d0[0] = local_110[0];
    local_c8 = local_108;
    local_c4 = local_104;
    local_c0 = local_100;
    uStack_bc = uStack_fc;
    uStack_b8 = uStack_f8;
    uStack_b4 = uStack_f4;
    local_b0 = 0;
    FUN_00819de0(param_2,local_e0);
  }
  return;
code_r0x0081a6e4:
  puVar7 = puVar8 + 0x10;
  if (puVar8 + 0x10 == *(undefined4 **)(param_1 + 0xc)) goto LAB_0081ae78;
  goto LAB_0081a6d0;
}

