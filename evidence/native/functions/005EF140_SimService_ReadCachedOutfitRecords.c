/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. UInt32 record count. Version<4 inline TGI identity, newer
   reference-store key. Version<7 invokes the outfit loader directly; version>=7 invokes005EB850
   envelope/handles. Successful owners receive their saved key, resource registration and cache
   binding; failure exits AL0 with cleanup. A decoder extracting data values alone does not
   reproduce native registration/refcount/compositor side effects. */

undefined4 SimService_ReadCachedOutfitRecords(void *param_1,void *param_2,uint param_3)

{
  int iVar1;
  bool bVar2;
  undefined1 uVar3;
  undefined4 extraout_EAX;
  undefined3 extraout_var;
  int *piVar4;
  undefined3 extraout_var_00;
  undefined4 uVar5;
  undefined4 *puVar6;
  int *piVar7;
  int *piVar8;
  int *local_24;
  uint local_20;
  uint local_1c;
  int *local_18;
  int local_14;
  uint local_10;
  int local_c;
  int local_8;
  int local_4;
  
  local_18 = (int *)FUN_004afe80();
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_1c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  local_20 = 0;
  if (local_1c == 0) {
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  while( true ) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    if (param_3 < 4) {
      bVar2 = Stream_ReadResourceKeyTGI
                        (*(void **)((int)param_1 + 8),&local_10,*(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
    }
    else {
      ResourceReferences_ReadContextKey(param_2,param_1,&local_10);
    }
    local_24 = (int *)0x0;
    if (param_3 < 7) {
      puVar6 = (undefined4 *)FUN_004e4500(0x2d0,"CAS/SimService/ILoadSave_Load_Outfit",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = FUN_005e6f00(puVar6);
      }
      piVar8 = local_24;
      piVar7 = piVar4;
      if (piVar4 != local_24) {
        if (piVar4 != (int *)0x0) {
          piVar7 = (int *)(**(code **)*piVar4)();
        }
        local_24 = piVar4;
        if (piVar8 != (int *)0x0) {
          piVar7 = (int *)(**(code **)(*piVar8 + 4))();
        }
      }
      if (local_24 == (int *)0x0) goto LAB_005ef348;
      uVar3 = SimOutfit_ReadWire(local_24,*(int **)((int)param_1 + 8),(int *)&DAT_00000004,
                                 (int *)0x0);
      piVar7 = (int *)CONCAT31(extraout_var_00,uVar3);
    }
    else {
      uVar3 = SimOutfit_ReadCachedRecord(param_1,param_2,(int *)&DAT_00000004,&local_24);
      piVar7 = (int *)CONCAT31(extraout_var,uVar3);
    }
    if ((char)piVar7 == '\0') break;
    local_24[2] = local_10;
    local_24[3] = local_c;
    local_24[4] = local_8;
    local_24[5] = local_4;
    iVar1 = *local_18;
    uVar5 = (**(code **)(*local_24 + 0xc))(0x2269ed1,1);
    (**(code **)(iVar1 + 0x5c))(uVar5);
    piVar4 = local_24;
    piVar8 = (int *)0x0;
    if (local_24 != (int *)0x0) {
      (**(code **)*local_24)();
      piVar8 = piVar4;
    }
    puVar6 = (undefined4 *)FUN_005eef30((void *)(local_14 + 0xd4),&local_10);
    piVar4 = (int *)*puVar6;
    if (piVar8 != piVar4) {
      if (piVar8 != (int *)0x0) {
        (**(code **)*piVar8)();
      }
      *puVar6 = piVar8;
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
    }
    puVar6[1] = 0;
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 4))();
    }
    if (local_24 != (int *)0x0) {
      (**(code **)(*local_24 + 4))();
    }
    local_20 = local_20 + 1;
    if (local_1c <= local_20) {
      return CONCAT31((int3)(local_20 >> 8),1);
    }
  }
  if (local_24 != (int *)0x0) {
    piVar7 = (int *)(**(code **)(*local_24 + 4))();
  }
LAB_005ef348:
  return (uint)piVar7 & 0xffffff00;
}

