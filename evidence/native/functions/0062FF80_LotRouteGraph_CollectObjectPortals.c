/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst: original PC 1.67 portal contract. Owner-lot graph portal collection filtered by both
   objectGUID words; appends retained portal refs to output vector for cost/mask/removal/dedup
   consumers.
   
   PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX routing manager;
   lot pointer, packed identity two DWORDs, output pointer-vector; RET0x10. Requires nonnull lot
   and00629360 admission. Walks stored record+44..48 portal references; compares portal+8/+C with
   both identity words, appends matches in existing order and calls retain virtual for nonnull
   references. Release-child internals and rebuilt portal ordering remain separate. Complete actual
   C/Listing and pristine PE support the selected observations.
   Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain unchanged; current
   managed resource/cache policy is preserved. */

void __thiscall
LotRouteGraph_CollectObjectPortals(void *this,void *lot,ulonglong objectId,void *outVector)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  int *piVar6;
  uint local_8;
  undefined4 local_4;
  
  if ((lot != (void *)0x0) &&
     (uVar4 = LotRouting_HasAdmittedLotRecord
                        (this,*(uint *)((int)lot + 0x48),*(uint *)((int)lot + 0x4c)),
     (char)uVar4 != '\0')) {
    local_4 = *(undefined4 *)((int)lot + 0x4c);
    local_8 = *(uint *)((int)lot + 0x48);
    iVar5 = FUN_0062f2d0((void *)((int)this + 0x48),&local_8);
    piVar1 = *(int **)(iVar5 + 0x48);
    for (piVar6 = *(int **)(iVar5 + 0x44); piVar6 != piVar1; piVar6 = piVar6 + 1) {
      if ((*(int *)(*piVar6 + 8) == (int)objectId) && (*(int *)(*piVar6 + 0xc) == objectId._4_4_)) {
        piVar2 = *(int **)((int)outVector + 4);
        if (piVar2 < *(int **)((int)outVector + 8)) {
          *(int **)((int)outVector + 4) = piVar2 + 1;
          if (piVar2 != (int *)0x0) {
            puVar3 = (undefined4 *)*piVar6;
            *piVar2 = (int)puVar3;
            if (puVar3 != (undefined4 *)0x0) {
              (**(code **)*puVar3)();
            }
          }
        }
        else {
          FUN_00c65ad0(outVector,piVar2,piVar6);
        }
      }
    }
  }
  return;
}

