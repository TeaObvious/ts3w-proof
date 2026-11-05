/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role: select thumbnail camera settings for a resource key; no bounds
   calculation. PC1.67: ECX manager, key/output two stack args, RET8. Callers and explicit MOV AL,1
   prove status in AL only; upper EAX is incidental and stored undefined4/EAX ABI is intentionally
   unchanged. Dispatch type01661233 to instanceLow&00FFFFFF, 04C58103/049CA4CD to D2CCD0A2,
   04ED4BB2/515CA4CD to42EF5CF6; other types begin7B8EB805. Fence0418FE2A first tries a returned
   model low24 then uses BDFC613B or (BDFC613B+8518E198 modulo32)=431542D3 depending product
   field+E0 nonzero; that field/getter's semantic identity remains unverified. Object319E4F1D
   follows at most20 component/parent iterations, reads parameter A6E5F629 model low24, and
   preserves the last attempted hash across misses; original per-iteration/early-hit buffer cleanup
   remains required. Selected-hash miss performs exact7B8EB805 lookup and forwards AL status without
   clearing output. No PreviewBound, dimension or geometry producer is established by this function.
    */

undefined4 __thiscall
ThumbnailCamera_SelectSettingsForResourceKey(void *this,uint *param_1,void *param_2)

{
  bool bVar1;
  bool bVar2;
  void *pvVar3;
  uint *puVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  uint local_5c [3];
  uint local_50;
  uint local_4c;
  undefined4 local_48;
  uint local_44;
  uint local_40;
  uint local_3c;
  uint local_38;
  uint local_34;
  int local_30 [2];
  int local_28;
  int *local_24;
  int local_18;
  int local_10;
  int *local_c;
  
  pvVar3 = DAT_011ee034;
  uVar6 = param_1[2];
  uVar8 = 0x7b8eb805;
  if (uVar6 < 0x4c58104) {
    if (uVar6 == 0x4c58103) {
LAB_00d501b7:
      uVar8 = 0xd2ccd0a2;
    }
    else if (uVar6 == 0x1661233) {
      uVar8 = *param_1 & 0xffffff;
    }
    else if (uVar6 == 0x418fe2a) {
      local_40 = *param_1;
      local_3c = param_1[1];
      local_34 = param_1[3] & 0xff000000;
      uVar8 = 0xbdfc613b;
      local_38 = uVar6;
      pvVar3 = ProductCatalog_LookupFenceProduct(DAT_011ee034,&local_40,1);
      if (pvVar3 != (void *)0x0) {
        puVar4 = (uint *)FUN_00c969d0((int)pvVar3);
        uVar5 = ThumbnailCamera_FindByHash(this,*puVar4 & 0xffffff,param_2);
        if ((char)uVar5 != '\0') goto LAB_00d503eb;
        uVar8 = (-(uint)(*(int *)((int)pvVar3 + 0xe0) != 0) & 0x8518e198) + 0xbdfc613b;
      }
    }
    else if (uVar6 == 0x49ca4cd) goto LAB_00d501b7;
  }
  else if (uVar6 == 0x4ed4bb2) {
LAB_00d50258:
    uVar8 = 0x42ef5cf6;
  }
  else if (uVar6 == 0x319e4f1d) {
    local_50 = *param_1;
    local_4c = param_1[1];
    local_44 = param_1[3] & 0xff000000;
    bVar1 = true;
    local_48 = 0x319e4f1d;
    iVar9 = 0;
    do {
      if (0x13 < iVar9) break;
      uVar5 = FUN_0092f9c0();
      FUN_00939a40(local_30,uVar5);
      uVar6 = FUN_0093a660(&local_50,local_30);
      if ((char)uVar6 != '\0') {
        local_40 = 0;
        local_3c = 0;
        local_38 = 0;
        local_34 = 0;
        ParameterBuilder_FinalizeBorrowedTable(local_30,local_5c);
        bVar2 = ParameterTable_CopyResourceKey16(local_5c,0xa6e5f629,&local_40);
        if (bVar2) {
          uVar8 = local_40 & 0xffffff;
          uVar5 = ThumbnailCamera_FindByHash(this,uVar8,param_2);
          if ((char)uVar5 != '\0') {
            uVar5 = FUN_00582cf0(local_30);
            goto LAB_00d503eb;
          }
        }
      }
      iVar7 = ObjectCatalog_FindByTypedKey(pvVar3,&local_50);
      if (iVar7 == 0) {
        bVar1 = false;
      }
      else {
        local_50 = *(uint *)(iVar7 + 0x138);
        local_4c = *(uint *)(iVar7 + 0x13c);
        local_48 = *(undefined4 *)(iVar7 + 0x140);
        local_44 = *(uint *)(iVar7 + 0x144) & 0xff000000;
      }
      if (local_18 != 0) {
        (**(code **)(*local_c + 0xc))(local_18,(local_10 - local_18 >> 2) * 4);
      }
      if (local_30[0] != 0) {
        (**(code **)(*local_24 + 0xc))(local_30[0],(local_28 - local_30[0] >> 4) << 4);
      }
      iVar9 = iVar9 + 1;
    } while (bVar1);
  }
  else if (uVar6 == 0x515ca4cd) goto LAB_00d50258;
  uVar5 = ThumbnailCamera_FindByHash(this,uVar8,param_2);
  if ((char)uVar5 == '\0') {
    uVar5 = ThumbnailCamera_FindByHash(this,0x7b8eb805,param_2);
    return uVar5;
  }
LAB_00d503eb:
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

