/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete53-byte thiscall twoUInt32 words RET8. Initializes base/derivedvtable, refcount4
   viaXCHG0, zeroC andbyte14. CMPrawghostType,1B thenSBB/AND stores at+8 the original type
   ONLYwhenunsignedtype<27,otherwise0; storesFULLunchanged ageGenderSpeciesFlags at+10.
   Thus0/27/FFFFFFFF produce disabledstyle0 but raw request neednotbe zero and
   nativeVisualStatebit10000 canstillbe set for27+. No signed comparison, clamp26, flagsmask or
   inventeddefault. EAX remains receiver throughout but no separate caller return-value contract is
   inferred; actualconstructor/vtable/resource lifetime remains outside this value projection. */

void __thiscall
GhostFixup_InitializeStyleAndFlags(void *this,uint ghostType,uint ageGenderSpeciesFlags)

{
  *(undefined ***)this = &PTR_FUN_00ff0fdc;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00ff3c30;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined1 *)((int)this + 0x14) = 0;
  *(uint *)((int)this + 8) = -(uint)(ghostType < 0x1b) & ghostType;
  *(uint *)((int)this + 0x10) = ageGenderSpeciesFlags;
  return;
}

