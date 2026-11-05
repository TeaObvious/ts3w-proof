/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Explicitlotuseddirectly;
   elseifglobalregistryandowner/Transformavailable, usesworld XYZandhalf-open XZ bounds tofindlot,
   rejectsselected default lot identity and falls back to registry default.
   Delegatesactualownershipto00c8aea0. */

void __thiscall LocationComponent_ResolveAndSetOwningLot(void *this,void *lot)

{
  void *this_00;
  void *this_01;
  float local_40;
  undefined4 uStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  this_00 = DAT_011edbc4;
  if ((lot == (void *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
    if (*(void **)((int)this + 4) == (void *)0x0) {
      return;
    }
    this_01 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158);
    if (this_01 == (void *)0x0) {
      return;
    }
    TransformComponent_GetWorldPosition(this_01,&local_40);
    local_30 = local_40;
    uStack_2c = uStack_3c;
    fStack_28 = fStack_38;
    uStack_24 = uStack_34;
    local_20 = local_40;
    uStack_1c = uStack_3c;
    fStack_18 = fStack_38;
    uStack_14 = uStack_34;
    if ((((*(float *)((int)this_00 + 0xb4) <= local_40) &&
         (*(float *)((int)this_00 + 0xb8) <= fStack_38)) &&
        (local_40 < *(float *)((int)this_00 + 0xbc))) &&
       (fStack_38 < *(float *)((int)this_00 + 0xc4) + *(float *)((int)this_00 + 0xc0))) {
      lot = LotSpatialIndex_FindContainingLotAtWorldXZ(this_00,local_40,fStack_38);
      if ((lot != (void *)0x0) &&
         ((*(int *)((int)lot + 0x48) != *(int *)(*(int *)((int)this_00 + 0xb0) + 0x48) ||
          (*(int *)((int)lot + 0x4c) != *(int *)(*(int *)((int)this_00 + 0xb0) + 0x4c)))))
      goto LAB_00c8b192;
    }
    lot = *(void **)((int)this_00 + 0xb0);
  }
LAB_00c8b192:
  LocationComponent_SetOwningLot(this,lot);
  return;
}

