/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Selected native cache writer iterates cached outfit owners,
   retains referenced entries OR all when its filtering byte is clear, emits chunks of125
   starting342779A7:0:30001 with version8/count, reference handle and cached-record writer005E8920.
   The count125 is physical immediate7D, not an inferred UI limit. Generated compositor
   inventory/step pool and reference-store persistence have separate writers. Decompiler merged
   receiver/stack aliases remain unresolved at those type boundaries. */

undefined4 __thiscall SimService_WriteOutfitCacheChunks(void *this,void *param_1,void *param_2)

{
  int *piVar1;
  int iVar2;
  void *this_00;
  bool bVar3;
  byte bVar4;
  char cVar5;
  undefined3 extraout_var;
  void *extraout_EAX;
  void *extraout_EAX_00;
  uint extraout_EAX_01;
  int *piVar7;
  uint uVar8;
  int *piVar9;
  void *pvVar10;
  uint uVar11;
  uint local_28;
  void *local_24;
  void *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  int *local_10;
  int *local_c;
  int *local_8;
  char *local_4;
  void *pvVar6;
  
  this_00 = param_1;
  piVar9 = *(int **)((int)this + 0xd8);
  pvVar10 = (void *)*piVar9;
  piVar7 = (int *)0x0;
  local_10 = (int *)0x0;
  local_c = (int *)0x0;
  local_8 = (int *)0x0;
  local_4 = "CAS/SimService/CachedBuilds";
  if (pvVar10 == (void *)0x0) {
    piVar9 = piVar9 + 1;
    iVar2 = *piVar9;
    while (iVar2 == 0) {
      piVar9 = piVar9 + 1;
      iVar2 = *piVar9;
    }
    pvVar10 = (void *)*piVar9;
  }
  pvVar6 = *(void **)(*(int *)((int)this + 0xd8) + *(int *)((int)this + 0xdc) * 4);
  local_28 = 0;
  local_20 = pvVar6;
  if (pvVar10 != pvVar6) {
    do {
      if ((*(int *)((int)pvVar10 + 0x14) != 0) || (*(char *)((int)this + 0x130) == '\0')) {
        local_24 = *(void **)((int)pvVar10 + 0x10);
        if (piVar7 < local_8) {
          local_c = piVar7 + 1;
          if (piVar7 != (int *)0x0) {
            *piVar7 = (int)local_24;
          }
        }
        else {
          FUN_00982420(&local_10,piVar7,&local_24);
        }
        local_28 = local_28 + 1;
        pvVar6 = local_20;
        piVar7 = local_c;
      }
      pvVar10 = *(void **)((int)pvVar10 + 0x18);
      while (pvVar10 == (void *)0x0) {
        piVar1 = piVar9 + 1;
        piVar9 = piVar9 + 1;
        pvVar10 = (void *)*piVar1;
      }
    } while (pvVar10 != pvVar6);
  }
  uVar8 = 0;
  if (local_10 != piVar7) {
    param_1 = (void *)0x30001;
    piVar9 = local_10;
    do {
      local_24 = (void *)*piVar9;
      if (uVar8 == (uVar8 / 0x7d) * 0x7d) {
        if (*(int *)((int)this_00 + 8) != 0) {
          ResourceStreamContext_Close(this_00);
        }
        local_20 = param_1;
        local_1c = 0;
        local_18 = 0x342779a7;
        local_14 = 0;
        bVar3 = ResourceStreamContext_OpenWrite(this_00,&local_20,1);
        if (!bVar3) goto LAB_005f00e9;
        bVar4 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),8,*(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar4);
        uVar11 = local_28;
        if (0x7c < local_28) {
          uVar11 = 0x7d;
        }
        bVar4 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),uVar11,
                                   *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar4);
        local_28 = local_28 - uVar11;
        param_1 = (void *)((int)param_1 + 1);
      }
      uVar11 = ResourceReferences_RegisterKey(param_2,(uint *)((int)local_24 + 8),0);
      FUN_007d6500(param_2,this_00,uVar11);
      cVar5 = SimOutfit_WriteCachedRecord(local_24,this_00,param_2);
      pvVar6 = (void *)CONCAT31(extraout_var,cVar5);
      if (cVar5 == '\0') {
LAB_005f00e9:
        uVar8 = 0;
        if (local_10 != (int *)0x0) {
          Memory_FreeIfNonNull(local_10);
          uVar8 = extraout_EAX_01;
        }
        return uVar8 & 0xffffff00;
      }
      piVar9 = piVar9 + 1;
      uVar8 = uVar8 + 1;
    } while (piVar9 != local_c);
  }
  if (*(int *)((int)this_00 + 8) != 0) {
    ResourceStreamContext_Close(this_00);
    pvVar6 = extraout_EAX;
  }
  if (local_10 != (int *)0x0) {
    Memory_FreeIfNonNull(local_10);
    pvVar6 = extraout_EAX_00;
  }
  return CONCAT31((int3)((uint)pvVar6 >> 8),1);
}

