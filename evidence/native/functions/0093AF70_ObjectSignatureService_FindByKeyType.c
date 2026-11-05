/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 object signature-map instruction contract. Complete67-byte dispatch. ECXservice
   plus three physical stackwords instanceLow,instanceHigh,keyType,RET0C,UInt32EAX result.
   ExactOBJKtype02DC343F selects vector service+14; VPXYtype736884F1 selects service+24;
   anyotherkindreturns0. Passes selected vector address and BOTHkeyDWORDs to93AF20, whose RET0C
   cleans its own3args. Calls do not add1 to value. This kind partition does not establish installed
   resource enumeration precedence, publication or product-to-OBJK/VPXY selection. */

uint __thiscall
ObjectSignatureService_FindByKeyType(void *this,uint instanceLow,uint instanceHigh,uint keyType)

{
  uint uVar1;
  
  if (keyType == 0x2dc343f) {
    uVar1 = ObjectSignatureMaps_FindFirstValue((void *)((int)this + 0x14),instanceLow,instanceHigh);
    return uVar1;
  }
  if (keyType != 0x736884f1) {
    return 0;
  }
  uVar1 = ObjectSignatureMaps_FindFirstValue((void *)((int)this + 0x24),instanceLow,instanceHigh);
  return uVar1;
}

