/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 Room wire gate: complete459byte/140instruction body C07AC0..C07C8A. Existing thiscall
   metadata retains auto ECX this plus five stack inputs at entryESP04/08/0C/10/14; RET14. Fifth
   lowWORD is enclosingLOT source version supplied by B52050, not B125533A word0 or partition index
   version. CMP WORD[ESP+450],12 at C07B2C; unsigned JNC C07B35 chooses modern branch. Below12hex,
   C07BA2 calls4DDA40->4DD9D0 with stream,output,UInt32 depth*4,endian, caller ADD ESP10; C07BC0..E0
   reads DWORD lowWORDs at0/4/8/C into logical WORDs0/2/4/6. Layer->X rows contain depth cells.
   Modern C07C3B calls4DD970->4DD920 for cellCount*4 UInt16s with the same physical four-word cdecl
   inputs. C07C53 imports logical8byte cells viaAA3770, closes context, C07C5F checks sticky status
   and C07C67 rebuilds room locations only on success. No selected EOF equality; unread trailing
   bytes do not choose another layout. Failed native import may have touched private storage before
   false; managed decoder publishes no partial grid. Original body/prototype/storage unchanged. */

undefined1 __thiscall
RoomManager_ReadSavedGridResource
          (void *this,void *param_1,uint param_2,uint param_3,undefined4 param_4,ushort param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  uint *puVar5;
  uint uVar6;
  int iVar7;
  ushort *puVar8;
  int local_42c;
  ushort *local_428;
  int local_424;
  undefined4 local_420;
  char *local_41c;
  void *local_418;
  uint *local_414;
  uint *local_410;
  uint local_400 [256];
  
  local_418 = this;
  uVar4 = RoomGrid_ReadHeaderResource(*(void **)((int)this + 0x14),param_1,param_2,param_3,param_4);
  if ((char)uVar4 != '\0') {
    local_428 = (ushort *)0x0;
    local_424 = 0;
    local_420 = 0;
    iVar1 = *(int *)((int)this + 0x14);
    local_41c = "Lot/RoomManager/Load/PatternLayer";
    FUN_00af9f10(&local_428,*(int *)(iVar1 + 0xc) * *(int *)(iVar1 + 8) * *(int *)(iVar1 + 4));
    if (param_5 < 0x12) {
      iVar1 = *(int *)((int)this + 0x14);
      iVar2 = *(int *)(iVar1 + 8);
      iVar3 = *(int *)(iVar1 + 4);
      puVar5 = local_400;
      local_414 = local_400;
      local_410 = local_400;
      puVar8 = local_428;
      for (iVar1 = *(int *)(iVar1 + 0xc); iVar1 != 0; iVar1 = iVar1 + -1) {
        if (iVar3 != 0) {
          local_42c = iVar3;
          do {
            uVar4 = Stream_ReadUInt32ArrayByByteOrder
                              (*(int **)((int)param_1 + 8),puVar5,iVar2 * 4,
                               *(uint *)((int)param_1 + 0x10));
            StreamReader_AccumulateStatus(param_1,(byte)uVar4);
            puVar5 = local_414;
            for (iVar7 = iVar2; iVar7 != 0; iVar7 = iVar7 + -1) {
              *puVar8 = (ushort)*puVar5;
              puVar8[1] = (ushort)puVar5[1];
              puVar8[2] = (ushort)puVar5[2];
              puVar8[3] = (ushort)puVar5[3];
              puVar5 = puVar5 + 4;
              puVar8 = puVar8 + 4;
            }
            local_42c = local_42c + -1;
            puVar5 = local_414;
            this = local_418;
          } while (local_42c != 0);
        }
      }
      if ((puVar5 != (uint *)0x0) && (puVar5 != local_400)) {
        Memory_FreeIfNonNull(puVar5);
      }
    }
    else {
      uVar6 = Stream_ReadUtf16UnitsEndian
                        (*(int **)((int)param_1 + 8),local_428,(local_424 - (int)local_428 >> 3) * 4
                         ,*(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,(byte)uVar6);
    }
    RoomGrid_ImportFourHalfwords(*(void **)((int)this + 0x14),(int *)&local_428);
    ResourceStreamContext_Close(param_1);
    if (*(char *)((int)param_1 + 0x14) != '\0') {
      RoomManager_RebuildRoomLocations(this);
    }
    if (local_428 != (ushort *)0x0) {
      Memory_FreeIfNonNull(local_428);
    }
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

