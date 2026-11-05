/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence default-triple consumption contract): ECX design map; RET4 one pointer
   to supplied three-key/48-byte triple; void. Iterate retained list [this+74,this+78) in0x30-byte
   strides, call existing A66380 match helper, return at first nonzero AL. If absent, append
   supplied triple: inline12DWORDcopy when capacity allows, otherwise CA0860 insertion/growth
   helper. Existing comparator semantics are not generalized as raw memcmp or reconstructed
   nullable-key equality. This function reads the input triple and modifies its separate retained
   list, not the input storage. B14A20 supplies the existing default triple at this+40; that call is
   registration/consumption, not default-value update. */

void __thiscall FenceDesignMap_RegisterUniqueTriple(void *this,uint *tripleWords)

{
  void *pvVar1;
  uint uVar2;
  int iVar3;
  void *this_00;
  uint *puVar4;
  
  pvVar1 = *(void **)((int)this + 0x78);
  this_00 = *(void **)((int)this + 0x74);
  if (this_00 != pvVar1) {
    do {
      uVar2 = FenceDesignTriple_EqualsAllKeyWords(this_00,tripleWords);
      if ((char)uVar2 != '\0') break;
      this_00 = (void *)((int)this_00 + 0x30);
    } while (this_00 != pvVar1);
    if (this_00 != pvVar1) {
      return;
    }
  }
  puVar4 = *(uint **)((int)this + 0x78);
  if (puVar4 < *(uint **)((int)this + 0x7c)) {
    *(uint **)((int)this + 0x78) = puVar4 + 0xc;
    if (puVar4 != (uint *)0x0) {
      for (iVar3 = 0xc; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar4 = *tripleWords;
        tripleWords = tripleWords + 1;
        puVar4 = puVar4 + 1;
      }
      return;
    }
  }
  else {
    FUN_00ca0860((int *)((int)this + 0x74),puVar4,tripleWords);
  }
  return;
}

