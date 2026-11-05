/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* PC 1.67 WinDialog mouse-move handler; analyst name inferred from matching vtable slots and state
   flow, not a recovered symbol. ECX is the complete dialog object; RET 0x0c consumes three stack
   DWORDs, while the existing decompiler prototype is incomplete. If capture-service slot +0x60(1)
   equals this+4, read current pointer via +0x48, convert through parent IWindow slot +0xc8 and
   update a local four-float area using component DWORD +0x25c and press offsets +0x260/+0x264.
   Components 0/1 move at fixed size; 2..9 resize against float limits. Otherwise pick a component
   for cursor selection. All paths call IWindow +0x90 and return AL=1. Indirect callees may have
   further effects; this annotation does not establish event parameter types or upstream dispatch.
    */

undefined4 __thiscall WinDialog_OnMouseMove(void *this,float param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  float unaff_ESI;
  float unaff_EDI;
  float fVar5;
  float *pfVar6;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_18;
  
  if (this == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)this + 4;
  }
  fStack_24 = 1.4013e-45;
  fStack_28 = 7.530911e-39;
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))();
  if (iVar1 == iVar2) {
    iVar2 = *(int *)(*(int *)((int)this + 0x2c) + 4);
    (**(code **)(**(int **)((int)this + 0x30) + 0x48))(&fStack_2c);
    (**(code **)(iVar2 + 200))(&stack0xffffffe0);
    switch(*(undefined4 *)((int)this + 0x25c)) {
    case 0:
    case 1:
      fStack_24 = fStack_2c - *(float *)((int)this + 0x260);
      break;
    case 2:
      fStack_24 = fStack_2c - *(float *)((int)this + 0x260);
      if (unaff_ESI - fStack_24 < *(float *)((int)this + 0x35c)) {
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x35c);
      }
      if (*(float *)((int)this + 0x354) < unaff_ESI - fStack_24) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x354);
        goto LAB_005206ee;
      }
      break;
    case 3:
      fStack_2c = *(float *)((int)this + 0x260) + fStack_2c;
      if (fStack_2c - fStack_24 < *(float *)((int)this + 0x35c)) {
        fStack_2c = *(float *)((int)this + 0x35c) + fStack_24;
      }
      if (*(float *)((int)this + 0x354) < fStack_2c - fStack_24) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        goto LAB_005206ee;
      }
      break;
    case 4:
      fVar5 = fStack_28 - *(float *)((int)this + 0x264);
      if (fStack_18 - fVar5 < *(float *)((int)this + 0x360)) {
        fVar5 = fStack_18 - *(float *)((int)this + 0x360);
      }
      if (*(float *)((int)this + 0x358) < fStack_18 - fVar5) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        goto LAB_005206ee;
      }
      break;
    case 5:
      fVar5 = *(float *)((int)this + 0x264) + fStack_28;
      if (fVar5 - unaff_EDI < *(float *)((int)this + 0x360)) {
        fVar5 = *(float *)((int)this + 0x360) + unaff_EDI;
      }
      if (*(float *)((int)this + 0x358) < fVar5 - unaff_EDI) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        goto LAB_005206ee;
      }
      break;
    case 6:
      fStack_24 = fStack_2c - *(float *)((int)this + 0x260);
      fVar5 = fStack_28 - *(float *)((int)this + 0x264);
      if (unaff_ESI - fStack_24 < *(float *)((int)this + 0x35c)) {
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x35c);
      }
      if (fStack_18 - fVar5 < *(float *)((int)this + 0x360)) {
        fVar5 = fStack_18 - *(float *)((int)this + 0x360);
      }
      if (*(float *)((int)this + 0x354) < unaff_ESI - fStack_24) {
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x354);
      }
      if (*(float *)((int)this + 0x358) < fStack_18 - fVar5) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        goto LAB_005206ee;
      }
      break;
    case 7:
      fVar5 = fStack_28 - *(float *)((int)this + 0x264);
      if (fStack_18 - fVar5 < *(float *)((int)this + 0x360)) {
        fVar5 = fStack_18 - *(float *)((int)this + 0x360);
      }
      if (*(float *)((int)this + 0x358) < fStack_18 - fVar5) {
        pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
        pfVar6 = &fStack_24;
        goto LAB_005206ee;
      }
      break;
    case 8:
      fStack_24 = fStack_2c - *(float *)((int)this + 0x260);
      if (unaff_ESI - fStack_24 < *(float *)((int)this + 0x35c)) {
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x35c);
      }
      if (*(float *)((int)this + 0x354) < unaff_ESI - fStack_24) {
        fStack_24 = unaff_ESI - *(float *)((int)this + 0x354);
      }
      break;
    case 9:
    }
    pcVar4 = *(code **)(*(int *)((int)this + 4) + 100);
    pfVar6 = &fStack_24;
  }
  else {
    fStack_28 = 7.53286e-39;
    iVar2 = (**(code **)(*(int *)((int)this + 4) + 0x24))();
    if ((iVar2 != 0) && (0xc < iVar2 - 0x1001U)) goto LAB_005206f2;
    fStack_28 = param_1;
    uVar3 = (**(code **)(*(int *)this + 0xa4))();
    switch(uVar3) {
    case 2:
    case 3:
      pfVar6 = (float *)0x1009;
      break;
    case 4:
    case 5:
      pfVar6 = (float *)0x1008;
      break;
    case 6:
    case 9:
      pfVar6 = (float *)0x100a;
      break;
    case 7:
    case 8:
      pfVar6 = (float *)0x100b;
      break;
    default:
      pfVar6 = (float *)0x1002;
    }
    pcVar4 = *(code **)(*(int *)((int)this + 4) + 0x70);
  }
LAB_005206ee:
  (*pcVar4)(pfVar6);
LAB_005206f2:
  fStack_28 = 7.533019e-39;
  uVar3 = (**(code **)(*(int *)((int)this + 4) + 0x90))();
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

