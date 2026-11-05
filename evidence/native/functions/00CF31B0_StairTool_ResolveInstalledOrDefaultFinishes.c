/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 177; earlier snapshot context. */
/* Combined authored+kind5 count gates default/related finish setup. */

/* Retained historical annotation 2, previous C line 184; earlier snapshot context. */
/* No installed finish and requestedID0: retain exact first-authored-ID default,
                       no later-row search. */



/* Original PC1.67 existing1304-owned-byte/350instruction body, ranges CF31B0..CF3379
   andCF3380..CF36CD,6-byte existingalignment atCF337A outsidebody; no range/Listing recovery.
   PhysicalECX tool receiver, sourceDescriptor pointer/fullUInt32requestedPresetID, finalRET8void;
   finalEAX is not a definedstatus. Source descriptor firsttwoDWORDs are lotGUIDlow/high andthird
   identifies installed stair; initial lot lookup/lot+2B4 manager branch copies
   installed12DWORDfinish and height/railing state whenfound, then may select end-specific railing
   finishes. Product attool+58 resolved through catalog with literalallowDefault1. IfC96FA0
   combinedcount>0, C96A80 firstauthoredID thenC96CC0 initializes ordinal usedby relatedfinish
   selection. Ifno installedfinish was recovered, suppliedrequestedID0 is replaced by C96A80 FIRSTID
   (FFFFFFFFwhenauthoredempty), resolvedfullID viaC96CC0 and passed toA63B40
   withlot/tool+0C,productkey,outtool+2D8. No search for later usable authoreddefault. Remainingbody
   resolves optionalrailing, fence/halfwall andwallpattern finish/default services and copies
   independentfullkeytriples. Those virtualbroker/compiler/ring/fulltool ownership paths remain
   separate, not inferred from decompiler locals or source cache. ActualC preserves indirect call
   artifacts; bounded first-ID/count/resolution order comes from original instructions. Analyst role
   names, not originalclass symbols. */

void __thiscall
StairTool_ResolveInstalledOrDefaultFinishes
          (void *this,undefined *sourceDescriptor,uint requestedPresetId)

