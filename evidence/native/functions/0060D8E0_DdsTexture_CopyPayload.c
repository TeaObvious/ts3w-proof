/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl texture,stream,options,swapPayload; AL Boolean. If
   texture usage lacks bit2, creates matching staging texture with flags100 and copies it to target
   after fill; otherwise fills target directly. Uses borrowed stream memory plus position/length and
   tight descriptor row/block sizes; tests remaining unsigned bytes per mip. Face/mip/depth walks
   call verified copy helpers. Their Boolean return values are ignored in ordinary branch: final
   success is not proof GPU locks/copies succeeded. swapPayload zero goes ordinary branch; header
   reader always passes zero. Nonzero swap/map path has decompiler aggregate aliases and is not
   runtime accepted. Third argument currently unused in reviewed body. */

bool __cdecl DdsTexture_CopyPayload(void *texture,void *stream,void *options,bool swapPayload)

{
  int *piVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  uint *puVar6;
  uint **ppuVar7;
  int *local_12c;
  uint local_120 [10];
  undefined4 local_f8 [10];
  undefined4 local_d0 [10];
  undefined1 local_a6;
  undefined1 local_a5;
  undefined4 *local_a4;
  int *local_a0;
  undefined4 local_9c;
  uint local_98;
  uint local_94;
  uint local_90;
  uint *local_8c;
  uint *local_88;
  uint local_84;
  undefined4 local_80;
  uint local_7c;
  uint local_78;
  uint local_74;
  uint local_70;
  uint local_6c;
  uint local_68;
  uint local_64;
  uint local_60;
  uint local_5c;
  uint local_58;
  uint *local_54;
  int *local_50;
  void *local_4c;
  uint local_48;
  uint local_44;
  uint local_40;
  uint local_3c;
  uint local_38;
  int local_34;
  uint *local_30;
  int local_2c;
  uint *local_8;
  
  local_4c = (void *)0x0;
  local_50 = (int *)0x0;
  local_48 = FUN_00f21ff0((int)texture);
  local_44 = FUN_00531f70((int)texture);
  local_58 = FUN_005361d0((int)texture);
  iVar3 = FUN_00c2ed00((int)texture);
  local_38 = (-(uint)(iVar3 != 1) & 0xfffffffb) + 6;
  local_40 = FUN_00516de0((int)texture);
  local_3c = FUN_0056c070((int)texture);
  local_54 = (uint *)TextureFormat_FindDescriptor(local_3c);
  uVar4 = FUN_00739aa0((int)texture);
  piVar1 = local_50;
  if ((uVar4 & 2) == 0) {
    local_4c = texture;
    local_a4 = (undefined4 *)FUN_004e4500(0x34,"Renderer/Texture",0);
    if (local_a4 == (undefined4 *)0x0) {
      local_12c = (int *)0x0;
    }
    else {
      local_12c = Texture_Construct(local_a4);
    }
    piVar1 = local_50;
    if (local_12c != local_50) {
      if (local_12c != (int *)0x0) {
        (**(code **)(*local_12c + 4))();
      }
      local_50 = local_12c;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 8))();
      }
    }
    bVar2 = Texture_CreateByShape
                      (local_50,local_38,local_58,local_48,local_44,local_40,local_3c,0x100);
    if (!bVar2) {
      local_a5 = 0;
      if (local_50 == (int *)0x0) {
        return false;
      }
      (**(code **)(*local_50 + 8))();
      return (bool)local_a5;
    }
  }
  else if (texture != local_50) {
    if (texture != (void *)0x0) {
      (**(code **)(*(int *)texture + 4))();
    }
    local_50 = texture;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  local_8 = (uint *)FUN_004add70((int)stream);
  local_34 = (**(code **)(*(int *)stream + 0x1c))();
  local_34 = local_34 + (int)local_8;
  iVar3 = (**(code **)(*(int *)stream + 0x24))(0);
  local_8 = (uint *)(iVar3 + (int)local_8);
  uVar4 = FUN_00516de0((int)local_50);
  if (uVar4 < local_40) {
    local_40 = FUN_00516de0((int)local_50);
  }
  local_5c = 0;
  do {
    if (local_38 <= local_5c) {
      if (local_4c != (void *)0x0) {
        local_a0 = local_50;
        local_9c = FUN_0060e910();
        FUN_0060f260((int)local_a0,(int)local_4c);
      }
      if (local_50 != (int *)0x0) {
        (**(code **)(*local_50 + 8))();
      }
      return true;
    }
    for (local_60 = 0; local_60 < local_40; local_60 = local_60 + 1) {
      local_64 = TextureMip_ClampDimension(local_48,(byte)local_60);
      local_68 = TextureMip_ClampDimension(local_44,(byte)local_60);
      local_74 = TextureMip_ClampDimension(local_58,(byte)local_60);
      local_78 = TextureFormat_TightRowBytes(local_54,local_64);
      iVar3 = TextureFormat_BlockRowCount(local_54,local_68);
      local_6c = iVar3 * local_78;
      iVar3 = FUN_00617ed0(local_74);
      local_70 = iVar3 * local_6c;
      if ((uint)(local_34 - (int)local_8) < local_70) {
        local_a6 = 0;
        if (local_50 == (int *)0x0) {
          return false;
        }
        (**(code **)(*local_50 + 8))();
        return (bool)local_a6;
      }
      if ((swapPayload) && ((8 < *local_54 || ((char)local_54[6] != '\0')))) {
        local_7c = TextureFormat_BlockRowCount(local_54,local_68);
        local_80 = FUN_00617ed0(local_74);
        for (local_84 = 0; local_84 < local_58; local_84 = local_84 + 1) {
          local_88 = local_8;
          if (local_58 < 2) {
            if (local_38 < 2) {
              puVar6 = FUN_00619530(local_50,local_120,local_60,0);
              ppuVar7 = &local_30;
              for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
                *ppuVar7 = (uint *)*puVar6;
                puVar6 = puVar6 + 1;
                ppuVar7 = ppuVar7 + 1;
              }
            }
            else {
              puVar5 = FUN_006196f0(local_50,local_f8,local_5c,local_60,0);
              ppuVar7 = &local_30;
              for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
                *ppuVar7 = (uint *)*puVar5;
                puVar5 = puVar5 + 1;
                ppuVar7 = ppuVar7 + 1;
              }
            }
          }
          else {
            puVar5 = FUN_006197b0(local_50,local_d0,local_84,local_60,0);
            ppuVar7 = &local_30;
            for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
              *ppuVar7 = (uint *)*puVar5;
              puVar5 = puVar5 + 1;
              ppuVar7 = ppuVar7 + 1;
            }
          }
          if (local_30 == (uint *)0x0) {
            if (local_50 != (int *)0x0) {
              (**(code **)(*local_50 + 8))();
            }
            return false;
          }
          local_8c = local_30;
          if ((char)local_54[6] == '\0') {
            switch(*local_54) {
            case 0x10:
            case 0x40:
              for (local_94 = 0; local_94 < local_7c; local_94 = local_94 + 1) {
                TextureBytes_SwapWords((undefined2 *)local_8c,(undefined2 *)local_88,local_78);
                local_88 = (uint *)((int)local_88 + local_78);
                local_8c = (uint *)((int)local_8c + local_2c);
              }
              break;
            case 0x20:
            case 0x80:
              for (local_98 = 0; local_98 < local_7c; local_98 = local_98 + 1) {
                TextureBytes_SwapDwords(local_8c,local_88,local_78);
                local_88 = (uint *)((int)local_88 + local_78);
                local_8c = (uint *)((int)local_8c + local_2c);
              }
            }
          }
          else {
            for (local_90 = 0; local_90 < local_7c; local_90 = local_90 + 1) {
              TextureBytes_SwapWords((undefined2 *)local_8c,(undefined2 *)local_88,local_78);
              local_88 = (uint *)((int)local_88 + local_78);
              local_8c = (uint *)((int)local_8c + local_2c);
            }
          }
          FUN_006198a0(local_50,(int *)&local_30);
          local_8 = (uint *)((int)local_8 + local_6c);
        }
      }
      else {
        if (local_58 < 2) {
          if (local_38 < 2) {
            Texture_CopyMipRows2D(local_50,local_60,local_8,local_78,0,0);
          }
          else {
            Texture_CopyMipRowsCube(local_50,local_5c,local_60,local_8,local_78);
          }
        }
        else {
          Texture_CopyMipRowsVolume(local_50,local_60,local_8,local_78,local_6c);
        }
        local_8 = (uint *)((int)local_8 + local_70);
      }
    }
    local_5c = local_5c + 1;
  } while( true );
}

