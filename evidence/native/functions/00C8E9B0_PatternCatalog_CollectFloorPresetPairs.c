/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst name. Physical thiscall ECXcatalog,
   UInt32mask/outputvector stackwords, RET8/void. Full equivalent preset-pair collector over
   distinct24-byte bank44..48. Nonnull product, authored+installed preset count; rawmask0 becomes2,
   maskAND nonzero; full32-bit ID and borrowed product pointer append. No fixed captured membership,
   CLR join byinstance, nameheuristic or thumbnail24bit masking is proved here. CEB0F0 registered
   floor wrapper selects this collector. */

void __thiscall PatternCatalog_CollectFloorPresetPairs(void *this,uint subsortMask,void *outPairs)

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
  
  iVar1 = *(int *)((int)this + 0x48);
  for (iVar5 = *(int *)((int)this + 0x44); iVar5 != iVar1; iVar5 = iVar5 + 0x18) {
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

