/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX world plus
   x/z/road flag, RET0C. Stored pond list in order, B5E390 predicate; first matching zero-based
   index returnsEAX, none returns-1. Registered wrapper separately maps nonnegative index
   toone-based public ID. Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime
   remains its authority. All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis
   remain unchanged; current resource/cache policy is preserved. */

int __thiscall
WorldPonds_FindFirstContainingIndex(void *this,float param_1,float param_2,char param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *(int *)((int)this + 0x104) - *(int *)((int)this + 0x100) >> 2;
  iVar3 = 0;
  if (0 < iVar2) {
    do {
      uVar1 = WorldPonds_HoldsPointAboveGround
                        (*(void **)(*(int *)((int)this + 0x100) + iVar3 * 4),param_1,param_2,param_3
                        );
      if ((char)uVar1 != '\0') {
        return iVar3;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < iVar2);
  }
  return -1;
}

