/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Cdecl streamContext/outputVector. Read twoUInt32
   header fields: nonzero relative-offset word required; if second wordzero returnAL1. Otherwise
   save position after header, seek position+relativeOffset-4, read dense key vector007D9930, append
   rows and restore saved position even on failure. Success requires vector-read and restored
   context status. These two words are offset/extent metadata, not a REFS version/handle-width
   header. Disjoint original ranges/nonowned gap retained.
   
   PC1.67 original static instructions. OBJKformat>=7 reader uses this exact framing: UInt32nonzero
   relative offset, UInt32extent presence; extent0 skips table. Nonzero extent seeks
   savedAfterHeader+offset-4, reads UInt32count/dense16bytekeys via7D9930, restores saved position.
   Extent is not enforced as exact table byte length. See caller936E20 for format gate and
   final-status behavior. */

undefined1 __cdecl ReferenceTable_ReadResourceKeys(char *param_1,void *param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  char *this;
  void *this_00;
  bool bVar3;
  char cVar4;
  int offset;
  undefined1 uVar5;
  uint local_1c;
  uint local_18;
  int local_14;
  undefined4 *local_10;
  undefined4 *local_c;
  
  this = param_1;
  local_1c = 0;
  bVar3 = Stream_ReadUInt32(*(void **)(param_1 + 8),&local_1c,*(uint *)(param_1 + 0x10));
  StreamReader_AccumulateStatus(this,bVar3);
  local_18 = 0;
  bVar3 = Stream_ReadUInt32(*(void **)(this + 8),&local_18,*(uint *)(this + 0x10));
  StreamReader_AccumulateStatus(this,bVar3);
  if (local_1c == 0) {
    return 0;
  }
  if (local_18 != 0) {
    offset = StreamContext_GetPositionAndMarkNegative(this);
    local_14 = offset;
    StreamContext_SeekWithSignedAbsoluteGuard(this,(local_1c - 4) + offset,0);
    if (this[0x14] != '\0') {
      param_1 = "Scratch/DownloadContent/KeyTable";
      FUN_007d9500(&local_10,&param_1);
      cVar4 = StreamContext_ReadResourceKeyVector(&local_10,this);
      this_00 = param_2;
      param_1 = (char *)CONCAT31(param_1._1_3_,cVar4);
      puVar2 = local_10;
      if (cVar4 != '\0') {
        for (; puVar2 != local_c; puVar2 = puVar2 + 4) {
          puVar1 = *(undefined4 **)((int)this_00 + 4);
          if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
            *(undefined4 **)((int)this_00 + 4) = puVar1 + 4;
            if (puVar1 != (undefined4 *)0x0) {
              *puVar1 = *puVar2;
              puVar1[1] = puVar2[1];
              puVar1[2] = puVar2[2];
              puVar1[3] = puVar2[3];
            }
          }
          else {
            FUN_00cca0b0(this_00,puVar1,puVar2);
          }
          offset = local_14;
        }
      }
      StreamContext_SeekWithSignedAbsoluteGuard(this,offset,0);
      if (((char)param_1 == '\0') || (this[0x14] == '\0')) {
        uVar5 = 0;
      }
      else {
        uVar5 = 1;
      }
      if (local_10 != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
      return uVar5;
    }
    StreamContext_SeekWithSignedAbsoluteGuard(this,offset,0);
    return 0;
  }
  return 1;
}

