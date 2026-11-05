/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall layerIndex,x,z,requestedUInt32 RET10hex. Reads prior AL byte, compares
   zeroextended value against FULL DWORD request, writes low byte through AEE310. Signed usage+10 of
   18hex-byte row increments only old0 and full request!=0, decrements only old!=0/full request0.
   Extends inclusive dirty rect B4/B8/BC/C0 with x/z. EAX residue depends on last operation and is
   not a Boolean status; existing broad return type retained. Normal Add/Erase callers request
   only0..255; an arbitrary requested100hex is NOT equivalent to masked request0 for usage
   bookkeeping. */

uint __thiscall
LotTerrain_SetPaintAlpha(void *this,int layerIndex,uint x,uint z,uint requestedAlpha)

{
  int *piVar1;
  byte bVar2;
  ushort uVar3;
  void *this_00;
  uint uVar4;
  uint uVar5;
  int iVar6;
  
  uVar4 = z;
  this_00 = *(void **)(*(int *)((int)this + 0x60) + layerIndex * 4);
  uVar5 = ((int)z >> 2) * *(int *)((int)this_00 + 8) + ((int)x >> 2);
  uVar3 = *(ushort *)(*(int *)((int)this_00 + 0x30) + uVar5 * 2);
  if ((short)uVar3 < 0) {
    iVar6 = *(int *)((int)this_00 + 0x10);
  }
  else {
    iVar6 = *(int *)((int)this_00 + 0x20) + ((z & 3) + (uint)uVar3 * 4) * 4;
    uVar5 = x & 3;
  }
  bVar2 = *(byte *)(iVar6 + uVar5);
  uVar5 = requestedAlpha;
  if (bVar2 != requestedAlpha) {
    z = CONCAT31(z._1_3_,(char)requestedAlpha);
    uVar5 = FUN_00aee310(this_00,(char *)&z,x,uVar4);
    if (bVar2 == 0) {
      if (requestedAlpha != 0) {
        iVar6 = *(int *)((int)this + 0x30);
        piVar1 = (int *)(iVar6 + 0x10 + layerIndex * 0x18);
        *piVar1 = *piVar1 + 1;
        uVar5 = iVar6 + layerIndex * 0x18;
      }
    }
    else if (requestedAlpha == 0) {
      iVar6 = *(int *)((int)this + 0x30);
      piVar1 = (int *)(iVar6 + 0x10 + layerIndex * 0x18);
      *piVar1 = *piVar1 + -1;
      uVar5 = iVar6 + layerIndex * 0x18;
    }
    if ((int)x < *(int *)((int)this + 0xb4)) {
      *(uint *)((int)this + 0xb4) = x;
    }
    if (*(int *)((int)this + 0xbc) < (int)x) {
      *(uint *)((int)this + 0xbc) = x;
    }
    if ((int)uVar4 < *(int *)((int)this + 0xb8)) {
      *(uint *)((int)this + 0xb8) = uVar4;
    }
    if (*(int *)((int)this + 0xc0) < (int)uVar4) {
      *(uint *)((int)this + 0xc0) = uVar4;
    }
  }
  return uVar5;
}

