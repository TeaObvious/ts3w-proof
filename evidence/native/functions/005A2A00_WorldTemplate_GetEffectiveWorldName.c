/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX metadata,
   no stack args. StoredUInt32+60 returns unchanged unlessFFFFFFFF; zero isvalid. Sentinel fallback
   inspects package path+8C against installed name/configuration hints and may return known world
   hashes, then retail default08866EB8 or0. This proves per-word fallback even
   whenidentityresourceexists; exact current UI filename-category heuristics are not equivalent. */

uint __thiscall WorldTemplate_GetEffectiveWorldName(void *this)

{
  int *this_00;
  short *psVar1;
  char cVar2;
  uint uVar3;
  undefined4 *puVar4;
  short *psVar5;
  int iVar6;
  uint uVar7;
  uint local_10;
  undefined4 local_4;
  
  uVar3 = *(uint *)((int)this + 0x60);
  if (uVar3 == 0xffffffff) {
    cVar2 = DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild();
    this_00 = (int *)((int)this + 0x8c);
    if (*this_00 != *(int *)((int)this + 0x90)) {
      local_10 = 0;
      uVar3 = FUN_00595590(0x11cede0);
      if (uVar3 != 0) {
        do {
          puVar4 = (undefined4 *)FUN_005955b0(&DAT_011cede0,local_10,&local_4);
          psVar1 = *(short **)((int)this + 0x90);
          psVar5 = (short *)*puVar4;
          uVar7 = puVar4[1] - (int)psVar5 >> 1;
          if ((uVar7 <= (uint)((int)psVar1 - *this_00 >> 1)) &&
             ((((psVar5 = FUN_0040a9e0((short *)*this_00,psVar1,psVar5,psVar5 + uVar7),
                psVar5 != psVar1 || (uVar7 == 0)) && ((int)psVar5 - *this_00 >> 1 != -1)) &&
              (iVar6 = FUN_0040b8b0(this_00,L"Riverview.world",0), iVar6 != -1)))) {
            return 0x859db43;
          }
          iVar6 = FUN_00595960(this_00,puVar4,0);
          if ((iVar6 != -1) && (iVar6 = FUN_0040b8b0(this_00,L"Sunset Valley.world",0), iVar6 != -1)
             ) {
            return 0x859db3c;
          }
          iVar6 = FUN_00595960(this_00,puVar4,0);
          if ((iVar6 != -1) &&
             (iVar6 = FUN_0040b8b0(this_00,L"Starlight Shores.world",0), iVar6 != -1)) {
            return 0x9b610ff;
          }
          iVar6 = FUN_00595960(this_00,puVar4,0);
          if ((iVar6 != -1) &&
             (iVar6 = FUN_0040b8b0(this_00,L"Moonlight Falls.world",0), iVar6 != -1)) {
            return 0x9b61110;
          }
          local_10 = local_10 + 1;
        } while (local_10 < uVar3);
      }
    }
    uVar3 = *(uint *)((int)this + 0x60);
    if (uVar3 == 0xffffffff) {
      uVar3 = -(uint)(cVar2 != '\0') & 0x8866eb8;
    }
  }
  return uVar3;
}

