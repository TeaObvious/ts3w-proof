/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall full four-key64byte input pointer RET4 fullEAX UInt32 storage ID. First compare
   ALL64bytes with owner+40 defaultquad via7892B0; equal returns0. Otherwise maplookup
   andreturnnode+40 ID iffound, else0. CallerA993C3 truncates returned ID toAX forphysicalquarters.
   Lookup occurs BEFORE AddReference; missing-row return0 must not be replaced by the subsequently
   allocated positiveID. */

uint __thiscall FloorKeyMap_FindStorageIdOrZero(void *this,undefined *fourKeys)

{
  bool bVar1;
  int local_8 [2];
  
  bVar1 = ResourceKeyQuad_Equals(fourKeys,(undefined *)((int)this + 0x40));
  if (!bVar1) {
    FUN_00a8f320(this,local_8,fourKeys);
    if (local_8[0] != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
      return *(uint *)(local_8[0] + 0x40);
    }
  }
  return 0;
}

