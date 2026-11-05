/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX tile, allocator pointer at stack+4, base low byte at stack+8, density low16 at
   stack+0C, RET12; no meaningful return/status asserted. Reads seven two-byte-spaced descriptor
   lanes, tests only lane0 direction bits4/6 and assigns four relative labels. ID0 stores
   tile-coordinate*density low16 origins. Other labels call6A9050 while cached X is0 and store
   low16(X+1,Y+1). Later origin-key equality is not established by equal relative labels; no
   nonzero/uniqueness/capacity guarantee. */

void __thiscall
LightingTile_AssignPartitionAtlasOrigins(void *this,void *param_1,char param_2,short param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  byte *pbVar4;
  byte *pbVar5;
  short *psVar6;
  char *local_37;
  undefined2 local_33;
  undefined1 local_31;
  uint local_30 [4];
  int local_20 [8];
  
  local_30[0] = (uint)(param_2 != '\0');
  pbVar5 = (byte *)((int)this + 0x48);
  local_37 = "anager_IsCustomProxyControlImpl";
  iVar3 = 1;
  local_30[1] = local_30[0];
  local_30[2] = local_30[0];
  local_30[3] = local_30[0];
  uVar2 = 0;
  pbVar4 = pbVar5;
  do {
    *(byte *)((int)&local_37 + uVar2) = *pbVar4 >> 4 & 1;
    uVar2 = uVar2 + 1;
    pbVar4 = pbVar4 + 2;
  } while (uVar2 < 7);
  if ((char)local_37 != '\0') {
    local_30[2] = local_30[0] + 1;
    local_30[1] = local_30[0] + 1;
    iVar3 = 2;
  }
  local_30[1] = local_30[2];
  local_37 = "anager_IsCustomProxyControlImpl";
  local_33 = 0x101;
  local_31 = 1;
  uVar2 = 0;
  do {
    *(byte *)((int)&local_37 + uVar2) = *pbVar5 >> 6 & 1;
    uVar2 = uVar2 + 1;
    pbVar5 = pbVar5 + 2;
  } while (uVar2 < 7);
  if ((char)local_37 != '\0') {
    local_30[2] = local_30[2] + iVar3;
    local_30[3] = local_30[0] + iVar3;
  }
  local_20[4] = 0;
  local_20[5] = 0;
  local_20[6] = 0;
  local_20[7] = 0;
  local_20[0] = 0;
  local_20[1] = 0;
  local_20[2] = 0;
  local_20[3] = 0;
  uVar2 = 0;
  psVar6 = (short *)((int)this + 0x8c);
  do {
    uVar1 = local_30[uVar2];
    if (uVar1 == 0) {
      psVar6[-1] = *(short *)((int)this + 0x40) * param_3;
      *psVar6 = *(short *)((int)this + 0x44) * param_3;
    }
    else {
      if (local_20[uVar1 + 4] == 0) {
        FloorAtlas_WriteNextWrappedOrigin(param_1,local_20 + uVar1 + 4,local_20 + uVar1);
      }
      psVar6[-1] = (short)local_20[uVar1 + 4] + 1;
      *psVar6 = (short)local_20[uVar1] + 1;
    }
    uVar2 = uVar2 + 1;
    psVar6 = psVar6 + 10;
  } while (uVar2 < 4);
  return;
}

