/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX room-grid owner,
   stream/group/instance low/high RET10. C6D880 opens B125533A v1 plus dimensions; AA3510 flattens
   four16-bit parts per cell. 004DDEA0 writes halfword count=(temporary byte length>>3)*4, then
   close and free allocation. Producer order level then X then Z, not the compressed internal tile
   order. */

undefined1 __thiscall
RoomGrid_WriteSavedResource
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort *allocation;
  undefined4 uVar1;
  ushort *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  uVar1 = LotGrid_WriteHeaderResource(*(void **)((int)this + 0x14),param_1,param_2,param_3,param_4);
  if ((char)uVar1 != '\0') {
    local_10 = (ushort *)0x0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Lot/RoomManager/Save/tmp";
    RoomGrid_FlattenFourHalfwords(*(void **)((int)this + 0x14),(int *)&local_10);
    allocation = local_10;
    uVar1 = thunk_FUN_004ddea0(*(int **)((int)param_1 + 8),local_10,
                               (local_c - (int)local_10 >> 3) * 4,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,(byte)uVar1);
    ResourceStreamContext_Close(param_1);
    if (allocation != (ushort *)0x0) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

