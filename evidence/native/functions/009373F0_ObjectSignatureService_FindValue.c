/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 object signature-map instruction contract. Complete39-byte wrapper. Three physical
   stackwords instanceLow,instanceHigh,keyType, RET0C; EAX rawUInt32 result. Calls93AD60 without an
   explicit argument, returns0 if returned service isnull; otherwise sets ECXservice and forwards
   same three words to93AF70. Global service creation/lifetime/load failure inside93AD60 remains
   separate; this wrapper performs no value+1 conversion. */

uint ObjectSignatureService_FindValue(uint instanceLow,uint instanceHigh,uint keyType)

{
  void *this;
  uint uVar1;
  
  this = (void *)FUN_0093ad60();
  if (this != (void *)0x0) {
    uVar1 = ObjectSignatureService_FindByKeyType(this,instanceLow,instanceHigh,keyType);
    return uVar1;
  }
  return 0;
}

