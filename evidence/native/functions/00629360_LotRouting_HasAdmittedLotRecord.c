/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX manager plus two
   lot-ID DWORDs; RET8. Rejects zero/all-ones IDs and the current-owner lot ID returned by00C88F20;
   manager map key must match both words. Boolean is AL only, not arbitrary upper EAX. Child
   map/owner internals are separate. Complete actual C/Listing and pristine PE support the selected
   observations. Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain
   unchanged; current managed resource/cache policy is preserved. */

undefined4 __thiscall LotRouting_HasAdmittedLotRecord(void *this,uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint local_8 [2];
  
  uVar2 = param_2;
  uVar1 = param_1;
  uVar3 = param_1 | param_2;
  if ((uVar3 != 0) && ((param_1 & param_2) != 0xffffffff)) {
    uVar3 = FUN_00c88f20();
    if ((uVar1 != *(uint *)(uVar3 + 0x48)) || (uVar2 != *(uint *)(uVar3 + 0x4c))) {
      FUN_00628730((void *)((int)this + 0x48),local_8,&param_1);
      uVar3 = local_8[0];
      if (((local_8[0] != *(uint *)(*(int *)((int)this + 0x4c) + *(int *)((int)this + 0x50) * 4)) &&
          (*(uint *)(local_8[0] + 0x10) == uVar1)) && (*(uint *)(local_8[0] + 0x14) == uVar2)) {
        return CONCAT31((int3)(local_8[0] >> 8),1);
      }
    }
  }
  return uVar3 & 0xffffff00;
}

