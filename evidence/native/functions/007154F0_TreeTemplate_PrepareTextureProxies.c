/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 tree texture instruction contract. Analyst names, not recovered symbols. ECX
   template, no stack args, AL Boolean. Reads user data from owned SPT+34 and calls714C20; full SSE
   override prelude preserves original four-lane epsilon test. 7B9BE0 exports temporary map string
   views. Four unconditional base key/submit calls in order bank+90/ch0->proxy+68,
   bank+100/ch0->+80, bank+170 scalar->+B0, bank+0/ch0->+38. All proxy submit calls pass key,0,0,0
   and ignore AL. Seasonal feature bytes at115C488+1D8/+1D9 gate winter/winter_threshold requests,
   mask+128 bits1/2/8/4 and proxies+C8/+E0/+110/+F8 on nonempty four-word keys. Bank0/ch1 requires
   nonempty C string and manager+44 nonzero before proxy+50. Bank100/ch2 requests proxy+98 under
   same gates; if722EA0 false, bank90/ch2 can request SAME proxy+98. Flag+172 records candidate
   dispatch, not successful residency. Final local false if variant pointer+180 remains null
   after330hex allocation/716E70/ref assignment; otherwise718260 preparation and temporary view
   destruction. No six-flat-role original enum, GPU sampler meaning or all-textures-ready
   certificate inferred. */

bool __thiscall TreeTemplate_PrepareTextureProxies(void *this)

