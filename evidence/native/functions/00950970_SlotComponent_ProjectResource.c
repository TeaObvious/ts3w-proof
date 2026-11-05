/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, stack resourcePayload pointer/resetBYTE RET8, void.
   reset true clears keyDWORDs30/34/38/3C, calls950410 thenzeroesbinding40; false skips all that
   cleanup. RetainNEW viaECX virtual0, storepayload44, releaseOLD viaECX virtual4 unlesssamepointer.
   Payload must be nonnull: dereferences+2C withoutguard. Five payloadcounts2C/30/34/38/3C project
   to component08/10/18/20/28, positiveUNSIGNED loops. Names/auxiliary DWORD arrays54/58 use
   category starts40/44/48/4C/50. Each row+4 name,+C pointer into payload60+64*globalordinal,+10
   auxiliaryDWORD. No matrix decomposition/copy here. MEMORY rowstrides18/20/18/18/20.
   Containment+18 gets indexedpayload5C when unsignedversion28>=4, otherwise000C0038; +1C
   constructorzero. Cone+18/+1C use x87 FLD/FSTP float32 pairs frompayload64 (not pure
   integerbitcopies for exceptional floats). Count*stride multiplication then+4cookie saturate
   toFFFFFFFF on overflow, allocationfailuredoesnot rollbackcounts or prevent laterwrites. Some
   inline initializers have signed countdown; no blanket safe-countadmission. For zero count branch,
   existing basepointer is not explicitly overwritten. mappingCount68 rows at6C have28byte
   MEMORYstride; globalordinal chooses category by starts, passes row+4 to9DE4D0 storing POINTER
   atrecord14. Bounds, duplicate-offset policy and sixfloat semantics not checked here. Later
   mapping for same row overwrites that pointer. _resetState DWORD aliases in C are stack-slot reuse
   by loop counters, NOT repeated truncation to byte. Whole binary decoder/atomicfailure policy
   remain separate. */

void __thiscall SlotComponent_ProjectResource(void *this,byte *resourcePayload,byte resetState)

