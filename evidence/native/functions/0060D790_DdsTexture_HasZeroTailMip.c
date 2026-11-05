/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl stream,width,height,mipCount,format; Boolean in
   AL. Requires at least3mips and final mip width<=64. Walks descriptor-derived tight mip bytes
   against available memory; final mip's byte sum zero selects special drop policy. This tests
   stored bytes, not visible alpha or material transparency. Truncation/overflow domains remain
   caller-dependent. */

uint __cdecl
DdsTexture_HasZeroTailMip(int *param_1,uint param_2,uint param_3,uint param_4,uint param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined *this;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint local_2c;
  uint local_18;
  int local_10;
  byte *local_8;
  
  iVar1 = FUN_004add70((int)param_1);
  iVar2 = (**(code **)(*param_1 + 0x1c))();
  iVar3 = (**(code **)(*param_1 + 0x24))(0);
  local_8 = (byte *)(iVar3 + iVar1);
  this = TextureFormat_FindDescriptor(param_5);
  local_10 = 0;
  if (param_4 < 3) {
    uVar4 = (uint)this & 0xffffff00;
  }
  else {
    uVar4 = TextureMip_ClampDimension(param_2,(char)param_4 - 1);
    if (uVar4 < 0x41) {
      for (local_18 = 0; local_18 < param_4; local_18 = local_18 + 1) {
        uVar4 = TextureMip_ClampDimension(param_2,(byte)local_18);
        uVar5 = TextureMip_ClampDimension(param_3,(byte)local_18);
        iVar3 = TextureFormat_TightRowBytes(this,uVar4);
        iVar6 = TextureFormat_BlockRowCount(this,uVar5);
        uVar4 = iVar6 * iVar3;
        uVar5 = (iVar2 + iVar1) - (int)local_8;
        if (uVar5 < uVar4) {
          return uVar5 & 0xffffff00;
        }
        if (local_18 == param_4 - 1) {
          for (local_2c = 0; local_2c < uVar4; local_2c = local_2c + 1) {
            local_10 = (uint)*local_8 + local_10;
            local_8 = local_8 + 1;
          }
        }
        else {
          local_8 = local_8 + uVar4;
        }
      }
      uVar4 = (uint)(local_10 == 0);
    }
    else {
      uVar4 = uVar4 & 0xffffff00;
    }
  }
  return uVar4;
}

