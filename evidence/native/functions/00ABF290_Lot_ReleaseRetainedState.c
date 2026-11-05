/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction visual evidence/lifetime comparison): Analyst lot cleanup role
   proven by direct AC1020 consumer and matching AC0B60 lot vtable/field layout, not a recovered C++
   symbol. ECX lot plus one physical DWORD releaseFlags, RET4; no defined return value. Preserve
   full passthrough stackword: ABF566 loads DWORD[ESP+30], ABF56A pushes it to C718B0; original
   AC1020 supplies1. No Boolean normalization or guessed bitmask meaning. If+364 nonzero,
   prepare/submit remote callback ABA970 through7D9B10 before later cleanup; completion/target
   lifetime is unresolved, not assumed synchronous. Independently release+ A4 auxiliary allocation
   if present. Guard byte+74 gates object event0C loop, selected manager/interface releases,
   C0/C1/C2 zeroing, collision structure/object cleanup and C718B0 base cleanup. Clear+74 and
   release selected+2DC/+428/+42C state after that branch. Preserve exact null guards,
   reference-count/virtual dispatch and freeing order; virtual implementations and all GPU
   retirement semantics remain payload/service-defined. C2 reset is real lot lifecycle evidence, not
   a complete ready producer or proof of current receipt-based visual admission. Shared
   getter/offset in unrelated classes is not a lot producer. Original callbacks with legacy
   no-op/Animation helper labels do not establish animation semantics. */

void __thiscall Lot_ReleaseRetainedState(void *this,uint releaseFlags)

