/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). ECX is the SaveWorld process plus one
   physical callback stack argument (RET4). Captures yielding ID pair through host +118h, filters
   selected lot jobs with flag 4, acquires job state and installs completion target 00743220 with
   process data, schedules work, enters host +120h yielding callback path, then performs
   cleanup/+11Ch. Returns AL false on missing required helper/job acquisition or true after selected
   scheduling path. Called job execution/completion remains bounded. */

undefined4 __fastcall SaveWorldProcess_RequestLotJobs(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  void *this;
  bool bVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  uint extraout_EAX;
  undefined4 extraout_EAX_00;
  void *pvVar9;
  uint *puVar10;
  uint *puVar11;
  uint uVar12;
  void *allocation;
  undefined8 uVar13;
  undefined4 unaff_retaddr;
  void *pvStack_2c;
  uint uStack_18;
  uint uStack_14;
  void *pvStack_10;
  uint *puStack_c;
  uint *puStack_8;
  char *pcStack_4;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar13 = (**(code **)(*piVar4 + 0x118))();
  *(undefined8 *)(param_1 + 0xc) = uVar13;
  this = DAT_011eec30;
  piVar4 = DAT_011edbc4;
  if (DAT_011eec30 == (void *)0x0) {
    return 0;
  }
  puVar10 = (uint *)0x0;
  pvStack_10 = (void *)0x0;
  puStack_c = (uint *)0x0;
  puStack_8 = (uint *)0x0;
  pcStack_4 = "UserTool/LotThumbnailCreationHelper/requestLots";
  allocation = (void *)0x0;
  if (DAT_011edbc4 != (int *)0x0) {
    piVar5 = (int *)FUN_00c687a0(DAT_011edbc4,'\x01');
    pvVar9 = (void *)(piVar5[1] - *piVar5 >> 2);
    pvStack_2c = (void *)0x0;
    puVar11 = puVar10;
    if (pvVar9 != (void *)0x0) {
      do {
        iVar1 = *(int *)(*piVar5 + (int)pvStack_2c * 4);
        puVar10 = puVar11;
        if (iVar1 != 0) {
          uStack_18 = *(uint *)(iVar1 + 0x48);
          uStack_14 = *(uint *)(iVar1 + 0x4c);
          uVar6 = FUN_00c63720(piVar4,&uStack_18);
          if (((char)uVar6 != '\0') && (bVar3 = FUN_00d53750(this,uStack_18,uStack_14,4), bVar3)) {
            if (puVar11 < puStack_8) {
              puStack_c = puVar11 + 2;
              puVar10 = puStack_c;
              if (puVar11 != (uint *)0x0) {
                *puVar11 = uStack_18;
                puVar11[1] = uStack_14;
              }
            }
            else {
              FUN_00572360(&pvStack_10,puVar11,&uStack_18);
              puVar10 = puStack_c;
            }
          }
        }
        pvStack_2c = (void *)((int)pvStack_2c + 1);
        puVar11 = puVar10;
        allocation = pvStack_10;
      } while (pvStack_2c < pvVar9);
    }
  }
  piVar7 = JobManager_GetInterface();
  piVar5 = param_1 + 10;
  uVar8 = (**(code **)(*piVar7 + 0x10))(piVar5);
  if ((char)uVar8 != '\0') {
    FUN_00599c20((void *)*piVar5,param_1 + 8);
    *(undefined4 *)(*piVar5 + 0x20) = 4;
    iVar1 = *piVar5;
    *(undefined1 **)(iVar1 + 8) = &LAB_00743220;
    *(int **)(iVar1 + 0xc) = param_1;
    FUN_00599e40(*piVar5);
    FUN_00d4be80((int)param_1);
    uVar8 = (int)puVar10 - (int)allocation >> 3;
    uVar12 = 0;
    if (uVar8 != 0) {
      do {
        uVar6 = *(undefined4 *)((int)allocation + uVar12 * 8 + 4);
        uVar2 = *(undefined4 *)((int)allocation + uVar12 * 8);
        FUN_00d613c0(pvStack_2c,uVar2,uVar6,uVar2,uVar6,4,0,param_1);
        uVar12 = uVar12 + 1;
      } while (uVar12 < uVar8);
    }
    (**(code **)(*piVar4 + 0x120))(param_1[0xc],param_1[0xd],0xffffffff,unaff_retaddr,0);
    FUN_00d4be90(param_1);
    Job_ReleaseReference((void *)*piVar5);
    uVar6 = (**(code **)(*piVar4 + 0x11c))();
    if (allocation != (void *)0x0) {
      Memory_FreeIfNonNull(allocation);
      uVar6 = extraout_EAX_00;
    }
    return CONCAT31((int3)((uint)uVar6 >> 8),1);
  }
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
    uVar8 = extraout_EAX;
  }
  return uVar8 & 0xffffff00;
}

