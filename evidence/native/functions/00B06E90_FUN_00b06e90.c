/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Wall-covered share parent. Three cdecl words, room query sign-extended16bits; x87 ST0 ratio, plain RET. B46EE0 graph slot→C3FEB0 room face→C40420 selected first boundary→C35F00/10 plus side orientation test C45F20/B470E0 and optional C35F20 reverse→C35FC0 loop until starting edge. Counts only product type9151E6BC with C8E6B0 resolved; B4A990 key must differ from null11ECA60 and product+A8. Unsigned counters converted with2^32 correction, zero when no counted sides. First-boundary/child order, key equality/data writers and all malformed cases remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B06E90_FUN_00b06e90.asm
 */

float10 __cdecl FUN_00b06e90(uint param_1,short param_2,int param_3)

{
  void *this;
  short sVar1;
  void *this_00;
  int iVar2;
  byte *pbVar3;
  uint *puVar4;
  int iVar5;
  int *piVar6;
  undefined4 uVar7;
  float10 fVar8;
  float10 fVar9;
  byte *local_24;
  char local_20 [4];
  int local_1c;
  int local_18;
  void *local_14;
  char local_10 [8];
  char local_8 [8];
  
  iVar5 = param_3;
  if (param_1 == 0) {
    return (float10)0;
  }
  this = *(void **)(param_1 + 0x298);
  if (this == (void *)0x0) {
    return (float10)0;
  }
  local_14 = DAT_011ee034;
  local_1c = 0;
  local_18 = 0;
  this_00 = (void *)FUN_00b46ee0(this,param_3);
  iVar2 = FUN_00c3feb0(this_00,(int)param_2);
  if (iVar2 != 0) {
    param_1 = param_1 & 0xffffff00;
    pbVar3 = FUN_00c40420(this_00,iVar2,(undefined1 *)&param_1);
    if (pbVar3 != (byte *)0x0) {
      if ((char)param_1 == '\0') {
        local_24 = FUN_00c35f00(pbVar3);
      }
      else {
        local_24 = FUN_00c35f10(pbVar3);
      }
      if (local_24 != (byte *)0x0) {
        FUN_00a64d00(local_8,local_24);
        local_20[0] = -1;
        local_20[1] = 0xff;
        local_20[2] = 0;
        local_20[3] = 0xff;
        WallLocator_QueryFirstAdjacentTile(local_8,(undefined2 *)local_20);
        sVar1 = FUN_00b470e0(this,local_20,iVar5,'\x01');
        if (sVar1 != param_2) {
          local_24 = FUN_00c35f20(local_24);
        }
        if (local_24 != (byte *)0x0) {
          pbVar3 = local_24;
          do {
            local_10[0] = -1;
            local_10[1] = 0xff;
            local_10[2] = 0;
            local_10[3] = 0xff;
            local_10[4] = 0xff;
            local_10[5] = 0;
            FUN_00a64b00(local_10,pbVar3);
            puVar4 = FUN_00b47df0(this,local_10,'\0');
            if ((puVar4[2] == 0x9151e6bc) &&
               (iVar5 = FUN_00c8e6b0(local_14,puVar4,'\x01'), iVar5 != 0)) {
              local_1c = local_1c + 1;
              piVar6 = WallPatternSide_ReadResourceKey(this,local_10);
              uVar7 = FUN_0054e0a0(piVar6,(int *)&DAT_011eca60);
              if (((char)uVar7 != '\0') &&
                 (uVar7 = FUN_0054e0a0(piVar6,(int *)(iVar5 + 0xa8)), (char)uVar7 != '\0')) {
                local_18 = local_18 + 1;
              }
            }
            pbVar3 = FUN_00c35fc0(pbVar3);
          } while (pbVar3 != local_24);
          if (local_1c != 0) {
            fVar8 = (float10)local_18;
            if (local_18 < 0) {
              fVar8 = fVar8 + (float10)FLOAT_00f99948;
            }
            fVar9 = (float10)local_1c;
            if (local_1c < 0) {
              fVar9 = fVar9 + (float10)FLOAT_00f99948;
            }
            return fVar8 / fVar9;
          }
        }
      }
    }
  }
  return (float10)0;
}

