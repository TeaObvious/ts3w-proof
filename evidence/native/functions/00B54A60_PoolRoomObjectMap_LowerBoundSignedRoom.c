/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Caller-cleaned search over begin/end pointers to 24-byte records and a signed16 key pointer.
   B69280 also supplies a fourth widened byte argument; this body does not read it. Signed
   end-minus-begin division by24 forms the record count; signed16 JGE selects the lower-bound half.
   Returns the first record whose signed16 key is not less than the requested key, or end. No record
   mutation, allocation or complete container lifetime is established by this leaf. */

int __cdecl PoolRoomObjectMap_LowerBoundSignedRoom(int param_1,int param_2,short *param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = (param_2 - param_1) / 0x18;
  if (0 < iVar2) {
    do {
      iVar1 = iVar2 >> 1;
      if (*(short *)(param_1 + iVar1 * 0x18) < *param_3) {
        param_1 = param_1 + iVar1 * 0x18 + 0x18;
        iVar1 = iVar2 + (-1 - iVar1);
      }
      iVar2 = iVar1;
    } while (0 < iVar1);
  }
  return param_1;
}