{
  byte *pbVar1;
  byte *pbVar2;
  uint *puVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  void *this_00;
  int iVar9;
  undefined4 uVar10;
  
  pbVar2 = resourcePayload;
                    /* Only the incoming resetBYTE controls cleanup. Later decompiler _resetState
                       DWORD variables are reused physical stack slots. */
  if (resetState != 0) {
    *(undefined4 *)((int)this + 0x30) = 0;
    *(undefined4 *)((int)this + 0x34) = 0;
    *(undefined4 *)((int)this + 0x38) = 0;
    *(undefined4 *)((int)this + 0x3c) = 0;
    SlotComponent_ClearRecordStorage(this);
    *(undefined4 *)((int)this + 0x40) = 0;
  }
  pbVar1 = *(byte **)((int)this + 0x44);
  if (resourcePayload != pbVar1) {
    if (resourcePayload != (byte *)0x0) {
      (*(code *)**(undefined4 **)resourcePayload)(resourcePayload);
    }
    *(byte **)((int)this + 0x44) = resourcePayload;
    if (pbVar1 != (byte *)0x0) {
      (**(code **)(*(int *)pbVar1 + 4))(pbVar1);
    }
  }
  uVar8 = *(uint *)(resourcePayload + 0x2c);
  *(uint *)((int)this + 8) = uVar8;
  if (uVar8 != 0) {
    uVar6 = -(uint)((int)((ulonglong)uVar8 * 0x18 >> 0x20) != 0) | (uint)((ulonglong)uVar8 * 0x18);
    puVar3 = (uint *)FUN_004e4500(-(uint)(0xfffffffb < uVar6) | uVar6 + 4,
                                  "Objects/SlotComponent/RoutingSlots",0,0,0,0);
    if (puVar3 == (uint *)0x0) {
      puVar3 = (uint *)0x0;
    }
    else {
      *puVar3 = uVar8;
      puVar3 = puVar3 + 1;
      _vector_constructor_iterator_(puVar3,0x18,uVar8,(_func_void_ptr_void_ptr *)&LAB_0094fd40);
    }
    *(uint **)((int)this + 0xc) = puVar3;
    pbVar1 = resourcePayload + 0x40;
    resourcePayload = (byte *)0x0;
    if (*(int *)((int)this + 8) != 0) {
      iVar4 = 0;
      iVar7 = *(int *)pbVar1 * 4;
      _resetState = *(int *)pbVar1 << 6;
      do {
        iVar9 = *(int *)(pbVar2 + 0x60) + _resetState;
        _resetState = _resetState + 0x40;
        *(int *)(iVar4 + 0xc + *(int *)((int)this + 0xc)) = iVar9;
        *(undefined4 *)(iVar4 + 4 + *(int *)((int)this + 0xc)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x54));
        *(undefined4 *)(iVar4 + 0x10 + *(int *)((int)this + 0xc)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x58));
        resourcePayload = resourcePayload + 1;
        iVar7 = iVar7 + 4;
        iVar4 = iVar4 + 0x18;
      } while (resourcePayload < *(byte **)((int)this + 8));
    }
  }
  uVar8 = *(uint *)(pbVar2 + 0x30);
  *(uint *)((int)this + 0x10) = uVar8;
  if (uVar8 != 0) {
    uVar6 = -(uint)((int)((ulonglong)uVar8 * 0x20 >> 0x20) != 0) | (uint)((ulonglong)uVar8 * 0x20);
    puVar3 = (uint *)FUN_004e4500(-(uint)(0xfffffffb < uVar6) | uVar6 + 4,
                                  "Objects/SlotComponent/ContainmentSlots",0,0,0,0);
    if (puVar3 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      puVar5 = puVar3 + 1;
      *puVar3 = uVar8;
      puVar3 = puVar5;
      while (uVar8 = uVar8 - 1, -1 < (int)uVar8) {
        puVar3[1] = 0;
        puVar3[2] = 0;
        puVar3[3] = 0;
        puVar3[4] = 0;
        puVar3[5] = 0;
        *puVar3 = (uint)&PTR_LAB_010450e4;
        puVar3[6] = 1;
        puVar3[7] = 0;
        puVar3 = puVar3 + 8;
      }
    }
    *(uint **)((int)this + 0x14) = puVar5;
    _resetState = 0;
    if (*(int *)((int)this + 0x10) != 0) {
      iVar4 = 0;
      iVar7 = *(int *)(pbVar2 + 0x44) * 4;
      resourcePayload = (byte *)(*(int *)(pbVar2 + 0x44) << 6);
      do {
        *(byte **)(iVar4 + 0xc + *(int *)((int)this + 0x14)) =
             resourcePayload + *(int *)(pbVar2 + 0x60);
        *(undefined4 *)(iVar4 + 4 + *(int *)((int)this + 0x14)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x54));
        *(undefined4 *)(iVar4 + 0x10 + *(int *)((int)this + 0x14)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x58));
                    /* Unsigned payload version28 <4 selects immediate000C0038; >=4 selects
                       per-containmentDWORD frompayload5C. */
        if (*(uint *)(pbVar2 + 0x28) < 4) {
          uVar10 = 0xc0038;
        }
        else {
          uVar10 = *(undefined4 *)(*(int *)(pbVar2 + 0x5c) + _resetState * 4);
        }
        resourcePayload = resourcePayload + 0x40;
        *(undefined4 *)(iVar4 + 0x18 + *(int *)((int)this + 0x14)) = uVar10;
        _resetState = _resetState + 1;
        iVar7 = iVar7 + 4;
        iVar4 = iVar4 + 0x20;
      } while (_resetState < *(uint *)((int)this + 0x10));
    }
  }
  uVar8 = *(uint *)(pbVar2 + 0x34);
  *(uint *)((int)this + 0x18) = uVar8;
  if (uVar8 != 0) {
    uVar6 = -(uint)((int)((ulonglong)uVar8 * 0x18 >> 0x20) != 0) | (uint)((ulonglong)uVar8 * 0x18);
    puVar3 = (uint *)FUN_004e4500(-(uint)(0xfffffffb < uVar6) | uVar6 + 4,
                                  "Objects/SlotComponent/FxSlots",0,0,0,0);
    if (puVar3 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      puVar5 = puVar3 + 1;
      *puVar3 = uVar8;
      puVar3 = puVar5;
      while (uVar8 = uVar8 - 1, -1 < (int)uVar8) {
        puVar3[1] = 0;
        puVar3[2] = 0;
        puVar3[3] = 0;
        puVar3[4] = 0;
        puVar3[5] = 0;
        *puVar3 = (uint)&PTR_LAB_01045108;
        puVar3 = puVar3 + 6;
      }
    }
    *(uint **)((int)this + 0x1c) = puVar5;
    resourcePayload = (byte *)0x0;
    if (*(int *)((int)this + 0x18) != 0) {
      iVar4 = 0;
      iVar7 = *(int *)(pbVar2 + 0x48) * 4;
      _resetState = *(int *)(pbVar2 + 0x48) << 6;
      do {
        iVar9 = *(int *)(pbVar2 + 0x60) + _resetState;
        _resetState = _resetState + 0x40;
        *(int *)(iVar4 + 0xc + *(int *)((int)this + 0x1c)) = iVar9;
        *(undefined4 *)(iVar4 + 4 + *(int *)((int)this + 0x1c)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x54));
        *(undefined4 *)(iVar4 + 0x10 + *(int *)((int)this + 0x1c)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x58));
        resourcePayload = resourcePayload + 1;
        iVar7 = iVar7 + 4;
        iVar4 = iVar4 + 0x18;
      } while (resourcePayload < *(byte **)((int)this + 0x18));
    }
  }
  uVar8 = *(uint *)(pbVar2 + 0x38);
  *(uint *)((int)this + 0x20) = uVar8;
  if (uVar8 != 0) {
    uVar6 = -(uint)((int)((ulonglong)uVar8 * 0x18 >> 0x20) != 0) | (uint)((ulonglong)uVar8 * 0x18);
    puVar3 = (uint *)FUN_004e4500(-(uint)(0xfffffffb < uVar6) | uVar6 + 4,
                                  "Objects/SlotComponent/TargetSlots",0,0,0,0);
    if (puVar3 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      puVar5 = puVar3 + 1;
      *puVar3 = uVar8;
      puVar3 = puVar5;
      while (uVar8 = uVar8 - 1, -1 < (int)uVar8) {
        puVar3[1] = 0;
        puVar3[2] = 0;
        puVar3[3] = 0;
        puVar3[4] = 0;
        puVar3[5] = 0;
        *puVar3 = (uint)&PTR_LAB_0104512c;
        puVar3 = puVar3 + 6;
      }
    }
    *(uint **)((int)this + 0x24) = puVar5;
    resourcePayload = (byte *)0x0;
    if (*(int *)((int)this + 0x20) != 0) {
      iVar4 = 0;
      iVar7 = *(int *)(pbVar2 + 0x4c) * 4;
      _resetState = *(int *)(pbVar2 + 0x4c) << 6;
      do {
        iVar9 = *(int *)(pbVar2 + 0x60) + _resetState;
        _resetState = _resetState + 0x40;
        *(int *)(iVar4 + 0xc + *(int *)((int)this + 0x24)) = iVar9;
        *(undefined4 *)(iVar4 + 4 + *(int *)((int)this + 0x24)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x54));
        *(undefined4 *)(iVar4 + 0x10 + *(int *)((int)this + 0x24)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x58));
        resourcePayload = resourcePayload + 1;
        iVar7 = iVar7 + 4;
        iVar4 = iVar4 + 0x18;
      } while (resourcePayload < *(byte **)((int)this + 0x20));
    }
  }
  uVar8 = *(uint *)(pbVar2 + 0x3c);
  *(uint *)((int)this + 0x28) = uVar8;
  if (uVar8 != 0) {
    uVar6 = -(uint)((int)((ulonglong)uVar8 * 0x20 >> 0x20) != 0) | (uint)((ulonglong)uVar8 * 0x20);
    puVar3 = (uint *)FUN_004e4500(-(uint)(0xfffffffb < uVar6) | uVar6 + 4,
                                  "Objects/SlotComponent/ConeSlots",0,0,0,0);
    if (puVar3 == (uint *)0x0) {
      puVar5 = (uint *)0x0;
    }
    else {
      puVar5 = puVar3 + 1;
      *puVar3 = uVar8;
      puVar3 = puVar5;
      while (uVar8 = uVar8 - 1, -1 < (int)uVar8) {
        puVar3[1] = 0;
        puVar3[2] = 0;
        puVar3[3] = 0;
        puVar3[4] = 0;
        puVar3[5] = 0;
        *puVar3 = (uint)&PTR_LAB_01045150;
        puVar3 = puVar3 + 8;
      }
    }
    uVar8 = 0;
    *(uint **)((int)this + 0x2c) = puVar5;
    if (*(int *)((int)this + 0x28) != 0) {
      iVar4 = 0;
      iVar7 = *(int *)(pbVar2 + 0x50) * 4;
      _resetState = *(int *)(pbVar2 + 0x50) << 6;
      do {
        *(uint *)(iVar4 + 0xc + *(int *)((int)this + 0x2c)) = *(int *)(pbVar2 + 0x60) + _resetState;
        _resetState = _resetState + 0x40;
        *(undefined4 *)(iVar4 + 4 + *(int *)((int)this + 0x2c)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x54));
        *(undefined4 *)(iVar4 + 0x10 + *(int *)((int)this + 0x2c)) =
             *(undefined4 *)(iVar7 + *(int *)(pbVar2 + 0x58));
                    /* x87 FLD/FSTP pair per cone float32, not an integer MOV; do not infer
                       arbitrary NaN bit-preserving copy. */
        *(undefined4 *)(iVar4 + 0x18 + *(int *)((int)this + 0x2c)) =
             *(undefined4 *)(*(int *)(pbVar2 + 100) + uVar8 * 8);
        *(undefined4 *)(iVar4 + 0x1c + *(int *)((int)this + 0x2c)) =
             *(undefined4 *)(*(int *)(pbVar2 + 100) + 4 + uVar8 * 8);
        uVar8 = uVar8 + 1;
        iVar7 = iVar7 + 4;
        iVar4 = iVar4 + 0x20;
      } while (uVar8 < *(uint *)((int)this + 0x28));
    }
  }
  resourcePayload = *(byte **)(pbVar2 + 0x68);
  if (resourcePayload != (byte *)0x0) {
    _resetState = 0;
    do {
      uVar8 = *(uint *)(*(int *)(pbVar2 + 0x6c) + _resetState);
      if (uVar8 < *(uint *)(pbVar2 + 0x44)) {
        this_00 = (void *)(*(int *)((int)this + 0xc) + (uVar8 - *(int *)(pbVar2 + 0x40)) * 0x18);
      }
      else if (uVar8 < *(uint *)(pbVar2 + 0x48)) {
        this_00 = (void *)((uVar8 - *(uint *)(pbVar2 + 0x44)) * 0x20 + *(int *)((int)this + 0x14));
      }
      else if (uVar8 < *(uint *)(pbVar2 + 0x4c)) {
        this_00 = (void *)(*(int *)((int)this + 0x1c) + (uVar8 - *(uint *)(pbVar2 + 0x48)) * 0x18);
      }
      else if (uVar8 < *(uint *)(pbVar2 + 0x50)) {
        this_00 = (void *)(*(int *)((int)this + 0x24) + (uVar8 - *(uint *)(pbVar2 + 0x4c)) * 0x18);
      }
      else {
        this_00 = (void *)((uVar8 - *(uint *)(pbVar2 + 0x50)) * 0x20 + *(int *)((int)this + 0x2c));
      }
                    /* Generic [this+14] DWORD setter receives mappingrow+4 pointer; duplicate row
                       mappings overwrite pointer in original order. */
      RecordField14_StoreDword(this_00,*(int *)(pbVar2 + 0x6c) + _resetState + 4);
      _resetState = _resetState + 0x1c;
      resourcePayload = resourcePayload + -1;
    } while (resourcePayload != (byte *)0x0);
  }
  return;
}

