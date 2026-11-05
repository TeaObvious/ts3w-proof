/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+X/Z/relativelevel RET0Chex returnsborrowedBYTEpointer. ArithmeticSAR coordinate>>2
   selects4x4block; ref8000 choosesuniformbyte; otherwise refindex andcoordinate&3 selectdetailbyte.
   No outerbounds safety inleaf. Applies tobasementflags andfloor-owner/rotationbytegrids; no
   wirebyteorder conversion here. */

byte * __thiscall ByteTileGrid_CellPointer(void *this,int x,int z,int relativeLevel)

{
  ushort uVar1;
  int iVar2;
  
  iVar2 = (*(int *)((int)this + 0x20) * relativeLevel + (x >> 2)) * *(int *)((int)this + 0x24) +
          (z >> 2);
  uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar2 * 2);
  if ((uVar1 & 0x8000) != 0) {
    return (byte *)(*(int *)((int)this + 0x38) + iVar2);
  }
  return (byte *)(*(int *)((int)this + 0x28) + ((x & 3U) + (uint)uVar1 * 4) * 4 + (z & 3U));
}

