/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst original PC1.67 instruction contract. Planar mirror bucket; ECX owner plus four physical
   stack words, RET10. Original owned ranges006F2330..2536
   and006F2540..3AB5:6013bytes1394instructions. Nine bytes2537..253F are NOT owned function code.
   Reflection-disabled branch draws mirror vector with original material helper; enabled branch
   copies13DWORD draw-context words and handles mirror surfaces/reflected scene. Initial surface
   stamps use compare index7, raw reference1-based, comparison/write masksFFFFFFFF, stencil
   ops2/0/2, color mask7, depth write1 and depth compare index1. Per-reflection inside preparation
   uses compare index2 and mask3F, write0, depth range1..1, then restores viewport depth range.
   Local context+10 and+13 are set1 at006F312D/3135. Actual reflected ordered walk006F374C uses
   allow-reflection0, avoiding recursive reflections while still drawing mirror surfaces. Final
   material/surface draw and original restoration remain in full export. The native initial
   stamped-surface draw enables RGB and depth writing; it is a complete producing draw, not merely a
   stencil-only replay of an earlier opaque surface. An adaptation must account for that whole
   producing stage. Matrix/near-plane/fade arithmetic, every original global and inferred C
   local/prototype type are outside this selected state contract; no new formula or recovered-symbol
   claim. */

void __thiscall
SceneRenderer_DrawPlanarMirrorBucket
          (void *this,int *param_1,undefined4 *param_2,int param_3,char param_4)

