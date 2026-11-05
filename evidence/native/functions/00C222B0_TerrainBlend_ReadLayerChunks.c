/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall owner,stream;RET4,AL Boolean. Reads
   version/order with corrected stdcall3 helper, thenFIVE endian-awareU32
   width,height,blockWidth,blockHeight,extraWord (extraWord not consumed afterward). Blocks
   must16square or equal>=16; no multiple/power2 admission established. Initializes dimensions;
   larger block allocates side squared scratch and coarseColumns=internalCols/(side>>4). ReadsU32
   chunk count, eachU32 length; position immediately after length plus align4(length) is absolute
   chunk end. ThenU32 tileCount,layerByte. Each tile index is RAW highbyte thenlowbyte,
   followedkindbyte. Out-of-range index, rejected layer or decoderfalse skips remainder via absolute
   SEEK and can still finalALtrue when sticky stream status remains true. Physical read failure
   returnsfalse. Chunk length not a bounded substream; seek result ignored, no exactEOF contract.
   Existing nonempty owner/duplicate layers are append semantics, not replacement. */

bool __thiscall TerrainBlend_ReadLayerChunks(void *this,void *stream)

{
  void *layer;
  bool bVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  byte local_4b;
  byte bStack_4a;
  byte bStack_49;
  int *local_48;
  uint local_44;
  uint local_40;
  uint local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  undefined4 uStack_20;
  uint local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  char local_4;
  
  piVar5 = (int *)0x0;
  local_30 = 0;
  local_44 = 1;
  bVar1 = TerrainBlend_ReadVersionAndByteOrder(stream,&local_30,&local_44);
  if (!bVar1) {
    return false;
  }
  local_48 = (int *)0x0;
  StreamReader_Construct(local_18,stream,local_44);
  bVar1 = Stream_ReadUInt32(local_10,&local_28,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,&local_2c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,&local_3c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,&local_38,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if (local_4 == '\0') {
    StreamReader_ReleaseAuxiliary(local_18);
    return false;
  }
  bVar1 = false;
  if (local_3c == 0x10) {
    if (local_38 != 0x10) {
      StreamReader_ReleaseAuxiliary(local_18);
      return false;
    }
  }
  else {
    if ((local_3c != local_38) || (local_3c < 0x10)) goto LAB_00c22630;
    bVar1 = true;
  }
  bVar2 = TerrainBlend_InitializeDimensions(this,local_28,local_2c);
  if (bVar2) {
    local_34 = 0;
    if (bVar1) {
      piVar5 = FUN_004e6f20(DAT_011cc864,local_38 * local_3c,0);
      local_48 = piVar5;
      if (piVar5 == (int *)0x0) goto LAB_00c22630;
      local_34 = *(uint *)((int)this + 0x10) / (local_3c >> 4);
    }
    StreamReader_ReadUInt32Into(local_18,&local_40);
    if (local_4 != '\0') {
      while (local_40 != 0) {
        local_40 = local_40 - 1;
        local_4b = 0;
        bVar1 = Stream_ReadUInt32(local_10,&local_24,local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        iVar3 = (**(code **)(*(int *)stream + 0x24))(0);
        uVar4 = local_24 + 3;
        bVar1 = Stream_ReadUInt32(local_10,&local_44,local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = Stream_ReadByte(local_10,&local_4b);
        StreamReader_AccumulateStatus(local_18,bVar1);
        piVar5 = local_48;
        if (local_4 == '\0') goto joined_r0x00c2264b;
        bVar1 = TerrainBlend_AppendLayersThroughIndex(this,&local_4b);
        if (((bVar1) &&
            ((uint)local_4b < (uint)(*(int *)((int)this + 0x20) - *(int *)((int)this + 0x1c) >> 2)))
           && (layer = *(void **)(*(int *)((int)this + 0x1c) + (uint)local_4b * 4),
              layer != (void *)0x0)) {
          while (local_44 != 0) {
            local_44 = local_44 - 1;
            bVar1 = Stream_ReadByte(local_10,&bStack_4a);
            StreamReader_AccumulateStatus(local_18,bVar1);
            bVar1 = Stream_ReadByte(local_10,&bStack_49);
            StreamReader_AccumulateStatus(local_18,bVar1);
            bVar1 = Stream_ReadByte(local_10,(byte *)&uStack_20);
            StreamReader_AccumulateStatus(local_18,bVar1);
            piVar5 = local_48;
            if (local_4 == '\0') goto joined_r0x00c2264b;
            if ((*(uint *)((int)this + 0x18) <= (uint)CONCAT11(bStack_4a,bStack_49)) ||
               (bVar1 = TerrainBlend_DecodeStoredTile
                                  (this,local_18,layer,(uchar)uStack_20,
                                   (uint)CONCAT11(bStack_4a,bStack_49),local_3c,local_34,
                                   (uchar *)local_48), !bVar1)) goto LAB_00c225f9;
            piVar5 = local_48;
            if (local_4 == '\0') goto joined_r0x00c2264b;
          }
          local_44 = 0xffffffff;
        }
LAB_00c225f9:
        (**(code **)(*(int *)stream + 0x28))(iVar3 + (uVar4 & 0xfffffffc),0);
        piVar5 = local_48;
      }
      local_40 = 0xffffffff;
      if (local_4 != '\0') {
        if (piVar5 != (int *)0x0) {
          FUN_004e5e70(DAT_011cc864,(int)piVar5);
        }
        StreamReader_ReleaseAuxiliary(local_18);
        return true;
      }
    }
joined_r0x00c2264b:
    if (piVar5 != (int *)0x0) {
      FUN_004e5e70(DAT_011cc864,(int)piVar5);
    }
  }
LAB_00c22630:
  StreamReader_ReleaseAuxiliary(local_18);
  return false;
}