{
  bool bVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  void *pvVar5;
  void *this_00;
  uint uVar6;
  void *pvVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  float fVar11;
  undefined4 *puVar12;
  float10 fVar13;
  float local_c8;
  int local_c4;
  float local_c0;
  float local_bc;
  undefined4 local_b8;
  float local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  void *local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  float local_90;
  float local_8c;
  undefined4 local_88;
  undefined4 local_80 [12];
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_30 [12];
  
  bVar1 = true;
  if ((*(int *)(sourceDescriptor + 8) != 0) &&
     (piVar2 = WorldObjects_FindLotByGuid
                         (DAT_011edbc4,*(uint *)sourceDescriptor,*(uint *)(sourceDescriptor + 4),
                          (uint *)0x0), piVar2 != (int *)0x0)) {
    pvVar7 = (void *)piVar2[0xad];
    local_c4 = 0;
    local_a4 = pvVar7;
    uVar3 = FUN_00b18020(pvVar7,*(undefined4 *)(sourceDescriptor + 8),&local_c4);
    if ((char)uVar3 != '\0') {
      fVar13 = FUN_00b14db0(local_c4);
      local_c0 = (float)fVar13;
      *(int *)((int)this + 0x1d0) = (int)ROUND(local_c0);
      *(bool *)((int)this + 0x1e0) = *(int *)(local_c4 + 0x5c) != *(int *)(local_c4 + 0x60);
      puVar10 = (undefined4 *)(local_c4 + 0x10);
      puVar12 = (undefined4 *)((int)this + 0x68);
      for (iVar8 = 0xc; iVar8 != 0; iVar8 = iVar8 + -1) {
        *puVar12 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar12 = puVar12 + 1;
      }
      bVar1 = false;
      if (*(undefined4 **)(local_c4 + 0x5c) != *(undefined4 **)(local_c4 + 0x60)) {
        uVar4 = **(undefined4 **)(local_c4 + 0x5c);
        FUN_00b15340(&local_50);
        uVar4 = FUN_00b184e0(pvVar7,uVar4,&local_50);
        if ((char)uVar4 != '\0') {
          puVar10 = local_30;
          puVar12 = (undefined4 *)((int)this + 200);
          for (iVar8 = 0xc; iVar8 != 0; iVar8 = iVar8 + -1) {
            *puVar12 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar12 = puVar12 + 1;
          }
          puVar10 = local_30;
          puVar12 = (undefined4 *)((int)this + 0x98);
          for (iVar8 = 0xc; iVar8 != 0; iVar8 = iVar8 + -1) {
            *puVar12 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar12 = puVar12 + 1;
          }
          *(undefined4 *)((int)this + 0x298) = local_50;
          *(undefined4 *)((int)this + 0x288) = local_50;
          *(undefined4 *)((int)this + 0x29c) = local_4c;
          *(undefined4 *)((int)this + 0x28c) = local_4c;
          *(undefined4 *)((int)this + 0x2a0) = local_48;
          *(undefined4 *)((int)this + 0x290) = local_48;
          *(undefined4 *)((int)this + 0x2a4) = local_44;
          *(undefined4 *)((int)this + 0x294) = local_44;
        }
        fVar11 = (float)(*(int *)(local_c4 + 0x60) - *(int *)(local_c4 + 0x5c) >> 2);
        local_c0 = fVar11;
        if (1 < (uint)fVar11) {
          if ((*(int *)(local_c4 + 0x40) == 0) || (*(int *)(local_c4 + 0x40) == 4)) {
            local_bc = *(float *)(local_c4 + 0x44);
            local_b8 = *(undefined4 *)(local_c4 + 0x54);
          }
          else {
            local_bc = *(float *)(local_c4 + 0x50);
            local_b8 = *(undefined4 *)(local_c4 + 0x48);
          }
          local_a8 = *(undefined4 *)(local_c4 + 0x4c);
          local_b0 = local_bc;
          local_c8 = 1.4013e-45;
          iVar8 = local_c4;
          local_ac = local_b8;
          if (1 < (uint)fVar11) {
            do {
              uVar4 = *(undefined4 *)(*(int *)(iVar8 + 0x5c) + (int)local_c8 * 4);
              local_a0 = 0;
              local_9c = 0;
              local_98 = 0;
              local_94 = 0;
              local_90 = -1.0;
              local_8c = -1.0;
              local_88 = 0;
              FUN_00afbba0(local_80);
              uVar4 = FUN_00b184e0(local_a4,uVar4,&local_a0);
              iVar8 = local_c4;
              if ((char)uVar4 != '\0') {
                uVar4 = FUN_00a49b60(&local_90,&local_b0);
                if (((char)uVar4 != '\0') ||
                   (uVar4 = FUN_00a49b60(&local_90,(float *)(iVar8 + 0x44)), (char)uVar4 != '\0')) {
                  puVar10 = local_80;
                  puVar12 = (undefined4 *)((int)this + 200);
                  for (iVar9 = 0xc; iVar9 != 0; iVar9 = iVar9 + -1) {
                    *puVar12 = *puVar10;
                    puVar10 = puVar10 + 1;
                    puVar12 = puVar12 + 1;
                  }
                  *(undefined4 *)((int)this + 0x298) = local_a0;
                  *(undefined4 *)((int)this + 0x29c) = local_9c;
                  *(undefined4 *)((int)this + 0x2a0) = local_98;
                  *(undefined4 *)((int)this + 0x2a4) = local_94;
                  fVar11 = local_c0;
                }
                uVar4 = FUN_00a49b60(&local_90,(float *)(iVar8 + 0x44));
                if ((char)uVar4 != '\0') {
                  FUN_00cf2b20((undefined4 *)((int)this + 0x98),(undefined4 *)((int)this + 200));
                  FUN_004af290((undefined4 *)((int)this + 0x288),(undefined4 *)((int)this + 0x298));
                }
              }
              local_c8 = (float)((int)local_c8 + 1);
            } while ((uint)local_c8 < (uint)fVar11);
          }
        }
        *(undefined1 *)((int)this + 0x246) = 0;
      }
    }
  }
  pvVar7 = DAT_011ee034;
  pvVar5 = (void *)FUN_00c8e7d0(DAT_011ee034,(uint *)((int)this + 0x58),'\x01');
  uVar3 = StairProduct_CountAuthoredAndInstalledPresets(pvVar5);
  if (uVar3 != 0) {
    uVar3 = StairProduct_FirstAuthoredPresetId(pvVar5);
    uVar3 = StairProduct_ResolveFullPresetIdToOrdinal(pvVar5,uVar3);
    if (bVar1) {
      if (requestedPresetId == 0) {
        requestedPresetId = StairProduct_FirstAuthoredPresetId(pvVar5);
      }
      uVar3 = StairProduct_ResolveFullPresetIdToOrdinal(pvVar5,requestedPresetId);
      StairCatalogPreset_CompileFromProductKey
                (*(int *)((int)this + 0xc),(uint *)((int)this + 0x58),requestedPresetId,
                 (void *)((int)this + 0x2d8));
      FUN_00b46d10((void *)((int)this + 0x68),(undefined4 *)((int)this + 0x300),
                   (undefined4 *)((int)this + 0x310),(undefined4 *)((int)this + 0x2f0));
    }
    if (*(char *)((int)this + 0x246) != '\0') {
      this_00 = (void *)FUN_00c8e830(pvVar7,(uint *)((int)pvVar5 + 0xb8),'\x01');
      bVar1 = FUN_00c95f10(this_00,uVar3);
      if (bVar1) {
        uVar6 = FUN_00c95f30((int)this_00);
      }
      else {
        uVar6 = FUN_00c96220(this_00,uVar3);
      }
      FUN_00a63b80(*(int *)((int)this + 0xc),(uint *)((int)this_00 + 8),uVar6,
                   (void *)((int)this + 800));
      FUN_00b46d10((void *)((int)this + 0x98),(undefined4 *)((int)this + 0x348),
                   (undefined4 *)((int)this + 0x358),(undefined4 *)((int)this + 0x338));
      FUN_00b46d10((void *)((int)this + 200),(undefined4 *)((int)this + 0x348),
                   (undefined4 *)((int)this + 0x358),(undefined4 *)((int)this + 0x338));
    }
    pvVar5 = ProductCatalog_LookupFenceProduct(pvVar7,(void *)((int)pvVar5 + 0xe8),1);
    bVar1 = FUN_00c944f0(pvVar5,uVar3);
    if (bVar1) {
      uVar3 = FenceProduct_FirstAuthoredPresetId(pvVar5);
    }
    else {
      uVar3 = FenceProduct_GetPresetIdentifier(pvVar5,uVar3);
    }
    FencePreset_BuildForProductKey
              (*(int *)((int)this + 0xc),(uint *)((int)pvVar5 + 8),uVar3,(void *)((int)this + 0x368)
              );
    *(undefined4 *)((int)this + 0xf8) = *(undefined4 *)((int)this + 0x390);
    *(undefined4 *)((int)this + 0xfc) = *(undefined4 *)((int)this + 0x394);
    *(undefined4 *)((int)this + 0x100) = *(undefined4 *)((int)this + 0x398);
    *(undefined4 *)((int)this + 0x104) = *(undefined4 *)((int)this + 0x39c);
    *(undefined4 *)((int)this + 0x108) = *(undefined4 *)((int)this + 0x3a0);
    *(undefined4 *)((int)this + 0x10c) = *(undefined4 *)((int)this + 0x3a4);
    *(undefined4 *)((int)this + 0x110) = *(undefined4 *)((int)this + 0x3a8);
    *(undefined4 *)((int)this + 0x114) = *(undefined4 *)((int)this + 0x3ac);
    *(undefined4 *)((int)this + 0x118) = *(undefined4 *)((int)this + 0x380);
    *(undefined4 *)((int)this + 0x11c) = *(undefined4 *)((int)this + 900);
    *(undefined4 *)((int)this + 0x120) = *(undefined4 *)((int)this + 0x388);
    *(undefined4 *)((int)this + 0x124) = *(undefined4 *)((int)this + 0x38c);
  }
  pvVar7 = (void *)ProductCatalog_FindExactKeyInFourBanks(pvVar7,(uint *)((int)this + 0x278));
  if ((pvVar7 != (void *)0x0) &&
     (uVar3 = PatternProduct_CountAuthoredAndInstalledPresets(pvVar7), uVar3 != 0)) {
    pvVar5 = (void *)((int)this + 0x3b0);
    iVar8 = 1;
    uVar3 = FUN_00c99a00((int)pvVar7);
    PatternContext_PrepareFromBankProduct
              (*(int *)((int)this + 0xc),(uint *)((int)this + 0x278),uVar3,iVar8,pvVar5);
  }
  return;
}

