/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Analyst-assigned name. Native ECX
   object-product receiver, one stream stack argument RET4. Original VTable0107D19C references
   entry. Complete4200-byte bodyC98660..C996C7 recovered from original instructions. Version
   range11hex..22hex; reject failed resource-key table. Common product viaC93100; authored OBJK TGI
   ordinal must be in range and copies to+88. Type flags+98; extension+9C only version>=1Ahex.
   Movement+A8; room+AC/function+B0, subcategory+B8/C0 and build+D0 zero values become high-bit
   sentinels, thenC97910 derives legacy categories. Surface-cutout ordinal is range checked and
   invalid returnsAL0, not null-mask success. Floor data exists from17hex: key+148, signed-use
   level+F0, length+158; before20hex width+15C copies length, from20hex reads separate width,
   offsets+160/+164 only after20hex. Original floor-key ordinal has no nearby explicit bound check;
   do not infer managed safe-array semantics. Preset binary/text and versioned resource fields have
   separate ownership/status paths. Final return is accumulated reader byte, cleanup releases
   temporary text/binary/key storage. Pseudocode types and helper ABI are inferred; original
   instruction widths, branches andRET4 are authoritative. This reader does not implement managed
   GameObject.Value, depreciation or household policy.
   
   Analyst note (PC1.67 catalog/template instruction contract): Original object-product catalog
   reader. Physical ABI now recorded as thiscall ECX receiver, one reader pointer stack argument, AL
   status and RET4; complete4200-byte body. Existing reader annotation remains authoritative. No
   managed GameObject.Value/depreciation behavior is implied.
   
   PC1.67 cutout reference framing verified against physical instructions: unsigned surface ordinal
   compared at C98DE8/C98DEA against tablecount; ordinal>=count branches C9966F cleanup and C996BC
   XOR AL,AL then RET4 failure. It is not a missing/null surface mask. Floor fields only
   version>=17hex; width=length below20hex, independent width from20, offsets from21. Floor ordinal
   is dereferenced without the adjacent surface ordinal bound check: no safe malformed floor-index
   acceptance or graceful failure inferred. Existing CLR floor-null safety policy differs in
   invalid-domain behavior. Normal signed level bits and binary32 dimensions/offsets are copied
   unchanged. */

bool __thiscall ObjectProduct_ReadCatalog(void *this,void *reader)

