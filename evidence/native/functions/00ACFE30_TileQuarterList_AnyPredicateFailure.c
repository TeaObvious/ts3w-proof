/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl3DWORDs context/vector/predicate; lowALBoolean only.
   Visits4bytepacked quarterentries in vector order, calls predicate(context,entry), returnsAL1
   onfirst nonzeroAL andAL0 if none/empty. Caller owns vector lifetime; no deduplication or parallel
   evaluation. CallbackAD0B00 uses EAX0flat/1failure, opposite of a host IsFlat predicate. */

uint __cdecl TileQuarterList_AnyPredicateFailure(undefined4 param_1,int *param_2,undefined *param_3)

{
  uint in_EAX;
  uint uVar1;
  uint uVar2;
  
  uVar1 = 0;
  uVar2 = param_2[1] - *param_2 >> 2;
  if (uVar2 != 0) {
    do {
      in_EAX = (*(code *)param_3)(param_1,*param_2 + uVar1 * 4);
      if ((char)in_EAX != '\0') {
        return CONCAT31((int3)(in_EAX >> 8),1);
      }
      uVar1 = uVar1 + 1;
    } while (uVar1 < uVar2);
  }
  return in_EAX & 0xffffff00;
}

