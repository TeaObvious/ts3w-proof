/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role from original PC1.67 instructions. Physical seven stack DWORD arguments,
   RET1Chex; preserve the existing stored signature/types. Reads tagged properties through006028B0
   and typed value readers, then dispatches original UInt32 operation IDs to
   allocation/constructors. Verified examples: ColorFill9CD1269D alloc30hex ClearOp ->005FAE00;
   CASPickDataC6B6AC1F also uses005FAE00 in its admitted branch; DrawImageA15200B1 alloc50hex BlitOp
   selects005FAFF0 or005FB230 by the existing source-selector branch; DrawFabric034210A5 alloc68hex
   FabricOp ->005FB870. Other original operation branches remain present; no seven-operation host
   subset is imposed here. Selected constructors own subsequent packed-word conversions. The
   constructed pointer is passed with argument1 to005FBE30; nonnull argument6/7 receive their
   original virtual+8 cleanup. This property-operation dispatcher is not evidence for original
   initial object/wall XML selection, complete expression grammar, generated resource lifetime or
   host-wide parity. Physical Listing governs provisional decompiler aliases. */

void TextureCompositor_DispatchPropertyOperation
               (void *param_1,uint param_2,void *param_3,int param_4,char param_5,int *param_6,
               int *param_7)

{
  int iVar1;
  uint *puVar2;
  void *pvVar3;
  undefined4 *puVar4;
  int *extraout_ECX;
  int *extraout_ECX_00;
  int *extraout_ECX_01;
  undefined4 uVar5;
  undefined4 uVar6;
  byte bVar7;
  char cVar8;
  int *piVar9;
  int *piVar10;
  uint local_ac;
  float local_a8 [2];
  char local_a0 [4];
  float local_9c;
  int local_98;
  undefined4 local_94;
  uint local_90;
  float local_8c [15];
  float local_50;
  uint local_4c;
  float local_48 [3];
  float local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28 [5];
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_8c[0xc] = 0.0;
  local_8c[0xd] = 0.0;
  local_8c[0xe] = FLOAT_00f998f8;
  local_50 = FLOAT_00f998f8;
  local_a8[1] = 3.57331e-43;
  local_ac = local_ac & 0xffffff00;
  local_2c = 0;
  local_30 = 0;
  local_48[0] = 0.0;
  local_48[1] = 0.0;
  local_48[2] = FLOAT_00f998f8;
  local_3c = FLOAT_00f998f8;
  local_9c = 0.0;
  local_a0[0] = 1;
  local_4c = local_4c & 0xffffff00;
  local_98 = -1;
  local_28[0] = 0;
  local_28[1] = 0;
  local_28[2] = 0;
  local_28[3] = 0;
  local_a8[0] = 0.0;
  local_8c[8] = 0.0;
  local_8c[9] = 0.0;
  local_8c[10] = 0.0;
  local_8c[0xb] = 0.0;
  local_8c[4] = 0.0;
  local_8c[5] = 0.0;
  local_8c[6] = 0.0;
  local_8c[7] = 0.0;
  local_94 = 0;
  local_34 = 0x100;
  local_38 = 0x100;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_90 = local_90 & 0xffffff00;
  puVar2 = FUN_006028b0(param_3,0x2e10aaae);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_4);
  }
  puVar2 = FUN_006028b0(param_3,0xe1d6d01f);
  if ((char)*puVar2 != -1) {
    FUN_00600dc0(*puVar2 >> 8,local_8c + 0xc);
  }
  puVar2 = FUN_006028b0(param_3,0xb07b3b93);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,local_a8 + 1);
  }
  puVar2 = FUN_006028b0(param_3,0xfbf310c7);
  if ((char)*puVar2 != -1) {
    FUN_00600bf0(*puVar2 >> 8,(char *)&local_ac);
  }
  puVar2 = FUN_006028b0(param_3,0xd49e8879);
  if ((char)*puVar2 != -1) {
    FUN_00600bf0(*puVar2 >> 8,(char *)&local_4c);
  }
  puVar2 = FUN_006028b0(param_3,0xe055ee36);
  uVar5 = 0;
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_2c);
    uVar5 = local_2c;
  }
  puVar2 = FUN_006028b0(param_3,0x48f7567);
  uVar6 = 0;
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_30);
    uVar6 = local_30;
  }
  puVar2 = FUN_006028b0(param_3,0x49f996db);
  if ((char)*puVar2 != -1) {
    FUN_00600d50(*puVar2 >> 8,&local_9c);
  }
  puVar2 = FUN_006028b0(param_3,0xa3aafc98);
  if ((char)*puVar2 != -1) {
    FUN_00600dc0(*puVar2 >> 8,local_48);
  }
  puVar2 = FUN_006028b0(param_3,0xe27fe962);
  if ((char)*puVar2 != -1) {
    FUN_00600bf0(*puVar2 >> 8,local_a0);
  }
  puVar2 = FUN_006028b0(param_3,0x8a7006db);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_98);
  }
  puVar2 = FUN_006028b0(param_3,0xf6cc8471);
  if ((char)*puVar2 != -1) {
    FUN_00600e40(*puVar2 >> 8,local_28);
  }
  puVar2 = FUN_006028b0(param_3,0x64399ec5);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_94);
  }
  puVar2 = FUN_006028b0(param_3,0x182e64eb);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_34);
  }
  puVar2 = FUN_006028b0(param_3,0x4c47d5c0);
  if ((char)*puVar2 != -1) {
    FUN_00600c60(*puVar2 >> 8,&local_38);
  }
  puVar2 = FUN_006028b0(param_3,0xdcff6d7b);
  if ((char)*puVar2 != -1) {
    FUN_00600e40(*puVar2 >> 8,&local_14);
  }
  puVar2 = FUN_006028b0(param_3,0x3a3260e6);
  if ((char)*puVar2 != -1) {
    FUN_00600d50(*puVar2 >> 8,local_a8);
  }
  puVar2 = FUN_006028b0(param_3,0x1f091259);
  if ((char)*puVar2 != -1) {
    FUN_00600dc0(*puVar2 >> 8,local_8c + 8);
  }
  puVar2 = FUN_006028b0(param_3,0x49de3b16);
  if ((char)*puVar2 != -1) {
    FUN_00600e40(*puVar2 >> 8,local_8c + 4);
  }
  puVar2 = FUN_006028b0(param_3,0x655fd973);
  if ((char)*puVar2 != -1) {
    FUN_00600bf0(*puVar2 >> 8,(char *)&local_90);
  }
  bVar7 = (byte)uVar5;
  cVar8 = (char)uVar6;
  if (param_2 < 0x9cd1269e) {
    if (param_2 == 0x9cd1269d) {
      local_94 = 0;
      puVar2 = FUN_006028b0(param_3,0xb01748da);
      if ((char)*puVar2 != -1) {
        FUN_00600c60(*puVar2 >> 8,&local_94);
      }
      pvVar3 = (void *)FUN_004e4500(0x30,"CAS/TextureCompositorResource/ClearOp",0);
      if (pvVar3 == (void *)0x0) goto LAB_006057df;
      puVar4 = CompositorClearOp_ConstructPackedFields
                         (pvVar3,local_8c + 0xc,local_94,(byte)local_ac,bVar7,cVar8,
                          SUB41(local_a8[1],0),local_a8[0],local_8c + 8,local_8c + 4);
    }
    else if (param_2 < 0x43b554e4) {
      if (param_2 == 0x43b554e3) {
        local_8c[0] = 0.0;
        local_8c[1] = 0.0;
        local_8c[2] = 0.0;
        local_8c[3] = 0.0;
        pvVar3 = (void *)FUN_004e4500(0x68,"CAS/TextureCompositorResource/SkinToneOp",0);
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        puVar4 = FUN_005fb590(pvVar3,local_8c,local_8c,local_8c,local_8c,0,(byte)local_ac,bVar7,
                              cVar8,SUB41(local_a8[1],0),local_a8[0],local_8c + 8,local_8c + 4);
      }
      else if (param_2 == 0x34210a5) {
        pvVar3 = (void *)FUN_004e4500(0x68,"CAS/TextureCompositorResource/FabricOp",0);
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        puVar4 = CompositorFabricOp_ConstructPackedFields
                           (pvVar3,&local_14,local_94,(short)local_34,(short)local_38,local_48,
                            local_8c + 0xc,local_9c,(byte)local_ac,bVar7,cVar8,local_a0[0],
                            SUB41(local_a8[1],0),1.0,local_a8[0],local_8c + 8,local_8c + 4);
      }
      else {
        if (param_2 != 0x1e363b9b) goto LAB_006057ee;
        local_8c[0] = FLOAT_00f998f8;
        local_8c[1] = 0.0;
        local_8c[2] = 0.0;
        local_8c[3] = 0.0;
        FUN_00602f40(param_3,0xd0e69002,local_8c);
        pvVar3 = (void *)FUN_004e4500(0x54,"CAS/TextureCompositorResource/ChannelSelectOp",0);
        if (local_98 == -1) {
          if (pvVar3 == (void *)0x0) goto LAB_006057df;
          puVar4 = FUN_005cabb0(pvVar3,local_8c,local_28,local_48,local_8c + 0xc,local_9c,
                                (byte)local_ac,bVar7,cVar8,local_a0[0],SUB41(local_a8[1],0),
                                local_a8[0],local_8c + 8,local_8c + 4,(char)local_90);
        }
        else {
          if (pvVar3 == (void *)0x0) goto LAB_006057df;
          puVar4 = FUN_00600130(pvVar3,local_8c,local_98,local_48,local_8c + 0xc,local_9c,
                                (byte)local_ac,bVar7,cVar8,local_a0[0],SUB41(local_a8[1],0),
                                local_a8[0],local_8c + 8,local_8c + 4,(char)local_90);
        }
      }
    }
    else if (param_2 == 0x5d7c85d4) {
      pvVar3 = (void *)FUN_004e4500(0x30,"CAS/TextureCompositorResource/HairToneOp",0);
      if (pvVar3 == (void *)0x0) goto LAB_006057df;
      puVar4 = FUN_006008d0(pvVar3,local_8c + 0xc,0,(byte)local_ac,bVar7,cVar8,SUB41(local_a8[1],0),
                            local_a8[0],local_8c + 8,local_8c + 4);
    }
    else {
      if (param_2 != 0x890805db) goto LAB_006057ee;
      local_8c[0] = FLOAT_00f998f8;
      local_8c[1] = 0.0;
      local_8c[2] = 0.0;
      local_8c[3] = 0.0;
      FUN_00602f40(param_3,0xd0e69002,local_8c);
      pvVar3 = (void *)FUN_004e4500(0x60,"CAS/TextureCompositorResource/BlitOp",0);
      if (local_98 == -1) {
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        piVar10 = extraout_ECX;
        FUN_005c9b30(&stack0xffffff40,(int *)&param_7);
        piVar9 = extraout_ECX_00;
        FUN_005c9b30(&stack0xffffff3c,(int *)&param_6);
        puVar4 = FUN_006001e0(pvVar3,local_8c,local_28,local_48,local_8c + 0xc,local_9c,
                              (byte)local_ac,bVar7,cVar8,local_a0[0],SUB41(local_a8[1],0),0x3f800000
                              ,local_a8[0],local_8c + 8,local_8c + 4,(char)local_90,(char)local_4c,
                              piVar9,piVar10);
      }
      else {
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        piVar10 = extraout_ECX;
        FUN_005c9b30(&stack0xffffff40,(int *)&param_7);
        piVar9 = extraout_ECX_01;
        FUN_005c9b30(&stack0xffffff3c,(int *)&param_6);
        puVar4 = FUN_00600300(pvVar3,local_8c,local_98,local_48,local_8c + 0xc,local_9c,
                              (byte)local_ac,bVar7,cVar8,local_a0[0],SUB41(local_a8[1],0),0x3f800000
                              ,local_a8[0],local_8c + 8,local_8c + 4,(char)local_90,(char)local_4c,
                              piVar9,piVar10);
      }
    }
  }
  else if (param_2 < 0xd6bd8696) {
    if (param_2 == 0xd6bd8695) {
      local_94 = 0x21e9cd2;
      puVar2 = FUN_006028b0(param_3,0xa2c91332);
      if ((char)*puVar2 != -1) {
        FUN_00600c60(*puVar2 >> 8,&local_94);
      }
      puVar4 = (undefined4 *)FUN_004e4500(0x10,"CAS/TextureCompositorResource/SetTargetOp",0);
      if (puVar4 == (undefined4 *)0x0) {
        puVar4 = (undefined4 *)0x0;
      }
      else {
        FUN_005f83f0(puVar4);
        *puVar4 = &PTR_LAB_00fe76c8;
        puVar4[3] = local_94;
      }
    }
    else if (param_2 == 0xa15200b1) {
      pvVar3 = (void *)FUN_004e4500(0x50,"CAS/TextureCompositorResource/BlitOp",0);
      if (local_98 == -1) {
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        puVar4 = CompositorBlitOp_ConstructPackedFields
                           (pvVar3,local_28,local_48,local_8c + 0xc,local_9c,(byte)local_ac,bVar7,
                            cVar8,local_a0[0],SUB41(local_a8[1],0),1.0,local_a8[0],local_8c + 8,
                            local_8c + 4,(char)local_90);
      }
      else {
        if (pvVar3 == (void *)0x0) goto LAB_006057df;
        puVar4 = FUN_005fb230(pvVar3,local_98,local_48,local_8c + 0xc,local_9c,(byte)local_ac,bVar7,
                              cVar8,local_a0[0],SUB41(local_a8[1],0),1.0,local_a8[0],local_8c + 8,
                              local_8c + 4,(char)local_90);
      }
    }
    else {
      if ((param_2 != 0xc6b6ac1f) || (param_4 == 0)) goto LAB_006057ee;
      if (param_5 != '\0') {
        FUN_005ffc20(param_1,local_28,local_8c + 4,param_4,SUB41(local_a8[1],0));
        goto LAB_006057ee;
      }
      pvVar3 = (void *)FUN_004e4500(0x30,"CAS/TextureCompositorResource/CASPickDataOp",0);
      if (pvVar3 == (void *)0x0) goto LAB_006057df;
      puVar4 = CompositorClearOp_ConstructPackedFields
                         (pvVar3,local_8c + 0xc,param_4,(byte)local_ac,bVar7,cVar8,1,local_a8[0],
                          local_8c + 8,local_8c + 4);
    }
  }
  else {
    if (param_2 != 0xdc0984b9) goto LAB_006057ee;
    local_8c[0] = 0.0;
    local_8c[1] = 0.0;
    local_8c[2] = 0.0;
    local_8c[3] = 0.0;
    puVar2 = FUN_006028b0(param_3,0xb67c2ef8);
    if ((char)*puVar2 != -1) {
      FUN_00600dc0(*puVar2 >> 8,local_8c);
    }
    iVar1 = local_98;
    pvVar3 = (void *)FUN_004e4500(0x5c,"CAS/TextureCompositorResource/HSVToRGBOp",0);
    if (iVar1 == -1) {
      if (pvVar3 == (void *)0x0) {
LAB_006057df:
        puVar4 = (undefined4 *)0x0;
      }
      else {
        puVar4 = FUN_005ff880(pvVar3,local_8c,local_28,local_48,local_8c + 0xc,local_9c,
                              (byte)local_ac,bVar7,cVar8,local_a0[0],local_a8[0],local_8c + 8,
                              local_8c + 4);
      }
    }
    else {
      if (pvVar3 == (void *)0x0) goto LAB_006057df;
      puVar4 = FUN_005ff930(pvVar3,local_8c,iVar1,local_48,local_8c + 0xc,local_9c,(byte)local_ac,
                            bVar7,cVar8,local_a0[0],local_a8[0],local_8c + 8,local_8c + 4);
    }
  }
  FUN_005fbe30(param_1,puVar4);
LAB_006057ee:
  if (param_6 != (int *)0x0) {
    (**(code **)(*param_6 + 8))();
  }
  if (param_7 != (int *)0x0) {
    (**(code **)(*param_7 + 8))();
  }
  return;
}