{
  uint *puVar1;
  int iVar2;
  bool bVar3;
  char cVar4;
  byte bVar5;
  undefined4 *puVar6;
  int *piVar7;
  short *psVar8;
  uint *puVar10;
  uint uVar11;
  uint uVar12;
  char acStack_cc [8];
  void *pvStack_c4;
  uint uStack_bc;
  undefined1 uStack_b8;
  uint uStack_b4;
  uint uStack_b0;
  byte bStack_a9;
  uint uStack_a8;
  char cStack_a1;
  int iStack_a0;
  void *pvStack_9c;
  int iStack_98;
  undefined4 *puStack_8c;
  uint uStack_88;
  byte bStack_81;
  undefined1 *puStack_80;
  undefined1 *puStack_7c;
  undefined2 *puStack_78;
  char *pcStack_74;
  undefined *puStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  char *pcStack_64;
  char *pcStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined2 *puStack_50;
  undefined2 *puStack_4c;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  short *psVar9;
  
  StreamReader_Construct(acStack_cc,reader,1);
  pcStack_60 = "World/Catalog/KeyTable";
  FUN_007d9500(&pvStack_9c,&pcStack_60);
  bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_b0,uStack_bc);
  StreamReader_AccumulateStatus(acStack_cc,bVar3);
  if (((uStack_b0 < 0x11) || (0x22 < uStack_b0)) ||
     (cVar4 = ReferenceTable_ReadResourceKeys(acStack_cc,&pvStack_9c), cVar4 == '\0')) {
    if (pvStack_9c != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_9c);
    }
    StreamReader_ReleaseAuxiliary(acStack_cc);
    return false;
  }
  uVar12 = 0;
  *(undefined4 *)((int)this + 0x108) = *(undefined4 *)((int)this + 0x104);
  puStack_70 = (undefined *)0x0;
  uStack_6c = 0;
  uStack_68 = 0;
  pcStack_64 = "World/Catalog/TempBinPreset";
  pcStack_74 = "World/Catalog/TempXmlPreset";
  puStack_80 = &DAT_011c8e54;
  puStack_7c = &DAT_011c8e54;
  puStack_78 = &DAT_011c8e56;
  iStack_a0 = 0;
  if (0x10 < uStack_b0) {
    uStack_a8 = 0;
    StreamReader_ReadUInt32Into(acStack_cc,&uStack_a8);
    FUN_00af9f10((int *)((int)this + 0x104),uStack_a8);
    if (uStack_a8 != 0) {
      do {
        puStack_8c = (undefined4 *)(*(int *)((int)this + 0x104) + uVar12 * 8);
        cStack_a1 = '\0';
        if (0x14 < uStack_b0) {
          bVar3 = Stream_ReadBoolean(pvStack_c4,&cStack_a1);
          StreamReader_AccumulateStatus(acStack_cc,bVar3);
        }
        puVar6 = (undefined4 *)FUN_004e4500(0x60,"World/Catalog/ObjectPreset",0);
        if ((puVar6 == (undefined4 *)0x0) ||
           (piVar7 = (int *)DesignPreset_InitializeEmpty(puVar6), piVar7 == (int *)0x0))
        goto LAB_00c9966f;
        (**(code **)*piVar7)();
        if (cStack_a1 == '\0') {
          StreamContext_ReadUtf16String(acStack_cc,&puStack_80);
          Preset_ReadBinaryOrTextBuffer
                    (piVar7,puStack_80,((int)puStack_7c - (int)puStack_80 >> 1) * 2,1);
        }
        else {
          bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_88,uStack_bc);
          StreamReader_AccumulateStatus(acStack_cc,bVar3);
          FUN_00412e20(&puStack_70,uStack_88);
          bVar3 = Stream_ReadExactBytes(pvStack_c4,puStack_70,uStack_88);
          StreamReader_AccumulateStatus(acStack_cc,bVar3);
          bVar5 = Preset_ReadBinaryOrTextBuffer(piVar7,puStack_70,uStack_88,1);
          if (bVar5 == 0) {
            (**(code **)(*piVar7 + 4))();
            goto LAB_00c98860;
          }
        }
        bVar3 = Stream_ReadUInt32(pvStack_c4,puStack_8c + 1,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        *puStack_8c = piVar7;
        iStack_a0 = iStack_a0 + piVar7[8];
        uVar12 = uVar12 + 1;
      } while (uVar12 < uStack_a8);
    }
  }
  if (uStack_b0 < 0x16) {
    psVar8 = (short *)&DAT_0107d1c4;
    do {
      psVar9 = psVar8;
      psVar8 = psVar9 + 1;
    } while (*psVar8 != 0);
    FUN_00408d60((void *)((int)this + 0x1f8),&DAT_0107d1c4,
                 (undefined2 *)(&DAT_0107d1c4 + ((int)(psVar9 + -0x83e8e1) >> 1) * 2));
  }
  else {
    CatalogWire_ReadWideString(reader,(void *)((int)this + 0x1f8));
  }
  iStack_a0 = iStack_a0 + 2 + (*(int *)((int)this + 0x1fc) - *(int *)((int)this + 0x1f8) >> 1) * 2;
  CatalogProduct_ReadCommonFields(this,reader);
  uVar12 = iStack_98 - (int)pvStack_9c >> 4;
  uStack_b4 = 0;
  uStack_88 = uVar12;
  bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_b4,uStack_bc);
  StreamReader_AccumulateStatus(acStack_cc,bVar3);
  if (uStack_b4 < uVar12) {
    puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
    *(undefined4 *)((int)this + 0x88) = *puVar6;
    *(undefined4 *)((int)this + 0x8c) = puVar6[1];
    *(undefined4 *)((int)this + 0x90) = puVar6[2];
    *(undefined4 *)((int)this + 0x94) = puVar6[3];
    bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0x98),uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    if (0x19 < uStack_b0) {
      StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0x9c));
    }
    bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0xa4),uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0xa8),uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0xe4),uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0xe8),uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    bStack_a9 = 0;
    bVar3 = Stream_ReadByte(pvStack_c4,&bStack_a9);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    piVar7 = (int *)((int)this + 0xd4);
    FUN_00c985a0(piVar7,(uint)bStack_a9);
    bVar5 = 0;
    if (bStack_a9 != 0) {
      do {
        puVar1 = (uint *)(*piVar7 + (uint)bVar5 * 0x28);
        bVar3 = Stream_ReadUInt32(pvStack_c4,puVar1,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        bVar3 = Stream_ReadUInt32(pvStack_c4,puVar1 + 1,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        bVar3 = Stream_ReadUInt32(pvStack_c4,puVar1 + 2,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        bVar3 = Stream_ReadUInt32(pvStack_c4,puVar1 + 3,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        bVar3 = Stream_ReadUInt32(pvStack_c4,puVar1 + 4,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_b4,uStack_bc);
        StreamReader_AccumulateStatus(acStack_cc,bVar3);
        if (uStack_88 <= uStack_b4) goto LAB_00c98ce9;
        puVar10 = (uint *)(uStack_b4 * 0x10 + (int)pvStack_9c);
        puVar1[6] = *puVar10;
        puVar1[7] = puVar10[1];
        puVar1[8] = puVar10[2];
        bVar5 = bVar5 + 1;
        puVar1[9] = puVar10[3];
      } while (bVar5 < bStack_a9);
    }
    iStack_a0 = iStack_a0 + ((*(int *)((int)this + 0xd8) - *piVar7) / 0x28) * 0x28;
    bVar3 = Stream_ReadByte(pvStack_c4,&bStack_81);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    *(bool *)((int)this + 0x114) = bStack_81 != 0;
    bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_b4,uStack_bc);
    StreamReader_AccumulateStatus(acStack_cc,bVar3);
    if (uStack_b4 < uStack_88) {
      puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
      *(undefined4 *)((int)this + 0x118) = *puVar6;
      *(undefined4 *)((int)this + 0x11c) = puVar6[1];
      *(undefined4 *)((int)this + 0x120) = puVar6[2];
      *(undefined4 *)((int)this + 0x124) = puVar6[3];
      bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)((int)this + 0xec),uStack_bc);
      StreamReader_AccumulateStatus(acStack_cc,bVar3);
      puVar1 = (uint *)((int)this + 0xac);
      if (uStack_b0 < 0x14) {
        StreamReader_ReadUInt32Into(acStack_cc,puVar1);
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xb0));
        FUN_005fe990(acStack_cc,(uint *)((int)this + 0xb8));
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xd0));
        *(uint *)((int)this + 200) = *(uint *)((int)this + 0xb8);
        *(undefined4 *)((int)this + 0xcc) = *(undefined4 *)((int)this + 0xbc);
      }
      else {
        StreamReader_ReadUInt32Into(acStack_cc,puVar1);
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xb0));
        FUN_005fe990(acStack_cc,(uint *)((int)this + 0xb8));
        if (0x1b < uStack_b0) {
          FUN_005fe990(acStack_cc,(uint *)((int)this + 0xc0));
        }
        FUN_005fe990(acStack_cc,(uint *)((int)this + 200));
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xd0));
      }
      if (*puVar1 == 0) {
        *puVar1 = 0x80000000;
      }
      if (*(int *)((int)this + 0xb0) == 0) {
        *(undefined4 *)((int)this + 0xb0) = 0x80000000;
      }
      if (*(int *)((int)this + 0xb8) == 0 && *(int *)((int)this + 0xbc) == 0) {
        *(int *)((int)this + 0xb8) = 0;
        *(undefined4 *)((int)this + 0xbc) = 0x80000000;
      }
      if (*(int *)((int)this + 0xc0) == 0 && *(int *)((int)this + 0xc4) == 0) {
        *(undefined4 *)((int)this + 0xc0) = 0;
        *(undefined4 *)((int)this + 0xc4) = 0x80000000;
      }
      if (*(int *)((int)this + 200) == 0 && *(int *)((int)this + 0xcc) == 0) {
        *(int *)((int)this + 200) = 0;
        *(undefined4 *)((int)this + 0xcc) = 0x80000000;
      }
      if (*(int *)((int)this + 0xd0) == 0) {
        *(undefined4 *)((int)this + 0xd0) = 0x80000000;
      }
      ObjectProduct_DeriveLegacyBuildCategories(this);
      bVar3 = Stream_ReadUInt32(pvStack_c4,&uStack_b4,uStack_bc);
      StreamReader_AccumulateStatus(acStack_cc,bVar3);
      uVar12 = uStack_88;
      if (uStack_88 <= uStack_b4) goto LAB_00c9966f;
      puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
      *(undefined4 *)((int)this + 0x128) = *puVar6;
      *(undefined4 *)((int)this + 300) = puVar6[1];
      *(undefined4 *)((int)this + 0x130) = puVar6[2];
      *(undefined4 *)((int)this + 0x134) = puVar6[3];
      if (0x16 < uStack_b0) {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
        *(undefined4 *)((int)this + 0x148) = *puVar6;
        *(undefined4 *)((int)this + 0x14c) = puVar6[1];
        *(undefined4 *)((int)this + 0x150) = puVar6[2];
        *(undefined4 *)((int)this + 0x154) = puVar6[3];
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xf0));
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0x158));
        if (uStack_b0 < 0x20) {
          *(uint *)((int)this + 0x15c) = *(uint *)((int)this + 0x158);
        }
        else {
          StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0x15c));
        }
        if (0x20 < uStack_b0) {
          StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0x160));
          StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0x164));
        }
      }
      *(undefined4 *)((int)this + 0xf8) = *(undefined4 *)((int)this + 0xf4);
      if (0x17 < uStack_b0) {
        uVar11 = 0;
        uStack_a8 = 0;
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_a8);
        FUN_004d5650((void *)((int)this + 0xf4),uStack_a8);
        if (uStack_a8 != 0) {
          do {
            puStack_8c = (undefined4 *)0x0;
            bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)&puStack_8c,uStack_bc);
            StreamReader_AccumulateStatus(acStack_cc,bVar3);
            Int32Vector_AppendValue((void *)((int)this + 0xf4),&puStack_8c);
            uVar11 = uVar11 + 1;
          } while (uVar11 < uStack_a8);
        }
      }
      *(undefined4 *)((int)this + 0x168) = DAT_011ee250;
      *(undefined4 *)((int)this + 0x16c) = DAT_011ee254;
      *(undefined4 *)((int)this + 0x170) = DAT_011ee258;
      *(undefined4 *)((int)this + 0x174) = DAT_011ee25c;
      if (0x18 < uStack_b0) {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        if (uStack_b4 < uVar12) {
          puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
          *(undefined4 *)((int)this + 0x168) = *puVar6;
          *(undefined4 *)((int)this + 0x16c) = puVar6[1];
          *(undefined4 *)((int)this + 0x170) = puVar6[2];
          *(undefined4 *)((int)this + 0x174) = puVar6[3];
          goto LAB_00c98fbc;
        }
LAB_00c98860:
        FUN_004ef8f0((int *)&puStack_80);
        goto LAB_00c9968e;
      }
