/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall layer,tileIndex,borrowEncoded;RET8.
   Slots are DWORD tags:0..255 uniform byte including0; values>255 treated as allocated256byte
   tiles. borrowEncoded==0 materializes uniform into256 bytes filled by lowbyte and replaces slot;
   other values return encoded slot. No local index bound. Allocation null can be stored; caller
   read status/memory safety separate. */

void * __thiscall
TerrainBlendLayer_GetOrMaterializeTile(void *this,uint tileIndex,bool borrowEncoded)

{
  int *_Dst;
  uint _Val;
  
  _Dst = *(int **)(*(int *)this + tileIndex * 4);
  if ((!borrowEncoded) && ((_Dst == (int *)0x0 || (_Dst < (int *)0x100)))) {
    _Val = (uint)_Dst & 0xff;
    _Dst = FUN_004e6f20(DAT_011cc864,0x100,0);
    if (_Dst != (int *)0x0) {
      memset(_Dst,_Val,0x100);
    }
    *(int **)(*(int *)this + tileIndex * 4) = _Dst;
  }
  return _Dst;
}

