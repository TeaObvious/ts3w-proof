/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst description; PC 1.67. Copy the source key header into the destination resource and branch
   on source type 0x2F7D0004. Image path consumes the existing decoded image service, caps each
   dimension at decimal 10, writes row-major 32-bit colors with stride decimal 10 and opaque alpha,
   and calls helper 0x00444160 for three component bytes; their precise channel meaning and
   codec/provider internals remain unverified. Other-type path obtains source virtual + 0x18 stream:
   null goes directly to final virtual + 0x20 and AL = 1, without the UInt32 read. A nonnull stream
   constructs reader with literal order 1, requests decimal 100 words at destination + 0x28 and
   returns AL = 0 on failed accumulated status. Source virtual + 0x20 is called on the local
   completion paths. Actual RET 0x10 consumes four stack DWORD slots, despite the inferred
   two-parameter prototype; AL is status, upper EAX unspecified. No current-host null-to-PNG/failure
   equivalence is claimed. */

uint ColorPickerSwatches_ReadResource(int *param_1,uint param_2)

{
  char cVar1;
  undefined4 *puVar2;
  int *this;
  int *piVar3;
  uint uVar4;
  uint extraout_EAX;
  undefined4 uVar5;
  uint *puVar6;
  uint uVar7;
  uint uVar8;
  void *pvVar9;
  int *piVar10;
  byte bStack_26;
  byte bStack_25;
  uint uStack_24;
  uint uStack_20;
  uint *apuStack_1c [2];
  int *piStack_14;
  uint uStack_c;
  char cStack_8;
  
  puVar2 = (undefined4 *)(**(code **)(*param_1 + 0x10))();
  uVar4 = param_2;
  *(undefined4 *)(param_2 + 8) = *puVar2;
  *(undefined4 *)(param_2 + 0xc) = puVar2[1];
  *(undefined4 *)(param_2 + 0x10) = puVar2[2];
  *(undefined4 *)(param_2 + 0x14) = puVar2[3];
  if (puVar2[2] == 0x2f7d0004) {
    puVar2 = (undefined4 *)FUN_00444060(0x30);
    if (puVar2 == (undefined4 *)0x0) {
      this = (int *)0x0;
    }
    else {
      this = (int *)FUN_004446f0(puVar2);
    }
    pvVar9 = (void *)0x32;
    piVar10 = this;
    piVar3 = (int *)(**(code **)(*param_1 + 0x18))(0x32,this,10);
    cVar1 = FUN_004460e0(piVar3,pvVar9,piVar10);
    if (cVar1 == '\0') {
      if (this != (int *)0x0) {
        (**(code **)*this)(1);
      }
      uVar4 = (**(code **)(*param_1 + 0x20))();
      return uVar4 & 0xffffff00;
    }
    uStack_24 = this[6];
    uStack_20 = this[7];
    if (10 < uStack_24) {
      uStack_24 = 10;
    }
    if (10 < uStack_20) {
      uStack_20 = 10;
    }
    uVar7 = 0;
    puVar6 = (uint *)(uVar4 + 0x28);
    uVar4 = uStack_20;
    if (uStack_20 != 0) {
      do {
        uVar8 = 0;
        apuStack_1c[0] = puVar6;
        if (uStack_24 != 0) {
          do {
            uVar4 = (**(code **)(*this + 0x30))(uVar8,uVar7);
            FUN_00444160(this,uVar4,(undefined1 *)&param_2,&bStack_26,&bStack_25);
            *puVar6 = ((param_2 & 0xff | 0xffffff00) << 8 | (uint)bStack_26) << 8 | (uint)bStack_25;
            uVar8 = uVar8 + 1;
            puVar6 = puVar6 + 1;
            uVar4 = uStack_20;
          } while (uVar8 < uStack_24);
        }
        uVar7 = uVar7 + 1;
        puVar6 = apuStack_1c[0] + 10;
        apuStack_1c[0] = puVar6;
      } while (uVar7 < uVar4);
    }
    (**(code **)*this)(1);
  }
  else {
    pvVar9 = (void *)(**(code **)(*param_1 + 0x18))();
    if (pvVar9 != (void *)0x0) {
      StreamReader_Construct(apuStack_1c,pvVar9,1);
      uVar5 = Stream_ReadUInt32ArrayByByteOrder(piStack_14,(uint *)(uVar4 + 0x28),100,uStack_c);
      StreamReader_AccumulateStatus(apuStack_1c,(byte)uVar5);
      if (cStack_8 == '\0') {
        (**(code **)(*param_1 + 0x20))();
        StreamReader_ReleaseAuxiliary(apuStack_1c);
        return extraout_EAX & 0xffffff00;
      }
      StreamReader_ReleaseAuxiliary(apuStack_1c);
    }
  }
  uVar5 = (**(code **)(*param_1 + 0x20))();
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