{
  uint *puVar1;
  void *this_00;
  int *piVar2;
  float *pfVar3;
  void *pvVar4;
  undefined1 (*pauVar5) [16];
  void *pvVar6;
  int *piVar7;
  void *pvVar8;
  int iVar9;
  uint *puVar10;
  uint *puVar11;
  undefined4 *puVar12;
  undefined1 **ppuVar13;
  bool bVar14;
  float10 fVar15;
  float fVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined4 uVar21;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  uint uStack_18b0;
  int iStack_18ac;
  undefined4 *local_18a4;
  undefined4 uStack_18a0;
  undefined4 *local_189c;
  undefined4 *local_1898;
  undefined4 *local_1894;
  float local_1890;
  float fStack_188c;
  float fStack_1888;
  undefined4 uStack_1884;
  undefined4 *local_1880;
  void *local_187c;
  int iStack_1878;
  float fStack_1874;
  int iStack_1870;
  float fStack_1868;
  undefined4 uStack_1864;
  float fStack_1860;
  int local_185c;
  undefined4 uStack_1858;
  float fStack_1854;
  undefined4 uStack_1850;
  float fStack_184c;
  undefined4 uStack_1848;
  float fStack_1844;
  undefined4 uStack_1840;
  undefined4 uStack_183c;
  undefined4 uStack_1838;
  undefined4 uStack_1834;
  float fStack_1830;
  undefined4 uStack_182c;
  undefined4 uStack_1828;
  undefined4 uStack_1824;
  undefined4 uStack_1820;
  undefined4 uStack_181c;
  float fStack_1818;
  float fStack_1814;
  float fStack_1810;
  undefined4 uStack_180c;
  undefined4 uStack_1808;
  undefined4 uStack_1804;
  undefined4 uStack_1800;
  undefined4 uStack_17fc;
  float fStack_17f8;
  undefined4 uStack_17f4;
  undefined4 uStack_17f0;
  undefined4 uStack_17ec;
  undefined4 uStack_17e8;
  undefined4 uStack_17e4;
  undefined4 uStack_17e0;
  float fStack_17dc;
  float fStack_17d8;
  float fStack_17d4;
  float fStack_17d0;
  float fStack_17cc;
  float fStack_17c8;
  float fStack_17c4;
  undefined4 uStack_17c0;
  undefined4 uStack_17bc;
  undefined4 *puStack_17b8;
  undefined4 *puStack_17b4;
  float fStack_17b0;
  float fStack_17ac;
  undefined4 uStack_17a8;
  undefined4 uStack_17a4;
  undefined4 uStack_17a0;
  undefined4 uStack_179c;
  int aiStack_1798 [2];
  int local_1790 [2];
  float fStack_1788;
  float fStack_1784;
  float fStack_1780;
  float fStack_177c;
  float fStack_1778;
  float fStack_1774;
  float fStack_1770;
  float fStack_176c;
  float fStack_1768;
  float fStack_1764;
  float fStack_1760;
  float fStack_175c;
  float fStack_1758;
  float fStack_1754;
  float fStack_1750;
  float fStack_174c;
  float fStack_1748;
  float fStack_1744;
  float fStack_1740;
  float fStack_173c;
  float fStack_1738;
  float fStack_1734;
  float fStack_1730;
  float fStack_172c;
  float fStack_1728;
  float fStack_1724;
  float fStack_1720;
  float fStack_171c;
  undefined1 auStack_1718 [8];
  float fStack_1710;
  float fStack_170c;
  undefined4 uStack_1708;
  undefined4 uStack_1704;
  undefined4 uStack_1700;
  undefined4 uStack_16fc;
  float fStack_16f8;
  float fStack_16f4;
  undefined4 uStack_16f0;
  undefined4 uStack_16ec;
  undefined4 uStack_16e8;
  undefined4 uStack_16e4;
  undefined4 uStack_16e0;
  undefined4 uStack_16dc;
  float fStack_16d8;
  float fStack_16d4;
  float fStack_16d0;
  undefined4 uStack_16cc;
  float fStack_16c8;
  float fStack_16c4;
  float fStack_16c0;
  undefined4 uStack_16bc;
  float fStack_16b8;
  float fStack_16b4;
  float fStack_16b0;
  undefined4 uStack_16ac;
  float fStack_16a8;
  undefined1 auStack_16a0 [16];
  float fStack_1690;
  float fStack_168c;
  float fStack_1688;
  float fStack_1684;
  float fStack_1680;
  float fStack_167c;
  float fStack_1678;
  float fStack_1674;
  float fStack_1670;
  float fStack_166c;
  float fStack_1668;
  float fStack_1664;
  float fStack_1660;
  undefined4 uStack_165c;
  float fStack_1650;
  float fStack_164c;
  float fStack_1648;
  float fStack_1644;
  float fStack_1640;
  undefined4 uStack_163c;
  float fStack_1638;
  float fStack_1634;
  float local_1630;
  float fStack_162c;
  float fStack_1628;
  float fStack_1624;
  float fStack_1620;
  float fStack_161c;
  float fStack_1618;
  float fStack_1614;
  float fStack_1610;
  float fStack_160c;
  float fStack_1608;
  float fStack_1604;
  float fStack_1600;
  float fStack_15fc;
  float fStack_15c8;
  float fStack_15c4;
  float fStack_15c0;
  float fStack_15bc;
  float fStack_15b8;
  float fStack_15b4;
  float fStack_15b0;
  float fStack_15ac;
  float fStack_15a8;
  float fStack_15a4;
  float fStack_15a0;
  float fStack_159c;
  float fStack_1598;
  float fStack_1594;
  float fStack_1590;
  float fStack_158c;
  undefined1 auStack_1588 [16];
  undefined1 auStack_1578 [16];
  float fStack_1568;
  float fStack_1564;
  float fStack_1560;
  float fStack_155c;
  float fStack_1558;
  float fStack_1554;
  float fStack_1550;
  float fStack_154c;
  undefined4 uStack_1548;
  undefined4 uStack_1544;
  undefined4 uStack_1540;
  undefined4 uStack_153c;
  undefined4 uStack_1538;
  undefined4 uStack_1534;
  undefined4 uStack_1530;
  float fStack_152c;
  float fStack_1528;
  undefined4 uStack_1524;
  undefined4 uStack_1520;
  undefined4 uStack_151c;
  undefined4 uStack_1518;
  float fStack_1514;
  undefined4 uStack_1510;
  float fStack_150c;
  undefined4 uStack_1508;
  float fStack_14f8;
  float fStack_14f4;
  float fStack_14f0;
  float fStack_14ec;
  float fStack_14e0;
  float fStack_14dc;
  float fStack_14d8;
  float fStack_14d4;
  float fStack_14d0;
  float fStack_14cc;
  float fStack_14c8;
  float fStack_14c4;
  float fStack_14c0;
  float fStack_14bc;
  float fStack_14b8;
  int iStack_14b4;
  int iStack_14b0;
  int iStack_14ac;
  undefined4 uStack_14a8;
  undefined4 uStack_14a4;
  undefined4 uStack_14a0;
  undefined4 uStack_149c;
  undefined4 uStack_1498;
  undefined4 uStack_1494;
  undefined4 uStack_1490;
  undefined4 uStack_148c;
  undefined4 uStack_1488;
  undefined4 uStack_1484;
  undefined4 uStack_1480;
  undefined4 uStack_147c;
  float fStack_1478;
  float fStack_1474;
  float fStack_1470;
  float fStack_146c;
  float fStack_1468;
  float fStack_1464;
  float fStack_1460;
  float fStack_145c;
  float fStack_1458;
  float fStack_1454;
  float fStack_1450;
  float fStack_144c;
  float fStack_1448;
  float fStack_1444;
  float fStack_1440;
  float fStack_143c;
  float fStack_1438;
  float fStack_1434;
  float fStack_1430;
  float fStack_142c;
  float fStack_1428;
  float fStack_1424;
  float fStack_1420;
  float fStack_141c;
  float fStack_1418;
  float fStack_1414;
  float fStack_1410;
  float fStack_140c;
  float fStack_1408;
  float fStack_1404;
  float fStack_1400;
  float fStack_13fc;
  undefined4 uStack_13f8;
  undefined4 uStack_13f4;
  uint auStack_13ec [2];
  undefined1 *local_13e4 [2];
  undefined1 uStack_13dc;
  undefined1 uStack_13d9;
  float fStack_13b8;
  float fStack_13b4;
  float fStack_13b0;
  undefined4 uStack_13ac;
  float fStack_13a8;
  float fStack_13a4;
  float fStack_13a0;
  undefined4 uStack_139c;
  float fStack_1398;
  float fStack_1394;
  float fStack_1390;
  undefined4 uStack_138c;
  float fStack_1388;
  float fStack_1384;
  float fStack_1380;
  float fStack_137c;
  undefined1 auStack_1378 [16];
  undefined4 uStack_1368;
  undefined4 uStack_1364;
  undefined4 uStack_1360;
  undefined4 uStack_135c;
  undefined4 uStack_1358;
  undefined4 uStack_1354;
  undefined4 uStack_1350;
  undefined4 uStack_134c;
  undefined4 uStack_1348;
  undefined4 uStack_1344;
  undefined4 uStack_1340;
  undefined4 uStack_133c;
  float afStack_1330 [2];
  float afStack_1328 [4];
  float afStack_1318 [6];
  float fStack_1300;
  float fStack_12fc;
  float fStack_12f8;
  float fStack_12f4;
  float fStack_12f0;
  float fStack_12ec;
  float fStack_12e8;
  float fStack_12e4;
  float fStack_12e0;
  float fStack_12dc;
  undefined1 auStack_1298 [176];
  float fStack_11e8;
  float fStack_11e4;
  float fStack_11e0;
  float fStack_11dc;
  float fStack_11d8;
  float fStack_11d4;
  float fStack_11d0;
  float fStack_11cc;
  float fStack_11c8;
  float fStack_11c4;
  float fStack_11c0;
  float fStack_11bc;
  float fStack_11b8;
  float fStack_11b4;
  float fStack_11b0;
  float fStack_11ac;
  float fStack_1088;
  undefined4 uStack_1084;
  undefined4 uStack_1080;
  undefined4 uStack_107c;
  undefined1 auStack_b68 [48];
  float fStack_b38;
  float fStack_b34;
  float fStack_b30;
  float fStack_b2c;
  float fStack_b28;
  float fStack_b24;
  float fStack_b20;
  float fStack_b1c;
  float fStack_b18;
  float fStack_b14;
  float fStack_b10;
  float fStack_b0c;
  float fStack_b08;
  float fStack_b04;
  float fStack_b00;
  float fStack_afc;
  undefined4 uStack_af8;
  undefined4 uStack_af4;
  undefined4 uStack_af0;
  undefined4 uStack_aec;
  undefined4 uStack_ae8;
  undefined4 uStack_ae4;
  undefined4 uStack_ae0;
  undefined4 uStack_adc;
  undefined4 uStack_ad8;
  undefined4 uStack_ad4;
  undefined4 uStack_ad0;
  undefined4 uStack_acc;
  undefined4 uStack_ac8;
  undefined4 uStack_ac4;
  undefined4 uStack_ac0;
  undefined4 uStack_abc;
  undefined1 auStack_438 [1060];
  undefined4 uStack_14;
  
  puVar12 = DAT_011d8530;
  uStack_14 = 0x6f2340;
  local_1894 = DAT_011d8530;
  local_187c = this;
  this_00 = (void *)Graphics_GetManagerSingleton();
  if ((DAT_011d2c50 & 1) == 0) {
    DAT_011d2c50 = DAT_011d2c50 | 1;
  }
  if ((DAT_011d2c50 & 2) == 0) {
    DAT_011d2c50 = DAT_011d2c50 | 2;
    DAT_011d2c40 = 0;
    DAT_011d2c44 = (void *)0x0;
    DAT_011d2c48 = (void *)0x0;
    _DAT_011d2c4c = "Renderer/SceneManager/MirrorCameras";
    FUN_00f7f381((_onexit_t)&LAB_00f92d50);
  }
  local_185c = ReadDwordOffset18_531F70((int)this_00);
  pvVar8 = local_187c;
  if (param_4 == '\0') {
    uStack_1884 = 0;
    fStack_1888 = 1.0;
    fStack_188c = 1.0;
    local_1890 = 0.0;
    _DAT_011d2c30 = 0.0;
    fRam011d2c34 = 1.0;
    fRam011d2c38 = 1.0;
    uRam011d2c3c = 0;
    if (*(uint *)((int)this + 0x1e4) < (uint)puVar12[2]) {
      piVar2 = (int *)(*(uint *)((int)this + 0x1e4) * 0x10 + puVar12[1]);
      *piVar2 = *piVar2 + 1;
      piVar2[2] = 1;
      *(undefined2 *)((int)piVar2 + 6) = 2;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)puVar12 + 0x12);
      piVar2[3] = (int)&DAT_011d2c30;
    }
    RenderDevice_SetAlphaBlendByte(this_00,0);
    RenderDevice_SetAlphaTestByte(this_00,0);
    RenderDevice_SetDepthWriteByte(this_00,1);
    FUN_0060fda0(this_00,7);
    uStack_18a0 = (float)((uint)uStack_18a0 & 0xffffff);
    FUN_006ee470(this,param_3,(undefined4 *)*param_1,param_1[1] - *param_1 >> 3,(int)param_2,
                 (char *)((int)&uStack_18a0 + 3));
  }
  else {
    puVar12 = param_2;
    ppuVar13 = local_13e4;
    for (iVar9 = 0xd; iVar9 != 0; iVar9 = iVar9 + -1) {
      *ppuVar13 = (undefined1 *)*puVar12;
      puVar12 = puVar12 + 1;
      ppuVar13 = ppuVar13 + 1;
    }
    if (*param_1 == 0) {
      return;
    }
    *(undefined1 *)((int)param_2 + 0x15) = *(undefined1 *)((int)local_187c + 0x2a2);
    FUN_006eb270(&DAT_011d2c40);
    FUN_0060f2a0((int)this_00);
    FUN_00610600(this_00,local_1790);
    local_1898 = (undefined4 *)*param_1;
    uStack_1884 = 0;
    fStack_1888 = 1.0;
    fStack_188c = 1.0;
    local_1890 = 0.0;
    _DAT_011d2c30 = 0.0;
    fRam011d2c34 = 1.0;
    fRam011d2c38 = 1.0;
    uRam011d2c3c = 0;
    local_189c = (undefined4 *)(param_1[1] - (int)local_1898 >> 3);
    if (*(uint *)((int)pvVar8 + 0x1e4) < (uint)local_1894[2]) {
      piVar2 = (int *)(*(uint *)((int)pvVar8 + 0x1e4) * 0x10 + local_1894[1]);
      *piVar2 = *piVar2 + 1;
      piVar2[2] = 1;
      *(undefined2 *)((int)piVar2 + 6) = 2;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)local_1894 + 0x12);
      piVar2[3] = (int)&DAT_011d2c30;
    }
    local_18a4 = (undefined4 *)0x0;
    if (local_189c != (undefined4 *)0x0) {
      do {
        puVar12 = (undefined4 *)local_1898[(int)local_18a4 * 2];
        FUN_0060fe30(this_00,1);
        local_1880 = (undefined4 *)((int)local_18a4 + 1);
        RenderDevice_SetStencilCompareReferenceMask(this_00,7,(int)local_1880,-1);
        RenderDevice_SetStencilWriteMask(this_00,-1);
        RenderDevice_SetStencilOpsFromIndices(this_00,2,0,2);
        FUN_0060fda0(this_00,7);
        RenderDevice_SetDepthWriteByte(this_00,1);
        RenderDevice_SetDepthCompareIndex(this_00,1);
        pfVar3 = (float *)FUN_006facd0((void *)*puVar12,&local_1630);
        FUN_006ea320(pvVar8,pfVar3);
        SceneShadow_UpdateItemMatrixPayloads(pvVar8,(int *)*puVar12);
        (**(code **)(*(int *)*puVar12 + 0x18))(puVar12[1],param_2);
        local_18a4 = local_1880;
      } while (local_1880 < local_189c);
    }
    puVar12 = local_189c;
    FUN_00610630(this_00,local_1790,0,0x3f800000);
    RenderDevice_SetDepthCompareIndex(this_00,1);
    iStack_1870 = param_2[2];
    fStack_1680 = *(float *)(iStack_1870 + 0x60);
    fStack_167c = *(float *)(iStack_1870 + 100);
    fStack_1678 = *(float *)(iStack_1870 + 0x68);
    fStack_1674 = *(float *)(iStack_1870 + 0x6c);
    uStack_1884 = 0;
    local_1890 = 1.0;
    fStack_1720 = fStack_1680 * 1.0;
    fStack_171c = fStack_167c * 1.0;
    auStack_1718._4_4_ = fStack_1674 * 0.0;
    auStack_1718._0_4_ = fStack_1678 * 1.0;
    fStack_1430 = *(float *)(iStack_1870 + 0xf0);
    fStack_142c = *(float *)(iStack_1870 + 0xf4);
    fStack_1428 = *(float *)(iStack_1870 + 0xf8);
    fStack_1424 = *(float *)(iStack_1870 + 0xfc);
    fStack_1420 = *(float *)(iStack_1870 + 0x100);
    fStack_141c = *(float *)(iStack_1870 + 0x104);
    fStack_1418 = *(float *)(iStack_1870 + 0x108);
    fStack_1414 = *(float *)(iStack_1870 + 0x10c);
    fStack_1410 = *(float *)(iStack_1870 + 0x110);
    fStack_140c = *(float *)(iStack_1870 + 0x114);
    fStack_1408 = *(float *)(iStack_1870 + 0x118);
    fStack_1404 = *(float *)(iStack_1870 + 0x11c);
    fStack_1400 = *(float *)(iStack_1870 + 0x120);
    fStack_13fc = *(float *)(iStack_1870 + 0x124);
    uStack_13f8 = *(undefined4 *)(iStack_1870 + 0x128);
    uStack_13f4 = *(undefined4 *)(iStack_1870 + 300);
    fStack_188c = local_1890;
    fStack_1888 = local_1890;
    if (puVar12 != (undefined4 *)0x0) {
      fStack_17d0 = 0.0;
      fStack_17cc = 0.0;
      fStack_17c8 = 0.0;
      fStack_17c4 = 0.0;
      local_18a4 = (undefined4 *)0x1;
      local_189c = local_1898;
      local_1880 = puVar12;
      do {
        piVar2 = (int *)*local_189c;
        FUN_006facd0((void *)*piVar2,&fStack_1770);
        pfVar3 = (float *)(**(code **)(*(int *)*piVar2 + 0x60))(piVar2[1]);
        fStack_1650 = *pfVar3;
        fStack_164c = pfVar3[1];
        fStack_1648 = pfVar3[2];
        fStack_1644 = pfVar3[3];
        fStack_15c0 = fStack_1770;
        fStack_15bc = fStack_176c;
        fStack_15b8 = fStack_1768;
        fStack_15b4 = fStack_1764;
        fStack_15b0 = fStack_1760;
        fStack_15ac = fStack_175c;
        fStack_15a8 = fStack_1758;
        fStack_15a4 = fStack_1754;
        fStack_15a0 = fStack_1750;
        fStack_159c = fStack_174c;
        fStack_1598 = fStack_1748;
        fStack_1594 = fStack_1744;
        fStack_1590 = fStack_1740 - fStack_1720;
        fStack_158c = fStack_173c - fStack_171c;
        auStack_1588._4_4_ = fStack_1734 - (float)auStack_1718._4_4_;
        auStack_1588._0_4_ = fStack_1738 - (float)auStack_1718._0_4_;
        pfVar3 = (float *)Matrix4_InvertWithReplicatedDeterminant
                                    ((undefined1 (*) [16])&local_1630,
                                     (undefined1 (*) [16])&fStack_15c0,afStack_1330);
        fStack_1730 = *pfVar3 * fStack_1650 + pfVar3[1] * fStack_164c + pfVar3[2] * fStack_1648 +
                      fStack_1644 * pfVar3[3];
        fStack_172c = pfVar3[4] * fStack_1650 + pfVar3[5] * fStack_164c + pfVar3[6] * fStack_1648 +
                      fStack_1644 * pfVar3[7];
        fStack_1728 = pfVar3[8] * fStack_1650 + pfVar3[9] * fStack_164c + pfVar3[10] * fStack_1648 +
                      fStack_1644 * pfVar3[0xb];
        fStack_1724 = pfVar3[0xc] * fStack_1650 + pfVar3[0xd] * fStack_164c +
                      pfVar3[0xe] * fStack_1648 + fStack_1644 * pfVar3[0xf];
        auVar22._0_4_ =
             (fStack_1740 -
             (fStack_1770 * fStack_1650 + fStack_1760 * fStack_164c + fStack_1750 * fStack_1648) *
             fStack_1644) - fStack_1680;
        auVar22._4_4_ =
             (fStack_173c -
             (fStack_176c * fStack_1650 + fStack_175c * fStack_164c + fStack_174c * fStack_1648) *
             fStack_1644) - fStack_167c;
        auVar22._8_4_ =
             (fStack_1738 -
             (fStack_1768 * fStack_1650 + fStack_1758 * fStack_164c + fStack_1748 * fStack_1648) *
             fStack_1644) - fStack_1678;
        auVar22._12_4_ =
             (fStack_1734 -
             (fStack_1764 * fStack_1650 + fStack_1754 * fStack_164c + fStack_1744 * fStack_1648) *
             fStack_1644) - fStack_1674;
        auVar23._0_4_ =
             auVar22._8_4_ * auVar22._8_4_ + auVar22._4_4_ * auVar22._4_4_ +
             auVar22._0_4_ * auVar22._0_4_;
        auVar23._4_4_ = auVar23._0_4_;
        auVar23._8_4_ = auVar23._0_4_;
        auVar23._12_4_ = auVar23._0_4_;
        auStack_16a0 = sqrtps(auVar23,auVar23);
        auVar18._4_4_ = auStack_16a0._0_4_;
        auVar18._0_4_ = auStack_16a0._0_4_;
        auVar18._8_4_ = auStack_16a0._0_4_;
        auVar18._12_4_ = auStack_16a0._0_4_;
        auVar23 = divps(auVar22,auVar18);
        fStack_1684 = auVar23._8_4_ * fStack_1728 + auVar23._4_4_ * fStack_172c +
                      auVar23._0_4_ * fStack_1730;
        fStack_1690 = fStack_17d0 - fStack_1684;
        fStack_168c = fStack_17cc - fStack_1684;
        fStack_1688 = fStack_17c8 - fStack_1684;
        fStack_1684 = fStack_17c4 - fStack_1684;
        if (0.0 <= fStack_1690) {
          fVar16 = (float)piVar2[7];
          fStack_14e0 = (fVar16 * DAT_0115c1d0 - (float)auStack_16a0._0_4_) + DAT_0115c1cc;
          fStack_14dc = (fVar16 * DAT_0115c1d0 - (float)auStack_16a0._0_4_) + DAT_0115c1cc;
          fStack_14d8 = (fVar16 * DAT_0115c1d0 - (float)auStack_16a0._0_4_) + DAT_0115c1cc;
          fStack_14d4 = (fVar16 * DAT_0115c1d0 - (float)auStack_16a0._0_4_) + DAT_0115c1cc;
          fVar16 = fStack_14e0 / DAT_0115c1cc;
          if (0.0 < fVar16) {
            fStack_1868 = -0.0 - fVar16;
            uStack_1858 = 0x3f800000;
            uStack_1864 = 0;
            fStack_1874 = (float)((uint)fVar16 & (int)fStack_1868 >> 0x1f);
            fStack_1860 = 1.0 - fStack_1874;
            local_1898 = (undefined4 *)
                         (~((int)fStack_1860 >> 0x1f) & (uint)fStack_1874 |
                         (int)fStack_1860 >> 0x1f & 0x3f800000U);
            fStack_1854 = fVar16;
            RenderDevice_SetStencilCompareReferenceMask(this_00,2,(int)local_18a4,0x3f);
            RenderDevice_SetStencilWriteMask(this_00,0);
            RenderDevice_SetDepthCompareIndex(this_00,7);
            FUN_0060fda0(this_00,0);
            RenderDevice_SetDepthWriteByte(this_00,1);
            FUN_006ea320(pvVar8,&fStack_1770);
            SceneShadow_UpdateItemMatrixPayloads(pvVar8,(int *)*piVar2);
            FUN_00610630(this_00,local_1790,0x3f800000,0x3f800000);
            (**(code **)(*(int *)*piVar2 + 0x18))(piVar2[1],param_2);
            FUN_00610630(this_00,aiStack_1798,0,0x3f800000);
            FUN_006df280(auStack_b68,param_2[2]);
            fVar16 = *(float *)(iStack_1878 + 0x3c) * fStack_172c +
                     *(float *)(iStack_1878 + 0x34) * fStack_1734 +
                     *(float *)(iStack_1878 + 0x38) * fStack_1730 +
                     *(float *)(iStack_1878 + 0x30) * fStack_1738;
            fStack_1788 = 2.0;
            fStack_16c8 = *(float *)(iStack_1878 + 0x30) - fVar16 * 2.0 * fStack_1738;
            fStack_16c4 = *(float *)(iStack_1878 + 0x34) - fVar16 * 2.0 * fStack_1734;
            fStack_16c0 = *(float *)(iStack_1878 + 0x38) - fVar16 * 2.0 * fStack_1730;
            uStack_16bc = 0;
            uStack_13ac = 0;
            fVar16 = fStack_172c * *(float *)(iStack_1878 + 0x4c) +
                     fStack_1734 * *(float *)(iStack_1878 + 0x44) +
                     fStack_1730 * *(float *)(iStack_1878 + 0x48) +
                     fStack_1738 * *(float *)(iStack_1878 + 0x40);
            fStack_1648 = *(float *)(iStack_1878 + 0x40) - fVar16 * 2.0 * fStack_1738;
            fStack_1644 = *(float *)(iStack_1878 + 0x44) - fVar16 * 2.0 * fStack_1734;
            fStack_1640 = *(float *)(iStack_1878 + 0x48) - fVar16 * 2.0 * fStack_1730;
            uStack_163c = 0;
            uStack_139c = 0;
            fVar16 = fStack_172c * *(float *)(iStack_1878 + 0x5c) +
                     fStack_1734 * *(float *)(iStack_1878 + 0x54) +
                     fStack_1730 * *(float *)(iStack_1878 + 0x58) +
                     fStack_1738 * *(float *)(iStack_1878 + 0x50);
            fStack_16d8 = *(float *)(iStack_1878 + 0x50) - fVar16 * 2.0 * fStack_1738;
            fStack_16d4 = *(float *)(iStack_1878 + 0x54) - fVar16 * 2.0 * fStack_1734;
            fStack_16d0 = *(float *)(iStack_1878 + 0x58) - fVar16 * 2.0 * fStack_1730;
            uStack_16cc = 0;
            fStack_16b8 = fStack_1738;
            fStack_16b4 = fStack_1734;
            fStack_16b0 = fStack_1730;
            uStack_138c = 0;
            fVar25 = *(float *)(iStack_1878 + 0x60) - fStack_1728;
            fVar26 = *(float *)(iStack_1878 + 100) - fStack_1724;
            fVar27 = *(float *)(iStack_1878 + 0x68) - fStack_1720;
            fVar28 = *(float *)(iStack_1878 + 0x6c) - fStack_171c;
            fVar16 = fVar28 * fStack_172c + fVar26 * fStack_1734 +
                     fVar27 * fStack_1730 + fVar25 * fStack_1738;
            uStack_16ac = 0;
            fStack_1388 = (fVar25 - fVar16 * 2.0 * fStack_1738) + fStack_1728;
            fStack_1384 = (fVar26 - fVar16 * 2.0 * fStack_1734) + fStack_1724;
            fStack_1380 = (fVar27 - fVar16 * 2.0 * fStack_1730) + fStack_1720;
            fStack_137c = (fVar28 - fVar16 * 2.0 * 0.0) + fStack_171c;
            fStack_1784 = fStack_1788;
            fStack_1780 = fStack_1788;
            fStack_177c = fStack_1788;
            fStack_13b8 = fStack_16c8;
            fStack_13b4 = fStack_16c4;
            fStack_13b0 = fStack_16c0;
            fStack_13a8 = fStack_1648;
            fStack_13a4 = fStack_1644;
            fStack_13a0 = fStack_1640;
            fStack_1398 = fStack_16d8;
            fStack_1394 = fStack_16d4;
            fStack_1390 = fStack_16d0;
            FUN_009618b0(auStack_b68,&fStack_13b8);
            FUN_009612e0(auStack_b68,'\0');
            auStack_1378._0_4_ = uStack_af8;
            auStack_1378._4_4_ = uStack_af4;
            auStack_1378._8_4_ = uStack_af0;
            auStack_1378._12_4_ = uStack_aec;
            uStack_1368 = uStack_ae8;
            uStack_1364 = uStack_ae4;
            uStack_1360 = uStack_ae0;
            uStack_135c = uStack_adc;
            uStack_1358 = uStack_ad8;
            uStack_1354 = uStack_ad4;
            uStack_1350 = uStack_ad0;
            uStack_134c = uStack_acc;
            uStack_1348 = uStack_ac8;
            uStack_1344 = uStack_ac4;
            uStack_1340 = uStack_ac0;
            uStack_133c = uStack_abc;
            Matrix4_InvertWithReplicatedDeterminant
                      ((undefined1 (*) [16])afStack_1318,&auStack_1378,afStack_1328);
            fVar16 = fStack_b08 - fStack_1728;
            fVar25 = fStack_b04 - fStack_1724;
            fVar26 = fStack_b00 - fStack_1720;
            fVar27 = fStack_afc - fStack_171c;
            local_1898 = (undefined4 *)
                         (fStack_1738 *
                          (afStack_1318[1] * fStack_b28 + afStack_1318[0] * fStack_b38 +
                           afStack_1318[2] * fStack_b18 + afStack_1318[3] * fVar16) +
                          fStack_1734 *
                          (afStack_1318[1] * fStack_b24 + afStack_1318[0] * fStack_b34 +
                           afStack_1318[2] * fStack_b14 + afStack_1318[3] * fVar25) +
                          fStack_1730 *
                          (afStack_1318[1] * fStack_b20 + afStack_1318[0] * fStack_b30 +
                           afStack_1318[2] * fStack_b10 + afStack_1318[3] * fVar26) +
                         fStack_172c *
                         (afStack_1318[1] * fStack_b1c + afStack_1318[0] * fStack_b2c +
                          afStack_1318[2] * fStack_b0c + afStack_1318[3] * fVar27));
            local_1894 = (undefined4 *)
                         (fStack_1738 *
                          (afStack_1318[5] * fStack_b28 + afStack_1318[4] * fStack_b38 +
                           fStack_1300 * fStack_b18 + fStack_12fc * fVar16) +
                          fStack_1734 *
                          (afStack_1318[5] * fStack_b24 + afStack_1318[4] * fStack_b34 +
                           fStack_1300 * fStack_b14 + fStack_12fc * fVar25) +
                          fStack_1730 *
                          (afStack_1318[5] * fStack_b20 + afStack_1318[4] * fStack_b30 +
                           fStack_1300 * fStack_b10 + fStack_12fc * fVar26) +
                         fStack_172c *
                         (afStack_1318[5] * fStack_b1c + afStack_1318[4] * fStack_b2c +
                          fStack_1300 * fStack_b0c + fStack_12fc * fVar27));
            local_1890 = fStack_1738 *
                         (fStack_12f4 * fStack_b28 + fStack_12f8 * fStack_b38 +
                          fStack_12f0 * fStack_b18 + fStack_12ec * fVar16) +
                         fStack_1734 *
                         (fStack_12f4 * fStack_b24 + fStack_12f8 * fStack_b34 +
                          fStack_12f0 * fStack_b14 + fStack_12ec * fVar25) +
                         fStack_1730 *
                         (fStack_12f4 * fStack_b20 + fStack_12f8 * fStack_b30 +
                          fStack_12f0 * fStack_b10 + fStack_12ec * fVar26) +
                         fStack_172c *
                         (fStack_12f4 * fStack_b1c + fStack_12f8 * fStack_b2c +
                          fStack_12f0 * fStack_b0c + fStack_12ec * fVar27);
            fStack_188c = fStack_1738 *
                          (fStack_12e4 * fStack_b28 + fStack_12e8 * fStack_b38 +
                           fStack_12e0 * fStack_b18 + fStack_12dc * fVar16) +
                          fStack_1734 *
                          (fStack_12e4 * fStack_b24 + fStack_12e8 * fStack_b34 +
                           fStack_12e0 * fStack_b14 + fStack_12dc * fVar25) +
                          fStack_1730 *
                          (fStack_12e4 * fStack_b20 + fStack_12e8 * fStack_b30 +
                           fStack_12e0 * fStack_b10 + fStack_12dc * fVar26) +
                          fStack_172c *
                          (fStack_12e4 * fStack_b1c + fStack_12e8 * fStack_b2c +
                           fStack_12e0 * fStack_b0c + fStack_12dc * fVar27);
            puStack_17b8 = local_1898;
            puStack_17b4 = local_1894;
            fStack_17b0 = local_1890;
            fStack_17ac = fStack_188c;
            pvVar4 = (void *)Graphics_GetManagerSingleton();
            FUN_0060f4d0(pvVar4,1,&puStack_17b8);
            FUN_0060f510(pvVar4,2);
            fStack_1638 = fStack_15c4 * fStack_1428 + fStack_15c8 * fStack_1438 +
                          fStack_15c0 * fStack_1418 + fStack_15bc * fStack_1408;
            fStack_1634 = fStack_15c4 * fStack_1424 + fStack_15c8 * fStack_1434 +
                          fStack_15c0 * fStack_1414 + fStack_15bc * fStack_1404;
            local_1630 = fStack_15c4 * fStack_1420 + fStack_15c8 * fStack_1430 +
                         fStack_15c0 * fStack_1410 + fStack_15bc * fStack_1400;
            fStack_162c = fStack_15c4 * fStack_141c + fStack_15c8 * fStack_142c +
                          fStack_15c0 * fStack_140c + fStack_15bc * fStack_13fc;
            fStack_1628 = fStack_15b4 * fStack_1428 + fStack_15b8 * fStack_1438 +
                          fStack_15b0 * fStack_1418 + fStack_15ac * fStack_1408;
            fStack_1624 = fStack_15b4 * fStack_1424 + fStack_15b8 * fStack_1434 +
                          fStack_15b0 * fStack_1414 + fStack_15ac * fStack_1404;
            fStack_1620 = fStack_15b4 * fStack_1420 + fStack_15b8 * fStack_1430 +
                          fStack_15b0 * fStack_1410 + fStack_15ac * fStack_1400;
            fStack_161c = fStack_15b4 * fStack_141c + fStack_15b8 * fStack_142c +
                          fStack_15b0 * fStack_140c + fStack_15ac * fStack_13fc;
            fStack_1618 = fStack_15a4 * fStack_1428 + fStack_15a8 * fStack_1438 +
                          fStack_15a0 * fStack_1418 + fStack_159c * fStack_1408;
            fStack_1614 = fStack_15a4 * fStack_1424 + fStack_15a8 * fStack_1434 +
                          fStack_15a0 * fStack_1414 + fStack_159c * fStack_1404;
            fStack_1610 = fStack_15a4 * fStack_1420 + fStack_15a8 * fStack_1430 +
                          fStack_15a0 * fStack_1410 + fStack_159c * fStack_1400;
            fStack_160c = fStack_15a4 * fStack_141c + fStack_15a8 * fStack_142c +
                          fStack_15a0 * fStack_140c + fStack_159c * fStack_13fc;
            fStack_1608 = fStack_1594 * fStack_1428 + fStack_1598 * fStack_1438 +
                          fStack_1590 * fStack_1418 + fStack_158c * fStack_1408;
            fStack_1604 = fStack_1594 * fStack_1424 + fStack_1598 * fStack_1434 +
                          fStack_1590 * fStack_1414 + fStack_158c * fStack_1404;
            fStack_1600 = fStack_1594 * fStack_1420 + fStack_1598 * fStack_1430 +
                          fStack_1590 * fStack_1410 + fStack_158c * fStack_1400;
            fStack_15fc = fStack_1594 * fStack_141c + fStack_1598 * fStack_142c +
                          fStack_1590 * fStack_140c + fStack_158c * fStack_13fc;
            pauVar5 = (undefined1 (*) [16])(piVar2[1] * 0x40 + *(int *)(piVar2[2] + 0x160));
            _auStack_1718 = *pauVar5;
            uStack_1708 = *(undefined4 *)pauVar5[1];
            uStack_1704 = *(undefined4 *)(pauVar5[1] + 4);
            uStack_1700 = *(undefined4 *)(pauVar5[1] + 8);
            uStack_16fc = *(undefined4 *)(pauVar5[1] + 0xc);
            FUN_0068da40(auStack_1718,&fStack_1638);
            if (DAT_0115c1c8 != '\0') {
              fStack_17dc = fStack_17d8 - fStack_16f8;
              fStack_14c4 = fStack_17d4 - fStack_16f8;
              fStack_14c0 = fStack_17d0 - fStack_16f8;
              fStack_14bc = fStack_17cc - fStack_16f8;
              uStack_17e0 = 0;
              uStack_17e4 = 0;
              uStack_17e8 = 0x3f800000;
              uStack_1534 = 0;
              uStack_1530 = 0;
              uStack_1538 = uStack_17e8;
              fStack_152c = fStack_17dc;
              fStack_14c8 = fStack_17dc;
              FUN_0060f4d0(pvVar4,2,&uStack_1538);
              uStack_14a8 = uStack_16e8;
              uStack_14a4 = uStack_16e4;
              uStack_14a0 = uStack_16e0;
              uStack_149c = uStack_16dc;
              uStack_181c = uStack_16e8;
              uStack_1820 = 0;
              uStack_1824 = 0;
              uStack_1828 = 0xbf800000;
              uStack_1484 = 0;
              uStack_1480 = 0;
              uStack_147c = uStack_16e8;
              uStack_1488 = uStack_1828;
              FUN_0060f4d0(pvVar4,3,&uStack_1488);
              fStack_184c = fStack_17d8 - fStack_16f4;
              fStack_1564 = fStack_17d4 - fStack_16f4;
              fStack_1560 = fStack_17d0 - fStack_16f4;
              fStack_155c = fStack_17cc - fStack_16f4;
              fStack_1854 = 1.0;
              uStack_1850 = 0;
              uStack_1858 = 0;
              uStack_1518 = 0;
              uStack_1510 = 0;
              fStack_1568 = fStack_184c;
              fStack_1514 = fStack_1854;
              fStack_150c = fStack_184c;
              FUN_0060f4d0(pvVar4,4,&uStack_1518);
              uStack_1804 = 0xbf800000;
              uStack_1498 = uStack_16e8;
              uStack_1494 = uStack_16e4;
              uStack_1490 = uStack_16e0;
              uStack_148c = uStack_16dc;
              uStack_17fc = uStack_16e4;
              uStack_1800 = 0;
              uStack_1808 = 0;
              uStack_1548 = 0;
              uStack_1540 = 0;
              uStack_153c = uStack_16e4;
              uStack_1544 = uStack_1804;
              FUN_0060f4d0(pvVar4,5,&uStack_1548);
              FUN_0060f510(pvVar4,DAT_0115c1c4 | 2);
            }
            local_13e4[0] = auStack_b68;
            uStack_13dc = 1;
            uStack_13d9 = 1;
            local_13e4[1] = local_13e4[0];
            FUN_0060fe30(this_00,1);
            RenderDevice_SetStencilCompareReferenceMask(this_00,2,iStack_18ac,0x3f);
            RenderDevice_SetStencilWriteMask(this_00,0);
            RenderDevice_SetStencilOpsFromIndices(this_00,0,0,0);
            FUN_0060fda0(this_00,0xf);
            iVar9 = FUN_006fb130((void *)*piVar2,0);
            bVar14 = true;
            if ((iVar9 == 0) || (bVar14 = *(int *)(iVar9 + 0x1d4) != 2, bVar14)) {
              fStack_1874 = 15.0;
            }
            else {
              fStack_1874 = 100.0;
            }
            fStack_1874 = fStack_16a8 + fStack_1874;
            if (bVar14) {
              uStack_18b0 = DAT_0115c1c0;
            }
            else {
              uStack_18b0 = DAT_0115c1bc;
            }
            FUN_006df280(auStack_1298,param_2[2]);
            uStack_17bc = 0x3f800000;
            uStack_17c0 = 0;
            fStack_17c4 = 0.0;
            fStack_17c8 = 0.0;
            fStack_1668 = fStack_1738;
            fStack_1664 = fStack_1734;
            fStack_1660 = fStack_1730;
            uStack_165c = 0;
            fVar16 = fStack_172c * 1.0 + fStack_1734 * 0.0 + fStack_1730 * 0.0 + fStack_1738 * 0.0;
            fStack_14b8 = (float)piVar2[4];
            iStack_14b4 = piVar2[5];
            iStack_14b0 = piVar2[6];
            iStack_14ac = piVar2[7];
            fStack_14f8 = (0.0 - fVar16 * fStack_1788 * fStack_1738) + fStack_1688;
            fStack_14f4 = (0.0 - fVar16 * fStack_1784 * fStack_1734) + fStack_1684;
            fStack_14f0 = (0.0 - fVar16 * fStack_1780 * fStack_1730) + fStack_1680;
            fStack_14ec = (1.0 - fVar16 * fStack_177c * 0.0) + fStack_167c;
            fStack_16f8 = 0.0;
            fStack_16f4 = 0.0;
            uStack_16f0 = 0;
            fStack_1528 = fStack_1088;
            uStack_1524 = uStack_1084;
            uStack_1520 = uStack_1080;
            uStack_151c = uStack_107c;
            uStack_16ec = uStack_17bc;
            FUN_00961e90(auStack_1298,&fStack_14f8,&fStack_1528,&fStack_14b8);
            FUN_00535ac0(auStack_1298,fStack_1874);
            fVar15 = Camera_GetZoomDistance((int)auStack_1298);
            local_1880 = (undefined4 *)(float)fVar15;
            fStack_1478 = fStack_1774 * fStack_11d8 + fStack_1778 * fStack_11e8 +
                          fStack_1770 * fStack_11c8 + fStack_176c * fStack_11b8;
            fStack_1474 = fStack_1774 * fStack_11d4 + fStack_1778 * fStack_11e4 +
                          fStack_1770 * fStack_11c4 + fStack_176c * fStack_11b4;
            fStack_1470 = fStack_1774 * fStack_11d0 + fStack_1778 * fStack_11e0 +
                          fStack_1770 * fStack_11c0 + fStack_176c * fStack_11b0;
            fStack_146c = fStack_1774 * fStack_11cc + fStack_1778 * fStack_11dc +
                          fStack_1770 * fStack_11bc + fStack_176c * fStack_11ac;
            fStack_1468 = fStack_1764 * fStack_11d8 + fStack_1768 * fStack_11e8 +
                          fStack_1760 * fStack_11c8 + fStack_175c * fStack_11b8;
            fStack_1464 = fStack_1764 * fStack_11d4 + fStack_1768 * fStack_11e4 +
                          fStack_1760 * fStack_11c4 + fStack_175c * fStack_11b4;
            fStack_1460 = fStack_1764 * fStack_11d0 + fStack_1768 * fStack_11e0 +
                          fStack_1760 * fStack_11c0 + fStack_175c * fStack_11b0;
            fStack_145c = fStack_1764 * fStack_11cc + fStack_1768 * fStack_11dc +
                          fStack_1760 * fStack_11bc + fStack_175c * fStack_11ac;
            fStack_1458 = fStack_1754 * fStack_11d8 + fStack_1758 * fStack_11e8 +
                          fStack_1750 * fStack_11c8 + fStack_174c * fStack_11b8;
            fStack_1454 = fStack_1754 * fStack_11d4 + fStack_1758 * fStack_11e4 +
                          fStack_1750 * fStack_11c4 + fStack_174c * fStack_11b4;
            fStack_1450 = fStack_1754 * fStack_11d0 + fStack_1758 * fStack_11e0 +
                          fStack_1750 * fStack_11c0 + fStack_174c * fStack_11b0;
            fStack_144c = fStack_1754 * fStack_11cc + fStack_1758 * fStack_11dc +
                          fStack_1750 * fStack_11bc + fStack_174c * fStack_11ac;
            fStack_1448 = fStack_1744 * fStack_11d8 + fStack_1748 * fStack_11e8 +
                          fStack_1740 * fStack_11c8 + fStack_173c * fStack_11b8;
            fStack_1444 = fStack_1744 * fStack_11d4 + fStack_1748 * fStack_11e4 +
                          fStack_1740 * fStack_11c4 + fStack_173c * fStack_11b4;
            fStack_1440 = fStack_1744 * fStack_11d0 + fStack_1748 * fStack_11e0 +
                          fStack_1740 * fStack_11c0 + fStack_173c * fStack_11b0;
            fStack_143c = fStack_1744 * fStack_11cc + fStack_1748 * fStack_11dc +
                          fStack_1740 * fStack_11bc + fStack_173c * fStack_11ac;
            Bounds_WriteEightComponentCorners
                      ((void *)(piVar2[1] * 0x40 + *(int *)(piVar2[2] + 0x160)),afStack_1318);
            uStack_17a8 = 0x3c23d70a;
            auStack_1588._8_4_ = 0x3c23d70a;
            auStack_1588._0_8_ = 0x3c23d70a3c23d70a;
            auStack_1588._12_4_ = 0x3c23d70a;
            iVar9 = 0;
            pfVar3 = afStack_1318;
            do {
              fVar16 = *pfVar3;
              fVar25 = pfVar3[1];
              fVar26 = pfVar3[2];
              fStack_1678 = fVar26 * fStack_1458 + fVar25 * fStack_1468 + fVar16 * fStack_1478 +
                            fStack_1448;
              fStack_1674 = fVar26 * fStack_1454 + fVar25 * fStack_1464 + fVar16 * fStack_1474 +
                            fStack_1444;
              fStack_1670 = fVar26 * fStack_1450 + fVar25 * fStack_1460 + fVar16 * fStack_1470 +
                            fStack_1440;
              fStack_166c = fVar26 * fStack_144c + fVar25 * fStack_145c + fVar16 * fStack_146c +
                            fStack_143c;
              auVar19._0_4_ = fStack_17d8 - fStack_1670;
              auVar19._4_4_ = fStack_17d4 - fStack_1670;
              auVar19._8_4_ = fStack_17d0 - fStack_1670;
              auVar19._12_4_ = fStack_17cc - fStack_1670;
              uStack_1508 = 0x3f866666;
              auStack_1718._0_4_ = auVar19._0_4_;
              uStack_17a4 = uStack_17a8;
              uStack_17a0 = uStack_17a8;
              uStack_179c = uStack_17a8;
              if (auVar19._0_4_ < 1.05) {
                FUN_00960ef0(auStack_1298,1.0);
                fVar25 = (float)piVar2[7];
                fStack_14cc = 1.0 / (float)local_1880;
                fVar16 = fVar25 * DAT_0115c1b8 * fStack_14cc;
                fStack_14d4 = fVar25 * DAT_0115c1b8 * fStack_14cc;
                fStack_14d0 = fVar25 * DAT_0115c1b8 * fStack_14cc;
                fStack_14cc = fVar25 * DAT_0115c1b8 * fStack_14cc;
                fStack_14d8 = fVar16;
                goto LAB_006f359b;
              }
              auVar23 = rcpps(ZEXT416(0x3f866666),auVar19);
              auVar20._0_4_ =
                   (fStack_1788 - auVar23._0_4_ * auVar19._0_4_) * auVar23._0_4_ * fStack_1678;
              auVar20._4_4_ =
                   (fStack_1784 - auVar23._4_4_ * auVar19._4_4_) * auVar23._4_4_ * fStack_1674;
              auVar20._8_4_ =
                   (fStack_1780 - auVar23._8_4_ * auVar19._8_4_) * auVar23._8_4_ * fStack_1670;
              auVar20._12_4_ =
                   (fStack_177c - auVar23._12_4_ * auVar19._12_4_) * auVar23._12_4_ * fStack_166c;
              auVar17._0_4_ = fStack_17d8 - auVar20._0_4_;
              auVar17._4_4_ = fStack_17d4 - auVar20._4_4_;
              auVar17._8_4_ = fStack_17d0 - auVar20._8_4_;
              auVar17._12_4_ = fStack_17cc - auVar20._12_4_;
              iVar9 = iVar9 + 1;
              auVar23 = maxps(auVar20,auVar17);
              pfVar3 = pfVar3 + 4;
              auStack_1588 = maxps(auStack_1588,auVar23);
            } while (iVar9 < 8);
            uVar21 = auStack_1588._0_4_;
            auVar24._4_4_ = auStack_1588._4_4_;
            auStack_1718._4_4_ = uVar21;
            auStack_1718._0_4_ = uVar21;
            fStack_1710 = (float)uVar21;
            fStack_170c = (float)uVar21;
            auVar24._0_4_ = auVar24._4_4_;
            auVar24._8_4_ = auVar24._4_4_;
            auVar24._12_4_ = auVar24._4_4_;
            auStack_1578 = divps(_auStack_1718,auVar24);
            FUN_00960ef0(auStack_1298,(float)auStack_1578._0_4_);
            fVar16 = (float)auStack_1718._0_4_ * fStack_1788;
            fStack_1554 = (float)auStack_1718._4_4_ * fStack_1784;
            fStack_1550 = fStack_1710 * fStack_1780;
            fStack_154c = fStack_170c * fStack_177c;
            fStack_1558 = fVar16;
LAB_006f359b:
            Camera_SetOrthographicWidth(auStack_1298,fVar16);
            FUN_009612e0(auStack_1298,'\0');
            pvVar4 = DAT_011d2c44;
            if (DAT_011d2c44 < DAT_011d2c48) {
              pvVar6 = (void *)((int)DAT_011d2c44 + 0x730);
              bVar14 = DAT_011d2c44 != (void *)0x0;
              DAT_011d2c44 = pvVar6;
              if (bVar14) {
                FUN_006df280(pvVar4,(int)auStack_1298);
              }
            }
            else {
              FUN_006ef4c0(&DAT_011d2c40,DAT_011d2c44,auStack_1298);
            }
            FUN_0068ddd0(auStack_438,auStack_1298);
            FUN_0068e340(&fStack_1638);
            FUN_0068e2d0(&fStack_1638,
                         -(uint)(*(char *)((int)pvVar8 + 0x262) != '\0') & (uint)auStack_438,
                         *(undefined4 *)((int)pvVar8 + 0x2c0),
                         *(uint *)((int)pvVar8 + 0x2c4) & uStack_18b0,3,0);
            fStack_162c = (float)((uint)fStack_162c & 0xfffeffff);
            FUN_006e6370(*(void **)((int)pvVar8 + 8),*(undefined4 **)((int)pvVar8 + 0x18),
                         (int *)&fStack_1638,0);
            puVar10 = *(uint **)(*(int *)((int)pvVar8 + 0x18) + 0x200);
            puVar1 = *(uint **)(*(int *)((int)pvVar8 + 0x18) + 0x204);
            if ((puVar10 != puVar1) &&
               (puVar11 = *(uint **)(param_3 + 0x200), puVar11 != *(uint **)(param_3 + 0x204))) {
              for (; puVar10 != puVar1; puVar10 = puVar10 + 1) {
                *puVar11 = *puVar11 | *puVar10;
                puVar11 = puVar11 + 1;
              }
            }
            FUN_006f1540(pvVar8,(undefined4 *)(*(int *)((int)pvVar8 + 0x18) + 0x110),'\x01');
            FUN_006f1540(pvVar8,(undefined4 *)(*(int *)((int)pvVar8 + 0x18) + 0x140),'\0');
            FUN_006c8a40((void *)((int)pvVar8 + 0x344),(undefined4 *)((int)pvVar8 + 0x328));
            SceneRenderer_DrawOrderedSceneBuckets
                      (pvVar8,auStack_13ec,*(int *)((int)pvVar8 + 0x18),'\0');
            RenderDevice_SetDepthCompareIndex(this_00,1);
            RenderDevice_SetDepthEnabled(this_00,'\x01');
            RenderDevice_SetDepthWriteByte(this_00,0);
            fStack_1844 = 1.0;
            uStack_17ec = 0;
            uStack_17f0 = 0;
            uStack_17f4 = 0;
            uStack_183c = 0;
            uStack_1840 = 0;
            uStack_1848 = 0;
            uStack_182c = 0;
            uStack_1834 = 0;
            uStack_1838 = 0;
            fStack_1634 = 0.0;
            local_1630 = 0.0;
            fStack_162c = 0.0;
            fStack_1618 = 0.0;
            fStack_1614 = 0.0;
            fStack_160c = 0.0;
            fStack_1628 = 0.0;
            fStack_1620 = 0.0;
            fStack_161c = 0.0;
            fStack_1608 = fStack_16f8;
            fStack_1604 = fStack_16f4;
            fStack_1600 = (float)uStack_16f0;
            fStack_15fc = (float)uStack_16ec;
            fStack_1830 = fStack_1844;
            fStack_17f8 = fStack_1844;
            fStack_1638 = fStack_1844;
            fStack_1624 = fStack_1844;
            fStack_1610 = fStack_1844;
            FUN_006ea320(pvVar8,&fStack_1638);
            local_1880 = DAT_011d8530;
            FUN_0079a040(DAT_011d8530,*(uint *)((int)pvVar8 + 0x1dc),0);
            FUN_0079a040(local_1880,*(uint *)((int)pvVar8 + 0x1e0),0);
            FUN_006c8500((int *)((int)pvVar8 + 0x328));
            FUN_006c8520((undefined4 *)((int)pvVar8 + 0x328));
            FUN_006c8a40((void *)((int)pvVar8 + 0x344),(undefined4 *)((int)pvVar8 + 0x328));
            FUN_006e14e0(DAT_011d2530,param_2[3]);
            uStack_180c = 0;
            fStack_1810 = 1.0 - uStack_18a0;
            fStack_1814 = 1.0 - (float)auStack_16a0._8_4_;
            fStack_1818 = (float)auStack_16a0._8_4_;
            _DAT_011d2c30 = (float)auStack_16a0._8_4_;
            uRam011d2c3c = 0;
            fRam011d2c34 = fStack_1814;
            fRam011d2c38 = fStack_1810;
            if (*(uint *)((int)pvVar8 + 0x1e4) < (uint)local_189c[2]) {
              piVar7 = (int *)(*(uint *)((int)pvVar8 + 0x1e4) * 0x10 + local_189c[1]);
              *piVar7 = *piVar7 + 1;
              piVar7[2] = 1;
              *(undefined2 *)((int)piVar7 + 6) = 2;
              *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)local_189c + 0x12);
              piVar7[3] = (int)&DAT_011d2c30;
            }
            FUN_0060f510(this_00,0);
            FUN_006ea320(pvVar8,&fStack_1778);
            SceneShadow_UpdateItemMatrixPayloads(pvVar8,(int *)*piVar2);
            FUN_0060fda0(this_00,7);
            RenderDevice_SetAlphaBlendByte(this_00,1);
            RenderDevice_SetBlendFactorTableEntries(this_00,4,5);
            RenderDevice_SetAlphaTestByte(this_00,0);
            RenderDevice_SetDepthWriteByte(this_00,1);
            RenderDevice_SetCullModeFromIndex(this_00,1);
            RenderDevice_SetDepthCompareIndex(this_00,7);
            (**(code **)(*(int *)*piVar2 + 0x18))(piVar2[1],param_2);
            RenderDevice_SetDepthCompareIndex(this_00,1);
            if (*(char *)((int)pvVar8 + 0x25d) != '\0') {
              FUN_007cf6f0((float *)(piVar2[1] * 0x40 + *(int *)(piVar2[2] + 0x160)),&fStack_1770,
                           0xff00ff00,'\0');
            }
            if (*(char *)((int)pvVar8 + 0x25e) != '\0') {
              FUN_006eaed0(piVar2);
            }
          }
        }
        local_189c = local_189c + 2;
        local_18a4 = (undefined4 *)((int)local_18a4 + 1);
        local_1880 = (undefined4 *)((int)local_1880 + -1);
      } while (local_1880 != (undefined4 *)0x0);
    }
    puVar12 = local_1894;
    FUN_0079a040(local_1894,*(uint *)((int)pvVar8 + 0x1d4),0);
    FUN_0079a040(puVar12,*(uint *)((int)pvVar8 + 0x1d8),0);
    puVar12 = DAT_011d8530;
    FUN_0079a040(DAT_011d8530,*(uint *)((int)pvVar8 + 0x1dc),0);
    FUN_0079a040(puVar12,*(uint *)((int)pvVar8 + 0x1e0),0);
    FUN_00610330((int)this_00);
    iVar9 = FUN_00969bd0();
    pvVar8 = (void *)FUN_00f21ff0(iVar9);
    if (pvVar8 != (void *)0x0) {
      FUN_0096d0f0(pvVar8,&DAT_011d2c40);
    }
    puVar12 = local_1894;
    this = local_187c;
  }
  if (*(uint *)((int)this + 0x1e4) < (uint)puVar12[2]) {
    piVar2 = (int *)(*(uint *)((int)this + 0x1e4) * 0x10 + puVar12[1]);
    *piVar2 = *piVar2 + 1;
    piVar2[2] = 1;
    *(undefined2 *)((int)piVar2 + 6) = 2;
    *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)puVar12 + 0x12);
    piVar2[3] = 0;
  }
  iVar9 = ReadDwordOffset18_531F70((int)this_00);
  *(int *)((int)this + 0x364) = iVar9 - local_185c;
  return;
}