{
  char *pcVar1;
  char cVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  bool bVar7;
  byte *pbVar8;
  int iVar9;
  int *piVar10;
  uint *puVar11;
  char *pcVar12;
  int iVar13;
  void *this_00;
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined8 uVar17;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint local_40 [4];
  undefined4 *local_30 [5];
  undefined4 *local_1c;
  undefined4 *local_18;
  byte *local_14;
  
  pbVar8 = (byte *)FUN_005c7300(*(int *)((int)this + 0x34));
  if (pbVar8 != (byte *)0x0) {
    Seasons_ApplyTreeUserData(this,pbVar8);
  }
  iVar13 = DAT_011edbc4;
  if (DAT_011edbc4 != 0) {
    iVar9 = FUN_00c5f930(DAT_011edbc4);
    if (iVar9 - 1U < 2) {
      auVar15 = *(undefined1 (*) [16])(iVar13 + 0x10);
      auVar14._0_4_ = auVar15._0_4_ * -1.0;
      auVar14._4_4_ = auVar15._4_4_ * -1.0;
      auVar14._8_4_ = auVar15._8_4_ * -1.0;
      auVar14._12_4_ = auVar15._12_4_ * -1.0;
      auVar15 = maxps(auVar14,auVar15);
      auVar16._4_4_ = -(uint)(auVar15._4_4_ <= 1.1920929e-07);
      auVar16._0_4_ = -(uint)(auVar15._0_4_ <= 1.1920929e-07);
      auVar16._8_4_ = -(uint)(auVar15._8_4_ <= 1.1920929e-07);
      auVar16._12_4_ = -(uint)(auVar15._12_4_ <= 1.1920929e-07);
      iVar9 = movmskps(iVar9 - 1U,auVar16);
      *(bool *)((int)this + 0x170) = iVar9 != 0xf;
      if (iVar9 != 0xf) {
        uVar4 = *(undefined4 *)(iVar13 + 0x14);
        uVar5 = *(undefined4 *)(iVar13 + 0x18);
        uVar6 = *(undefined4 *)(iVar13 + 0x1c);
        *(undefined4 *)((int)this + 0x130) = *(undefined4 *)(iVar13 + 0x10);
        *(undefined4 *)((int)this + 0x134) = uVar4;
        *(undefined4 *)((int)this + 0x138) = uVar5;
        *(undefined4 *)((int)this + 0x13c) = uVar6;
        uVar4 = *(undefined4 *)(iVar13 + 0x24);
        uVar5 = *(undefined4 *)(iVar13 + 0x28);
        uVar6 = *(undefined4 *)(iVar13 + 0x2c);
        *(undefined4 *)((int)this + 0x140) = *(undefined4 *)(iVar13 + 0x20);
        *(undefined4 *)((int)this + 0x144) = uVar4;
        *(undefined4 *)((int)this + 0x148) = uVar5;
        *(undefined4 *)((int)this + 0x14c) = uVar6;
        uVar4 = *(undefined4 *)(iVar13 + 0x34);
        uVar5 = *(undefined4 *)(iVar13 + 0x38);
        uVar6 = *(undefined4 *)(iVar13 + 0x3c);
        *(undefined4 *)((int)this + 0x150) = *(undefined4 *)(iVar13 + 0x30);
        *(undefined4 *)((int)this + 0x154) = uVar4;
        *(undefined4 *)((int)this + 0x158) = uVar5;
        *(undefined4 *)((int)this + 0x15c) = uVar6;
      }
    }
  }
  FUN_007b84b0(local_30);
  SptMaps_ExportBorrowedStringViews(*(void **)((int)this + 0x34),(uint *)local_30);
  piVar10 = (int *)FUN_004afe80();
  local_50 = 0;
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)*local_1c,(byte *)0x0,0);
  local_50 = *puVar11;
  local_4c = puVar11[1];
  local_48 = puVar11[2];
  local_44 = puVar11[3];
                    /* Tree texture review: First base request: bank90/channel0 -> proxy68. Three
                       zero words follow key; submit AL is ignored. */
  TextureProxy_SubmitKey((void *)((int)this + 0x68),&local_50,0,0,0);
  puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)*local_18,(byte *)0x0,0);
  local_50 = *puVar11;
  local_4c = puVar11[1];
  local_48 = puVar11[2];
  local_44 = puVar11[3];
  TextureProxy_SubmitKey((void *)((int)this + 0x80),&local_50,0,0,0);
  puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,local_14,(byte *)0x0,0);
  local_50 = *puVar11;
  local_4c = puVar11[1];
  local_48 = puVar11[2];
  local_44 = puVar11[3];
  TextureProxy_SubmitKey((void *)((int)this + 0xb0),&local_50,0,0,0);
  puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)*local_30[0],(byte *)0x0,0);
  local_50 = *puVar11;
  local_4c = puVar11[1];
  local_48 = puVar11[2];
  local_44 = puVar11[3];
  TextureProxy_SubmitKey((void *)((int)this + 0x38),&local_50,0,0,0);
  *(undefined4 *)((int)this + 0x128) = 0;
  if ((PTR_DAT_0115c488 != (undefined *)0x0) &&
     ((PTR_DAT_0115c488[0x1d8] != '\0' || (PTR_DAT_0115c488[0x1d9] != '\0')))) {
    puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)*local_1c,(byte *)"winter",1);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    if ((local_50 != DAT_011d3ad0) ||
       (((local_48 != DAT_011d3ad8 || (local_44 != DAT_011d3adc)) || (local_4c != DAT_011d3ad4)))) {
      *(uint *)((int)this + 0x128) = *(uint *)((int)this + 0x128) | 1;
      TextureProxy_SubmitKey((void *)((int)this + 200),&local_50,0,0,0);
    }
    puVar11 = Seasons_ResolveTreeTextureVariant
                        (this,local_40,(byte *)*local_1c,(byte *)"winter_threshold",1);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    if (((local_50 != DAT_011d3ad0) || (local_48 != DAT_011d3ad8)) ||
       ((local_44 != DAT_011d3adc || (local_4c != DAT_011d3ad4)))) {
      *(uint *)((int)this + 0x128) = *(uint *)((int)this + 0x128) | 2;
      TextureProxy_SubmitKey((void *)((int)this + 0xe0),&local_50,0,0,0);
    }
    puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)*local_18,(byte *)"winter",1);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    if (((local_50 != DAT_011d3ad0) || (local_48 != DAT_011d3ad8)) ||
       ((local_44 != DAT_011d3adc || (local_4c != DAT_011d3ad4)))) {
      *(uint *)((int)this + 0x128) = *(uint *)((int)this + 0x128) | 8;
      TextureProxy_SubmitKey((void *)((int)this + 0x110),&local_50,0,0,0);
    }
    puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,local_14,(byte *)"winter",1);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    if ((((local_50 != DAT_011d3ad0) || (local_48 != DAT_011d3ad8)) || (local_44 != DAT_011d3adc))
       || (local_4c != DAT_011d3ad4)) {
      *(uint *)((int)this + 0x128) = *(uint *)((int)this + 0x128) | 4;
      TextureProxy_SubmitKey((void *)((int)this + 0xf8),&local_50,0,0,0);
    }
  }
  pcVar12 = (char *)local_30[0][1];
  pcVar1 = pcVar12 + 1;
  do {
    cVar2 = *pcVar12;
    pcVar12 = pcVar12 + 1;
  } while (cVar2 != '\0');
  if (pcVar12 != pcVar1) {
    puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)local_30[0][1],(byte *)0x0,0);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    iVar13 = (**(code **)(*piVar10 + 0x44))(&local_50);
    if (iVar13 != 0) {
                    /* Tree texture review: Bank0/channel1 request occurs only after nonempty
                       C-string and manager virtual44 nonzero gates. */
      TextureProxy_SubmitKey((void *)((int)this + 0x50),&local_50,0,0,0);
    }
  }
  *(undefined1 *)((int)this + 0x172) = 0;
  pcVar12 = (char *)local_18[2];
  pcVar1 = pcVar12 + 1;
  do {
    cVar2 = *pcVar12;
    pcVar12 = pcVar12 + 1;
  } while (cVar2 != '\0');
  if (pcVar12 != pcVar1) {
    puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)local_18[2],(byte *)0x0,0);
    local_50 = *puVar11;
    local_4c = puVar11[1];
    local_48 = puVar11[2];
    local_44 = puVar11[3];
    iVar13 = (**(code **)(*piVar10 + 0x44))(&local_50);
    if (iVar13 != 0) {
      TextureProxy_SubmitKey((void *)((int)this + 0x98),&local_50,0,0,0);
      *(undefined1 *)((int)this + 0x172) = 1;
    }
  }
                    /* Tree texture review: Predicate is nonzero slot and low2bits0. False also
                       covers pending tagged requests, not only resource absence. Fallback
                       bank90/channel2 targets the SAME proxy98. */
  bVar7 = TextureProxy_HasUntaggedResource((void *)((int)this + 0x98));
  if (!bVar7) {
    pcVar12 = (char *)local_1c[2];
    pcVar1 = pcVar12 + 1;
    do {
      cVar2 = *pcVar12;
      pcVar12 = pcVar12 + 1;
    } while (cVar2 != '\0');
    if (pcVar12 != pcVar1) {
      puVar11 = Seasons_ResolveTreeTextureVariant(this,local_40,(byte *)local_1c[2],(byte *)0x0,0);
      local_50 = *puVar11;
      local_4c = puVar11[1];
      local_48 = puVar11[2];
      local_44 = puVar11[3];
      iVar13 = (**(code **)(*piVar10 + 0x44))(&local_50);
      if (iVar13 != 0) {
                    /* Tree texture review: Second channel2 candidate replaces/clears the same
                       proxy98 through the request service; no separate CompositeNormal slot is
                       created. */
        TextureProxy_SubmitKey((void *)((int)this + 0x98),&local_50,0,0,0);
        *(undefined1 *)((int)this + 0x172) = 1;
      }
    }
  }
  if (*(int *)((int)this + 0x180) == 0) {
    this_00 = (void *)FUN_004e4520(0x330,0x10,0,"SpeedTree/SpeedTreeVariant",0);
    if (this_00 == (void *)0x0) {
      piVar10 = (int *)0x0;
    }
    else {
      uVar17 = FUN_00716e70(this_00,this,0);
      piVar10 = (int *)uVar17;
    }
    piVar3 = *(int **)((int)this + 0x180);
    if (piVar10 != piVar3) {
      if (piVar10 != (int *)0x0) {
        FUN_00715d30((int)piVar10);
      }
      *(int **)((int)this + 0x180) = piVar10;
      if (piVar3 != (int *)0x0) {
        FUN_00717040(piVar3);
      }
    }
    if (*(int **)((int)this + 0x180) == (int *)0x0) {
      SptMaps_DestroyStringViews(local_30);
      return false;
    }
    Flora_InitializeSpeciesGeometry(*(int **)((int)this + 0x180));
  }
  SptMaps_DestroyStringViews(local_30);
  return true;
}

