/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete body: same owner/Animation rig-resource gate and swap-last collection as94D390.
   Every nonnull entry first calls existing SACS_AdvanceDirtyWalkers8040D0, then reads driver+4
   and800260 AL. On removal write-last/end-decrement/reload before virtual release; recheck same
   position. Incoming calls include manager7FD0E3 and other object-update paths. No equivalence to
   authored released-list sweep/tick order established.
   
   PC1.67 witness consumer boundary: driver collection belongs to actualobjectSACScomponent.
   Requires host/Animation rig-resource gate, advancesdirtywalkers then collectsonnative
   refcount1/quiescence; swaplast/decrement/reload precederelease. Hostreleased-driver list uses
   separate incarnationwitness toavoidcrossobject retention, but its whole sweep/order/timing
   isnotprovedequivalent bythisguard correction. */

void __fastcall SACS_ComponentAdvanceAndCollectDrivers_94D410(int param_1)

{
  void *pvVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  if (((*(void **)(param_1 + 4) != (void *)0x0) &&
      (pvVar1 = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011dd484),
      pvVar1 != (void *)0x0)) &&
     (iVar2 = (**(code **)(*(int *)((int)pvVar1 + 8) + 0x20))(), iVar2 != 0)) {
    puVar4 = *(undefined4 **)(param_1 + 8);
    puVar5 = *(undefined4 **)(param_1 + 0xc);
    if (puVar4 != puVar5) {
      do {
        pvVar1 = (void *)*puVar4;
        if (((pvVar1 == (void *)0x0) ||
            (SACS_AdvanceDirtyWalkers(pvVar1), *(int *)((int)pvVar1 + 4) != 1)) ||
           (uVar3 = SACS_DriverIsQuiescentAL_800260((int)pvVar1), (char)uVar3 == '\0')) {
          puVar4 = puVar4 + 1;
        }
        else {
          *puVar4 = *(undefined4 *)(*(int *)(param_1 + 0xc) + -4);
          *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + -4;
          puVar5 = *(undefined4 **)(param_1 + 0xc);
          (**(code **)(*(int *)((int)pvVar1 + 8) + 4))();
        }
      } while (puVar4 != puVar5);
    }
  }
  return;
}

