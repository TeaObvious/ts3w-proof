/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall layerIndex,x,z RET0C. Only AL is the raw alpha byte; upper EAX may be block
   index/address residue. Map pointer at terrain+60 vector; block index=(z>>2)*mapBlockWidth+(x>>2).
   Signed-negative UInt16 descriptor uses uniform byte at map+10; otherwise sample uses expanded
   map+20 plus descriptor*16+(z&3)*4+(x&3). Caller decoded flat row-major representation can be
   equivalent on supported dimensions without retaining compressed mutable storage. */

uchar __thiscall LotTerrain_GetPaintAlpha(void *this,int layerIndex,uint x,uint z)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *(int *)(*(int *)((int)this + 0x60) + layerIndex * 4);
  iVar3 = ((int)z >> 2) * *(int *)(iVar2 + 8) + ((int)x >> 2);
  uVar1 = *(ushort *)(*(int *)(iVar2 + 0x30) + iVar3 * 2);
  if ((short)uVar1 < 0) {
    return *(uchar *)(*(int *)(iVar2 + 0x10) + iVar3);
  }
  return *(uchar *)(*(int *)(iVar2 + 0x20) + ((z & 3) + (uint)uVar1 * 4) * 4 + (x & 3));
}

