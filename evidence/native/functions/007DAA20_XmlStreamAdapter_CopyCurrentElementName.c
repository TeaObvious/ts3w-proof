/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_007daa20. ECX adapter and output string object. Require state1 and no
   scanner error, get current UTF16 element name, copy its full code-unit range, then recheck
   state/error and return low AL success. Does not lowercase or trim element name. Inferred upper
   result bits are not contract. */

undefined4 __thiscall XmlStreamAdapter_CopyCurrentElementName(void *this,void *param_1)

{
  short sVar1;
  void *in_EAX;
  short *psVar2;
  short *psVar3;
  
  if ((*(int *)((int)this + 0x48) == 1) && (*(int *)(*(int *)((int)this + 8) + 8) == 0)) {
    psVar2 = (short *)FUN_00470f50(*(int *)((int)this + 8));
    sVar1 = *psVar2;
    psVar3 = psVar2;
    while (sVar1 != 0) {
      psVar3 = psVar3 + 1;
      sVar1 = *psVar3;
    }
    in_EAX = FUN_00408d60(param_1,psVar2,psVar2 + ((int)psVar3 - (int)psVar2 >> 1));
    if ((*(int *)((int)this + 0x48) != 1) || (*(int *)(*(int *)((int)this + 8) + 8) == 0)) {
      return CONCAT31((int3)((uint)in_EAX >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

