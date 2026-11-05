/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 Room query/storage gate: complete88byte/32instruction body A8B410..A8B467. ECX grid with
   X,Z,layer stackDWORDs/RET0C; returns EAX pointer to one logical8byte cell. Compressed block
   reference highbit8000 selects shared/default cell storage; otherwise block and low-two-bit X/Z
   select the stored cell. C03FC0 performs signed bounds before calling. This memory representation
   does not alter layer->X->Z serialized order or the four retained UInt16 room-ID fields. No
   body/type/byte changes. */

int __thiscall RoomGrid_GetLogicalCell(void *this,uint param_1,uint param_2,int param_3)

{
  ushort uVar1;
  int iVar2;
  
  iVar2 = (*(int *)((int)this + 0x20) * param_3 + ((int)param_1 >> 2)) * *(int *)((int)this + 0x24)
          + ((int)param_2 >> 2);
  uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar2 * 2);
  if ((uVar1 & 0x8000) != 0) {
    return *(int *)((int)this + 0x38) + iVar2 * 8;
  }
  return *(int *)((int)this + 0x28) + ((param_2 & 3) + ((param_1 & 3) + (uint)uVar1 * 4) * 4) * 8;
}