LAB_00c98fbc:
      *(undefined4 *)((int)this + 0x178) = DAT_011ee250;
      *(undefined4 *)((int)this + 0x17c) = DAT_011ee254;
      *(undefined4 *)((int)this + 0x180) = DAT_011ee258;
      *(undefined4 *)((int)this + 0x184) = DAT_011ee25c;
      if (0x1a < uStack_b0) {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        if (uVar12 <= uStack_b4) goto LAB_00c98860;
        puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
        *(undefined4 *)((int)this + 0x178) = *puVar6;
        *(undefined4 *)((int)this + 0x17c) = puVar6[1];
        *(undefined4 *)((int)this + 0x180) = puVar6[2];
        *(undefined4 *)((int)this + 0x184) = puVar6[3];
      }
      *(undefined4 *)((int)this + 0x188) = DAT_011ee250;
      *(undefined4 *)((int)this + 0x18c) = DAT_011ee254;
      *(undefined4 *)((int)this + 400) = DAT_011ee258;
      *(undefined4 *)((int)this + 0x194) = DAT_011ee25c;
      if (0x1c < uStack_b0) {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
        *(undefined4 *)((int)this + 0x188) = *puVar6;
        *(undefined4 *)((int)this + 0x18c) = puVar6[1];
        *(undefined4 *)((int)this + 400) = puVar6[2];
        *(undefined4 *)((int)this + 0x194) = puVar6[3];
      }
      *(undefined4 *)((int)this + 0x198) = DAT_011ee250;
      *(undefined4 *)((int)this + 0x19c) = DAT_011ee254;
      *(undefined4 *)((int)this + 0x1a0) = DAT_011ee258;
      *(undefined4 *)((int)this + 0x1a4) = DAT_011ee25c;
      if (0x1d < uStack_b0) {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
        *(undefined4 *)((int)this + 0x198) = *puVar6;
        *(undefined4 *)((int)this + 0x19c) = puVar6[1];
        *(undefined4 *)((int)this + 0x1a0) = puVar6[2];
        *(undefined4 *)((int)this + 0x1a4) = puVar6[3];
      }
      *(undefined4 *)((int)this + 0x1a8) = 0;
      *(undefined4 *)((int)this + 0x1ac) = 0;
      *(undefined4 *)((int)this + 0x1b0) = 0;
      *(undefined4 *)((int)this + 0x1b4) = 0;
      if (0x1e < uStack_b0) {
        FUN_0057b600(acStack_cc,(uint *)&pcStack_60,4);
        *(char **)((int)this + 0x1a8) = pcStack_60;
        *(undefined4 *)((int)this + 0x1ac) = uStack_5c;
        *(undefined4 *)((int)this + 0x1b0) = uStack_58;
        *(undefined4 *)((int)this + 0x1b4) = uStack_54;
      }
      StreamReader_ReadUInt32Into(acStack_cc,(uint *)((int)this + 0xa0));
      pcStack_60 = "Lot/CTProductObject/tempStr";
      FUN_004088f0(&puStack_50,&pcStack_60);
      FUN_007d7aa0(acStack_cc,(int *)&puStack_50);
      puVar6 = FUN_004f3df0(&pcStack_60,&puStack_50);
      FUN_008c25d0((int *)((int)this + 0x208),puVar6);
      FUN_0071c6c0((int *)&pcStack_60);
      iVar2 = iStack_a0 + (*(int *)((int)this + 0x20c) - *(int *)((int)this + 0x208));
      if (puStack_50 != puStack_4c) {
        *puStack_50 = 0;
        puStack_4c = puStack_50;
      }
      FUN_007d7aa0(acStack_cc,(int *)&puStack_50);
      puVar6 = FUN_004f3df0(&pcStack_60,&puStack_50);
      FUN_008c25d0((int *)((int)this + 0x218),puVar6);
      FUN_0071c6c0((int *)&pcStack_60);
      iStack_a0 = iVar2 + 2 + (*(int *)((int)this + 0x21c) - *(int *)((int)this + 0x218));
      if (0x12 < uStack_b0) {
        puStack_8c = (undefined4 *)0x0;
        StreamReader_ReadUInt32Into(acStack_cc,(uint *)&puStack_8c);
        puVar1 = (uint *)((int)this + 0x22c);
        *(undefined4 **)((int)this + 0x228) = puStack_8c;
        StreamReader_ReadUInt32Into(acStack_cc,puVar1);
        if (3 < *puVar1) {
          *puVar1 = 0;
        }
        uStack_a8 = 0;
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_a8);
        piVar7 = (int *)((int)this + 0x230);
        pcStack_60 = (char *)0x0;
        uStack_5c = 0;
        FUN_00c98620(piVar7,uStack_a8,&pcStack_60);
        uVar12 = 0;
        if (uStack_a8 != 0) {
          do {
            pcStack_60 = (char *)0x0;
            bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)&pcStack_60,uStack_bc);
            StreamReader_AccumulateStatus(acStack_cc,bVar3);
            *(char **)(*piVar7 + uVar12 * 8) = pcStack_60;
            bVar3 = Stream_ReadUInt32(pvStack_c4,(uint *)(*piVar7 + 4 + uVar12 * 8),uStack_bc);
            StreamReader_AccumulateStatus(acStack_cc,bVar3);
            uVar12 = uVar12 + 1;
          } while (uVar12 < uStack_a8);
        }
      }
      if (uStack_b0 < 0x12) {
LAB_00c993b4:
        uStack_20 = 0;
        uStack_1c = 0;
        uStack_18 = 0;
        uStack_14 = 0;
        uStack_10 = 0;
        uStack_c = 0;
        uStack_8 = 0;
        uStack_4 = 0;
        uStack_40 = 0;
        uStack_3c = 0;
        uStack_38 = 0;
        uStack_34 = 0;
        uStack_30 = 0;
        uStack_2c = 0;
        uStack_28 = 0;
        uStack_24 = 0;
        *(undefined4 *)((int)this + 0x1b8) = DAT_011ee250;
        *(undefined4 *)((int)this + 0x1bc) = DAT_011ee254;
        *(undefined4 *)((int)this + 0x1c0) = DAT_011ee258;
        *(undefined4 *)((int)this + 0x1c4) = DAT_011ee25c;
        *(undefined4 *)((int)this + 0x1c8) = DAT_011ee250;
        *(undefined4 *)((int)this + 0x1cc) = DAT_011ee254;
        *(undefined4 *)((int)this + 0x1d0) = DAT_011ee258;
        *(undefined4 *)((int)this + 0x1d4) = DAT_011ee25c;
        *(undefined4 *)((int)this + 0x1d8) = DAT_011ee250;
        *(undefined4 *)((int)this + 0x1dc) = DAT_011ee254;
        *(undefined4 *)((int)this + 0x1e0) = DAT_011ee258;
        *(undefined4 *)((int)this + 0x1e4) = DAT_011ee25c;
        *(undefined4 *)((int)this + 0x1e8) = DAT_011ee250;
        *(undefined4 *)((int)this + 0x1ec) = DAT_011ee254;
        *(undefined4 *)((int)this + 0x1f0) = DAT_011ee258;
        *(undefined4 *)((int)this + 500) = DAT_011ee25c;
        if ((uStack_b0 < 0x22) ||
           (((uVar12 = ReferenceTable_ReadKeyByOrdinal(acStack_cc,(int *)&pvStack_9c,&uStack_20),
             (char)uVar12 != '\0' &&
             (uVar12 = ReferenceTable_ReadKeyByOrdinal(acStack_cc,(int *)&pvStack_9c,&uStack_10),
             (char)uVar12 != '\0')) &&
            ((uVar12 = ReferenceTable_ReadKeyByOrdinal(acStack_cc,(int *)&pvStack_9c,&uStack_40),
             (char)uVar12 != '\0' &&
             ((((uVar12 = ReferenceTable_ReadKeyByOrdinal(acStack_cc,(int *)&pvStack_9c,&uStack_30),
                (char)uVar12 != '\0' &&
                (bVar3 = VisualProxy_ResolveTypedResource
                                   (&uStack_20,0x1661233,(void *)((int)this + 0x1b8)), bVar3)) &&
               (bVar3 = VisualProxy_ResolveTypedResource
                                  (&uStack_10,0x1661233,(void *)((int)this + 0x1c8)), bVar3)) &&
              ((bVar3 = VisualProxy_ResolveTypedResource
                                  (&uStack_40,0x1661233,(void *)((int)this + 0x1d8)), bVar3 &&
               (bVar3 = VisualProxy_ResolveTypedResource
                                  (&uStack_30,0x1661233,(void *)((int)this + 0x1e8)), bVar3)))))))))
           ) {
          FUN_00731be0(this,*(int *)((int)this + 0x20) +
                            (*(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3) * 8 +
                            iStack_a0);
          FUN_004ef8f0((int *)&puStack_50);
          FUN_004ef8f0((int *)&puStack_80);
          if (puStack_70 != (undefined *)0x0) {
            Memory_FreeIfNonNull(puStack_70);
          }
          if (pvStack_9c != (void *)0x0) {
            Memory_FreeIfNonNull(pvStack_9c);
          }
          StreamReader_ReleaseAuxiliary(acStack_cc);
          return (bool)uStack_b8;
        }
      }
      else {
        StreamReader_ReadUInt32Into(acStack_cc,&uStack_b4);
        if (uStack_b4 < uStack_88) {
          puVar6 = (undefined4 *)(uStack_b4 * 0x10 + (int)pvStack_9c);
          *(undefined4 *)((int)this + 0x138) = *puVar6;
          *(undefined4 *)((int)this + 0x13c) = puVar6[1];
          *(undefined4 *)((int)this + 0x140) = puVar6[2];
          *(undefined4 *)((int)this + 0x144) = puVar6[3];
          goto LAB_00c993b4;
        }
      }
      FUN_004ef8f0((int *)&puStack_50);
      FUN_004ef8f0((int *)&puStack_80);
      goto LAB_00c9968e;
    }
LAB_00c98ce9:
    uVar12 = (int)puStack_78 - (int)puStack_80;
  }
  else {
LAB_00c9966f:
    uVar12 = (int)puStack_78 - (int)puStack_80;
  }
  if ((2 < (int)(uVar12 & 0xfffffffe)) && (puStack_80 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(puStack_80);
  }
LAB_00c9968e:
  if (puStack_70 != (undefined *)0x0) {
    Memory_FreeIfNonNull(puStack_70);
  }
  if (pvStack_9c != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_9c);
  }
  StreamReader_ReleaseAuxiliary(acStack_cc);
  return false;
}

