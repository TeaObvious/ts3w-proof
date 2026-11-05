/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl
   descriptor,widthOut,heightOut,mipsOut,stream,threeWordOptions. Mutates dimensions/count and seeks
   past leading payloads. Uses local17-DWORD offset storage; do not infer safe arbitrary mip count.
   Both dimensions>7 and not final mip gate ordinary drops. A16-byte trailer and its nonzero words
   participate in preserving detail. options[0] requested count, options[1] threshold; complete
   third-word ownership unresolved. */

void __cdecl
DdsTexture_SelectLeadingMips
          (void *param_1,uint *param_2,uint *param_3,uint *param_4,int *param_5,int *param_6)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint *local_88;
  uint local_5c;
  int local_58;
  int local_50 [17];
  int local_c;
  int local_8;
  
  local_50[0] = 0;
  local_58 = 0;
  if (*param_3 < *param_2) {
    local_88 = param_3;
  }
  else {
    local_88 = param_2;
  }
  if ((uint)param_6[1] <= *local_88) {
    local_8 = *param_6;
    for (local_5c = 0; local_5c < *param_4; local_5c = local_5c + 1) {
      uVar1 = TextureMip_ClampDimension(*param_2,(byte)local_5c);
      uVar2 = TextureMip_ClampDimension(*param_3,(byte)local_5c);
      iVar3 = TextureFormat_TightRowBytes(param_1,uVar1);
      iVar4 = TextureFormat_BlockRowCount(param_1,uVar2);
      local_50[0] = iVar4 * iVar3 + local_50[0];
      local_50[local_5c + 1] = local_50[0];
      if ((((7 < uVar1) && (7 < uVar2)) && (local_5c != *param_4 - 1)) && (local_58 < local_8)) {
        local_58 = local_58 + 1;
      }
    }
    if (local_58 != 0) {
      local_50[0] = local_50[0] + 0x80;
      local_c = (**(code **)(*param_5 + 0x1c))();
      if (local_c == local_50[0] + 0x10) {
        iVar3 = FUN_004add70((int)param_5);
        iVar3 = iVar3 + local_50[0];
        if (*(int *)(iVar3 + 4) == 0) {
          return;
        }
        if (*(int *)(iVar3 + 8) == 0) {
          return;
        }
        FUN_005c8db0(*(uint *)(iVar3 + 4) / *param_2);
        iVar3 = FUN_005c8db0(*(uint *)(iVar3 + 8) / *param_3);
        local_58 = local_58 - iVar3;
        if (local_58 < 1) {
          return;
        }
      }
      uVar1 = TextureMip_ClampDimension(*param_2,(byte)local_58);
      *param_2 = uVar1;
      uVar1 = TextureMip_ClampDimension(*param_3,(byte)local_58);
      *param_3 = uVar1;
      *param_4 = *param_4 - local_58;
      (**(code **)(*param_5 + 0x28))(local_50[local_58],1);
    }
  }
  return;
}

