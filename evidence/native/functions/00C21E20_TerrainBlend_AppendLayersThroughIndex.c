/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall owner,indexByteInOut,RET4. Rejects
   entry count>255. ALWAYS appends at least one layer map, then appends until new zero-based
   index>=original requested byte, rewriting indexOut each time. Even an already-existing requested
   index appends, not dictionary lookup/replacement. Layer map8bytes, internal dimensions from owner
   tile cols/rows; allocation/initialization failure ALfalse. Caller may skip chunk without
   promoting this to sticky read failure. */

bool __thiscall TerrainBlend_AppendLayersThroughIndex(void *this,uchar *requestedIndexInOut)

{
  byte bVar1;
  undefined4 *puVar2;
  byte bVar3;
  int *this_00;
  undefined4 uVar4;
  int *local_4;
  
  if (0xff < (uint)(*(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2)) {
    return false;
  }
  bVar1 = *requestedIndexInOut;
  local_4 = this;
  while( true ) {
    this_00 = (int *)FUN_004e4500(8,"Terrain/BlendMap/LayerMap",0);
    if (this_00 == (int *)0x0) {
      return false;
    }
    *this_00 = 0;
    this_00[1] = 0;
    local_4 = this_00;
    uVar4 = FUN_00c20fe0(this_00,*(int *)((int)this + 0x10),*(int *)((int)this + 0x14));
    if ((char)uVar4 == '\0') break;
    puVar2 = *(undefined4 **)((int)this + 0x20);
    if (puVar2 < *(undefined4 **)((int)this + 0x24)) {
      *(undefined4 **)((int)this + 0x20) = puVar2 + 1;
      if (puVar2 != (undefined4 *)0x0) {
        *puVar2 = this_00;
      }
    }
    else {
      FUN_00982420((int *)((int)this + 0x1c),puVar2,&local_4);
    }
    bVar3 = (char)(*(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2) - 1;
    *requestedIndexInOut = bVar3;
    if (bVar1 <= bVar3) {
      return true;
    }
  }
  FUN_00c204d0(this_00);
  Memory_FreeIfNonNull(this_00);
  return false;
}

