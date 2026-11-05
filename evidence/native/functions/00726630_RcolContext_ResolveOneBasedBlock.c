/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall packedIndex RET4. Top4bits
   family0..3, low28bits one-basedordinal; unsigned(ordinal-1)<familycount elseNULL, so0invalid. Odd
   tagged cacheword triggers lazy00726420; family1 adds family0count toordinal,
   otherfamiliesuseordinal. FailedALreturnsNULL; success rereads cachedpointer. No group fallback or
   typed-MATD/MLOD validation in this leaf. Loader/admission/lifetime beyond selectedreference
   lookup remain open. */

void * __thiscall RcolContext_ResolveOneBasedBlock(void *this,uint packedIndex)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  void *pvVar4;
  uint uVar5;
  
  uVar5 = packedIndex >> 0x1c;
  if (3 < uVar5) {
    return (void *)0x0;
  }
  uVar1 = (packedIndex & 0xfffffff) - 1;
  if (uVar1 < *(uint *)((int)this + uVar5 * 0xc + 0x2c)) {
    pvVar4 = *(void **)(*(int *)((int)this + uVar5 * 0xc + 0x28) + uVar1 * 4);
    if (((uint)pvVar4 & 1) != 0) {
      uVar2 = uVar1;
      if (uVar5 == 1) {
        uVar2 = *(int *)((int)this + 0x2c) + uVar1;
      }
      uVar3 = FUN_00726420(this,uVar2);
      if ((char)uVar3 == '\0') {
        return (void *)0x0;
      }
      pvVar4 = *(void **)(*(int *)((int)this + uVar5 * 0xc + 0x28) + uVar1 * 4);
    }
    return pvVar4;
  }
  return (void *)0x0;
}

