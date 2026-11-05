/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall layer,tileIndex,encodedValue;RET8.
   Frees prior slot only when unsigned>255, clears then stores supplied fullDWORD. Reviewed decoder
   supplies zero-extended uniform byte; generic leaf does not restrict arbitrary encodedValue to a
   valid byte/pointer. No tile bound here. */

void __thiscall TerrainBlendLayer_ReplaceEncodedTile(void *this,uint tileIndex,uint encodedValue)

{
  uint uVar1;
  
  uVar1 = *(uint *)(*(int *)this + tileIndex * 4);
  if (uVar1 != 0) {
    if (0xff < uVar1) {
      FUN_004e5e70(DAT_011cc864,uVar1);
    }
    *(undefined4 *)(*(int *)this + tileIndex * 4) = 0;
    *(uint *)(*(int *)this + tileIndex * 4) = encodedValue;
    return;
  }
  *(uint *)(*(int *)this + tileIndex * 4) = encodedValue;
  return;
}

