/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned generic role name. Complete49-byte
   body004A3970..004A39A0,21 instructions, two caller-clean pointer DWORDs at entry ESP+4/+8, plain
   RET. Each pointer supplies four readable DWORDs; no null/size guards or mutation. Lexicographic
   unsigned CMP order is offsets0,4,0C,8 (stored word indices0,1,3,2). First differing unsigned word
   sets CF; SBB EAX,EAX then NEG EAX produces full EAX0/1, true when left precedes right. All-equal
   words return0. Real comparator CE8210 pushes its product-key pointers from product+8
   atCE85A6/CE85A7 and cleans8 after CE85A8; it consumes AL. In that concrete resource-key context
   the order is instanceLow,instanceHigh,group,type, rather than UInt64 numeric instance order. The
   generic four-word primitive is not proof of every caller's semantic field names, localization,
   price policy or thread ownership. No original bytes changed. */

bool __cdecl UnsignedKey128_IsBefore(uint *param_1,uint *param_2)

{
  bool bVar1;
  
  bVar1 = *param_1 < *param_2;
  if (((*param_1 == *param_2) && (bVar1 = param_1[1] < param_2[1], param_1[1] == param_2[1])) &&
     (bVar1 = param_1[3] < param_2[3], param_1[3] == param_2[3])) {
    bVar1 = param_1[2] < param_2[2];
  }
  return bVar1;
}

