/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX graph owner, two stack words, RET0x08; result is AL only, upper EAX
   unspecified. Resolve the product via C5B600, require UInt32 field+0x90 mask0x800, then low-byte
   C5B6F0 or C5B830 before bucket lookup/insertion. No claim that the two helper predicates equal
   serialized Wall/half-wall enums. Descriptive analyst role, not a recovered original symbol. */

undefined4 __thiscall WallGraph_AdmitProductKey(void *this,int *param_1,uint *param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  iVar1 = WallProduct_LookupCatalogEntry(param_2);
  uVar2 = 0;
  if ((iVar1 != 0) && (uVar2 = *(uint *)(iVar1 + 0x90) >> 0xb, (uVar2 & 1) != 0)) {
    uVar3 = WallProduct_IsZeroField8COrAllowedType(param_2);
    if ((char)uVar3 == '\0') {
      uVar2 = WallProduct_HasNonzeroFieldE0(param_2);
      if ((char)uVar2 == '\0') goto LAB_00c4b361;
    }
    iVar1 = FUN_00c4aee0(iVar1);
    uVar3 = FUN_00c44a10(*(void **)((int)this + iVar1 * 4 + 0x270),param_1);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
LAB_00c4b361:
  return uVar2 & 0xffffff00;
}

