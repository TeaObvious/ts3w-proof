/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst name. Physical thiscall ECXcatalog, UInt32mask and
   outputvector stackwords, RET8/void. Complete24-byte bank rows58..5C, nonnull product atrow10.
   C9A0B0 counts authored20-byte rows plus installed type2 preset rows. Each unsignedordinal reads
   mask C99BD0; zero mask becomes2; requested AND effective must nonzero. C99E90 supplies fullUInt32
   presetID. Append twoDWORDs productpointer+ID into existing vector, no low24 masking or retain
   here. Requested0 gives no pairs. CEB080 registered wall wrapper consumes exactcollector and
   CEAF30 sorts/retains/exports. */

void __thiscall PatternCatalog_CollectWallPresetPairs(void *this,uint subsortMask,void *outPairs)

{
  int iVar1;
  void *this_00;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint ordinal;
  void *local_10;
  uint local_c;
  
  iVar1 = *(int *)((int)this + 0x5c);
  for (iVar5 = *(int *)((int)this + 0x58); iVar5 != iVar1; iVar5 = iVar5 + 0x18) {
    this_00 = *(void **)(iVar5 + 0x10);
    if (this_00 != (void *)0x0) {
      uVar3 = PatternProduct_CountAuthoredAndInstalledPresets(this_00);
      ordinal = 0;
      if (uVar3 != 0) {
        do {
          uVar4 = PatternProduct_GetPresetSubsortMask(this_00,ordinal);
          if (uVar4 == 0) {
            uVar4 = 2;
          }
          if ((subsortMask & uVar4) != 0) {
            local_10 = this_00;
            local_c = PatternProduct_GetPresetIdentifier(this_00,ordinal);
            puVar2 = *(undefined4 **)((int)outPairs + 4);
            if (puVar2 < *(undefined4 **)((int)outPairs + 8)) {
              *(undefined4 **)((int)outPairs + 4) = puVar2 + 2;
              if (puVar2 != (undefined4 *)0x0) {
                *puVar2 = this_00;
                puVar2[1] = local_c;
              }
            }
            else {
              FUN_0040c540(outPairs,puVar2,&local_10);
            }
          }
          ordinal = ordinal + 1;
        } while (ordinal < uVar3);
      }
    }
  }
  return;
}