{
  undefined4 *puVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  uint uVar7;
  uint uVar8;
  undefined **local_18;
  undefined4 local_14;
  void *local_c;
  code *local_8;
  undefined4 local_4;
  
  uVar8 = 0;
  if (*(int *)((int)this + 0x364) != 0) {
    LOCK();
    local_14 = 0;
    UNLOCK();
    local_4 = 0;
    local_18 = &PTR_FUN_0102a11c;
    local_8 = FUN_00aba970;
    local_c = this;
    FUN_007d9b10(&local_18,'\0');
    local_18 = &PTR_LAB_00fa2b80;
  }
  if (*(int **)((int)this + 0xa4) != (int *)0x0) {
    FUN_00688c50(*(int **)((int)this + 0xa4),*(undefined4 *)((int)this + 0xa8),
                 *(int *)((int)this + 0xac),*(uint *)((int)this + 0xb0),
                 *(undefined4 *)((int)this + 0xb4));
    *(undefined4 *)((int)this + 0xa4) = 0;
  }
  if (*(char *)((int)this + 0x74) != '\0') {
    if (*(int *)((int)this + 0x2b4) != 0) {
      FUN_00b175b0(*(int *)((int)this + 0x2b4));
    }
    if (*(int *)((int)this + 0x2b8) != 0) {
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
    }
    puVar1 = *(undefined4 **)((int)this + 0x18);
    for (puVar6 = *(undefined4 **)((int)this + 0x14); puVar6 != puVar1; puVar6 = puVar6 + 1) {
      ObjectEvents_Dispatch(0xc,(void *)*puVar6,(void *)0x0);
    }
    if (*(undefined4 **)((int)this + 0x2d0) != (undefined4 *)0x0) {
      (**(code **)**(undefined4 **)((int)this + 0x2d0))(1);
      *(undefined4 *)((int)this + 0x2d0) = 0;
    }
    puVar6 = *(undefined4 **)((int)this + 0x2e8);
    if (puVar6 != (undefined4 *)0x0) {
      piVar2 = puVar6 + 1;
      *(undefined4 *)((int)this + 0x2e8) = 0;
      LOCK();
      iVar5 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar5 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar6)(1);
      }
    }
    puVar6 = *(undefined4 **)((int)this + 0x318);
    if (puVar6 != (undefined4 *)0x0) {
      piVar2 = puVar6 + 1;
      *(undefined4 *)((int)this + 0x318) = 0;
      LOCK();
      iVar5 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar5 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar6)(1);
      }
    }
    puVar6 = *(undefined4 **)((int)this + 0x31c);
    if (puVar6 != (undefined4 *)0x0) {
      piVar2 = puVar6 + 1;
      *(undefined4 *)((int)this + 0x31c) = 0;
      LOCK();
      iVar5 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar5 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar6)(1);
      }
    }
    FUN_00abe6d0((int)this);
    if (*(char **)((int)this + 0x290) != (char *)0x0) {
      FUN_00a8ddc0(*(char **)((int)this + 0x290));
      pvVar3 = *(void **)((int)this + 0x290);
      if (pvVar3 != (void *)0x0) {
        FUN_00a90ef0((int)pvVar3);
        Memory_FreeIfNonNull(pvVar3);
      }
      *(undefined4 *)((int)this + 0x290) = 0;
    }
    *(undefined1 *)((int)this + 0xc0) = 0;
    *(undefined1 *)((int)this + 0xc1) = 0;
    *(undefined1 *)((int)this + 0xc2) = 0;
    pvVar3 = (void *)CollisionService_GetGlobal();
    if (pvVar3 != (void *)0x0) {
      uVar7 = ((*(int *)((int)this + 0x394) - *(int *)((int)this + 900) >> 2) + -1) * 0x40 +
              (*(int *)((int)this + 0x388) - *(int *)((int)this + 0x38c) >> 2) +
              (*(int *)((int)this + 0x380) - *(int *)((int)this + 0x378) >> 2);
      if (uVar7 != 0) {
        do {
          iVar4 = (*(int *)((int)this + 0x378) - *(int *)((int)this + 0x37c) >> 2) + uVar8;
          iVar5 = iVar4 + 0x1000000;
          iVar5 = ((int)(iVar5 + (iVar5 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
          if (*(int *)(*(int *)(*(int *)((int)this + 900) + iVar5 * 4) + (iVar4 + iVar5 * -0x40) * 4
                      ) != 0) {
            iVar4 = (*(int *)((int)this + 0x378) - *(int *)((int)this + 0x37c) >> 2) + uVar8;
            iVar5 = iVar4 + 0x1000000;
            iVar5 = ((int)(iVar5 + (iVar5 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
            FUN_00686ef0(pvVar3,*(int **)(*(int *)(*(int *)((int)this + 900) + iVar5 * 4) +
                                         (iVar4 + iVar5 * -0x40) * 4));
          }
          uVar8 = uVar8 + 1;
        } while (uVar8 < uVar7);
      }
      FUN_00ab41f0((int)this + 0x370);
      if (*(int **)((int)this + 0x36c) != (int *)0x0) {
        FUN_00686ef0(pvVar3,*(int **)((int)this + 0x36c));
      }
      piVar2 = *(int **)((int)this + 0x36c);
      if (piVar2 != (int *)0x0) {
        *(undefined4 *)((int)this + 0x36c) = 0;
        (**(code **)(*piVar2 + 8))();
      }
    }
    FUN_00c718b0(this,(char)releaseFlags);
  }
  pvVar3 = *(void **)((int)this + 0x2dc);
  *(undefined1 *)((int)this + 0x74) = 0;
  if (pvVar3 != (void *)0x0) {
    FUN_00b305a0(*(int *)((int)pvVar3 + 4),*(uint *)((int)pvVar3 + 8));
    *(undefined4 *)((int)pvVar3 + 0xc) = 0;
    if (1 < *(uint *)((int)pvVar3 + 8)) {
      Memory_FreeIfNonNull(*(void **)((int)pvVar3 + 4));
    }
    Memory_FreeIfNonNull(pvVar3);
  }
  *(undefined4 *)((int)this + 0x2dc) = 0;
  puVar6 = *(undefined4 **)((int)this + 0x428);
  if (puVar6 != (undefined4 *)0x0) {
    *(undefined4 *)((int)this + 0x428) = 0;
    iVar5 = puVar6[1];
    puVar6[1] = iVar5 + -1;
    if (iVar5 + -1 == 0) {
      puVar6[1] = 1;
      (**(code **)*puVar6)(1);
    }
  }
  puVar6 = *(undefined4 **)((int)this + 0x42c);
  if (puVar6 != (undefined4 *)0x0) {
    *(undefined4 *)((int)this + 0x42c) = 0;
    iVar5 = puVar6[1];
    puVar6[1] = iVar5 + -1;
    if (iVar5 + -1 == 0) {
      puVar6[1] = 1;
      (**(code **)*puVar6)(1);
    }
  }
  return;
}

