/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Objectcomponent gatesmayredirecttodefaultlot;
   removeoldowner/addnewowner virtuals; update64lotId; spatialindexnotifications;
   recursivelyupdatesattachedslotschildren. OperationisnotonlytwoGUIDstores. Exactgatenamesunknown.
    */

void __thiscall LocationComponent_SetOwningLot(void *this,void *lot)

{
  bool bVar1;
  char cVar2;
  void *pvVar3;
  void *pvVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int aiStack_14 [5];
  
  if (((*(void **)((int)this + 4) != (void *)0x0) &&
      (pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea0fc),
      pvVar3 != (void *)0x0)) && (pvVar3 = (void *)FUN_00c88f20(), lot != pvVar3)) {
    return;
  }
  bVar1 = false;
  if ((*(void **)((int)this + 4) != (void *)0x0) &&
     (pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea138),
     pvVar3 != (void *)0x0)) {
    if ((*(char *)((int)pvVar3 + 0xdc) != '\0') && (pvVar4 = (void *)FUN_00c88f20(), lot != pvVar4))
    {
      return;
    }
    uVar5 = FUN_009521f0((int)pvVar3);
    if (((char)uVar5 != '\0') && (lot != (void *)0x0)) {
      lot = (void *)FUN_00c88f20();
      bVar1 = true;
    }
  }
  piVar6 = (int *)FUN_0068f130(*(int *)((int)this + 4));
  if (lot != piVar6) {
    if (piVar6 != (int *)0x0) {
      iVar9 = piVar6[0x13];
      if ((*(int *)((int)this + 8) != piVar6[0x12]) || (*(int *)((int)this + 0xc) != iVar9)) {
        *(int *)((int)this + 8) = piVar6[0x12];
        *(int *)((int)this + 0xc) = iVar9;
      }
      (**(code **)(*piVar6 + 0x3c))(*(undefined4 *)((int)this + 4),0);
    }
    if (lot != (int *)0x0) {
      (**(code **)(*(int *)lot + 0x30))(*(undefined4 *)((int)this + 4));
    }
  }
  iVar9 = 0;
  iVar8 = 0;
  if ((lot != (int *)0x0) && (iVar7 = (**(code **)(*(int *)lot + 0x40))(), iVar7 == 1)) {
    iVar9 = *(int *)((int)lot + 0x48);
    iVar8 = *(int *)((int)lot + 0x4c);
  }
  if (((*(int *)((int)this + 8) == iVar9) && (*(int *)((int)this + 0xc) == iVar8)) || (bVar1))
  goto LAB_00c8afc6;
  if (*(int *)((int)this + 8) == 0 && *(int *)((int)this + 0xc) == 0) {
    if (iVar9 != 0 || iVar8 != 0) goto LAB_00c8afb5;
  }
  else if ((iVar9 != 0 || iVar8 != 0) || (FUN_00c8a320((int)this), iVar9 != 0 || iVar8 != 0)) {
LAB_00c8afb5:
    FUN_00c8ad40(this,iVar9,iVar8);
  }
  FUN_00c89e90(this,lot);
LAB_00c8afc6:
  if ((*(void **)((int)this + 4) != (void *)0x0) &&
     (pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea114),
     pvVar3 != (void *)0x0)) {
    FUN_00951890(pvVar3,aiStack_14);
    iVar9 = FUN_00950f40(aiStack_14);
    cVar2 = (char)iVar9;
    while (cVar2 != '\0') {
      pvVar3 = (void *)FUN_009503c0((int)aiStack_14);
      if ((pvVar3 != (void *)0x0) &&
         (pvVar3 = Object_GetComponentByMask(pvVar3,DAT_011edf08), pvVar3 != (void *)0x0)) {
        LocationComponent_SetOwningLot(pvVar3,lot);
      }
      iVar9 = FUN_00950f40(aiStack_14);
      cVar2 = (char)iVar9;
    }
  }
  return;
}

