/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Firsttouchjournalforrawsample packedDWORDz<<16+x. Createsentryonlyifabsent,records oldmapcount
   andbufferposition, snapshotsrawmapalphas; noB4writeinthisownedbody.
   Undoableownsentryandbytevector.
   Fullnativeallocator/compactmapcountlimitsremainseparatefromhostimmutablewhole-layerhistory. */

void __thiscall PaintUndoable_CaptureSampleBefore(void *this,uint sampleX,uint sampleZ)

{
  uint *puVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  uint local_18 [2];
  uint local_10 [4];
  
  puVar1 = *(uint **)((int)this + 0x90);
  uVar4 = sampleZ * 0x10000 + sampleX;
  local_18[0] = uVar4;
  puVar2 = (uint *)FUN_00d24140(*(uint **)((int)this + 0x8c),(int)puVar1,local_18);
  if (((puVar2 == puVar1) || (uVar4 < *puVar2)) || (puVar2 == puVar2 + 4)) {
    puVar2 = puVar1;
  }
  if (puVar2 == *(uint **)((int)this + 0x90)) {
    local_10[1] = 0;
    local_10[2] = 0;
    local_10[3] = 0;
    local_10[0] = uVar4;
    FUN_00d242a0((void *)((int)this + 0x8c),(int *)local_18,local_10);
    uVar4 = local_18[0];
    iVar3 = *(int *)(*(int *)((int)this + 0x54) + 0x34) -
            *(int *)(*(int *)((int)this + 0x54) + 0x30);
    *(char *)(local_18[0] + 0xd) =
         ((char)(iVar3 / 0x18) + (char)(iVar3 >> 0x1f)) -
         (char)((longlong)iVar3 * 0x2aaaaaab >> 0x3f);
    iVar3 = *(int *)((int)this + 0xa4) - *(int *)((int)this + 0xa0);
    *(int *)(local_18[0] + 4) = iVar3;
    ByteVector_ResizeZeroed((int *)((int)this + 0xa0),(uint)*(byte *)(local_18[0] + 0xd) + iVar3);
    FUN_00aea900(*(void **)((int)this + 0x54),sampleX,sampleZ,
                 *(int *)((int)this + 0xa0) + *(int *)(uVar4 + 4),(uint)*(byte *)(uVar4 + 0xd));
  }
  return;
}

