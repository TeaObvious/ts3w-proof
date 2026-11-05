/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): cdecl signedchar pointer,32bitcount.
   Original64-bitFNV1seedCBF29CE484222325,prime00000100000001B3. For each countedbyte MOVSX
   toInt32,callCRTtolower atF966C0,CDQ sign-extends
   its32-bitresult,multiplyoldhashbyprime,thenXORthe64-bitsignextendedfoldedvalue.
   Count0returnsseed. Do not substitute unsignedbyteFNV1a,Unicodecasefolding or guessed CRTlocale
   behavior for arbitrarybinarybytes. Footprint946890passes actualpackedpolygons
   includingbinaryfloatwords,sohigh-bit/sign/locale details matter. */

undefined8 __cdecl Hash_Fnv1CaseFoldSignedByteSpan(char *param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  longlong lVar4;
  
  uVar2 = 0x84222325;
  uVar3 = 0xcbf29ce4;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    uVar1 = tolower((int)*param_1);
    lVar4 = __allmul(uVar2,uVar3,0x1b3,0x100);
    uVar2 = uVar1 ^ (uint)lVar4;
    uVar3 = (int)uVar1 >> 0x1f ^ (uint)((ulonglong)lVar4 >> 0x20);
    param_1 = param_1 + 1;
  }
  return CONCAT44(uVar3,uVar2);
}

