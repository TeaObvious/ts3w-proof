/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review: this in ECX, slotdescriptor,pathobject,name arguments. Existing
   slot+30 database isdetached,closed,released andcleared. Nullpath clears descriptorstrings.
   Otherwise combines path+filename and stores full/path/name strings then009c8ef0 indexinghook.
   Precise string helper semantics and async operations remainopen. */

void SimStorage_ReplaceDatabaseSlotPath(undefined4 *param_1,undefined4 *param_2,short *param_3)

{
  short sVar1;
  short *allocation;
  int *piVar2;
  uint uVar3;
  short *psVar4;
  int iVar5;
  short *psVar6;
  undefined4 *puVar7;
  short *psStack_428;
  undefined4 uStack_424;
  undefined4 uStack_420;
  char *pcStack_41c;
  undefined4 auStack_418 [261];
  
  iVar5 = param_1[0xc];
  if (iVar5 != 0) {
    piVar2 = (int *)FUN_004afe80();
    if ((iVar5 != 0) && (piVar2 != (int *)0x0)) {
      (**(code **)(*piVar2 + 0x34))(0,iVar5,0);
    }
    (**(code **)(*(int *)param_1[0xc] + 8))();
    (**(code **)(*(int *)(param_1[0xc] + 4) + 4))();
    param_1[0xc] = 0;
  }
  if (param_2 == (undefined4 *)0x0) {
    if ((undefined2 *)param_1[4] != (undefined2 *)param_1[5]) {
      *(undefined2 *)param_1[4] = 0;
      param_1[5] = param_1[4];
    }
    if ((undefined2 *)*param_1 != (undefined2 *)param_1[1]) {
      *(undefined2 *)*param_1 = 0;
      param_1[1] = *param_1;
    }
    if ((undefined2 *)param_1[8] != (undefined2 *)param_1[9]) {
      *(undefined2 *)param_1[8] = 0;
      param_1[9] = param_1[8];
      return;
    }
  }
  else {
    puVar7 = auStack_418;
    for (iVar5 = 0x104; iVar5 != 0; iVar5 = iVar5 + -1) {
      *puVar7 = *param_2;
      param_2 = param_2 + 1;
      puVar7 = puVar7 + 1;
    }
    FUN_004ee400(auStack_418,param_3,0);
    uVar3 = FUN_004edef0(auStack_418,(void *)0x0,0);
    if (uVar3 != 0) {
      psStack_428 = (short *)0x0;
      uStack_424 = 0;
      uStack_420 = 0;
      pcStack_41c = "ResourceSystem/DownloadContent/SimStorageManager/tempString";
      UInt16Vector_ResizeZeroed(&psStack_428,uVar3 + 2);
      allocation = psStack_428;
      FUN_004edef0(auStack_418,psStack_428,uVar3 + 1);
      psVar4 = (short *)FUN_007e51a0(auStack_418);
      sVar1 = *psVar4;
      psVar6 = psVar4;
      while (sVar1 != 0) {
        psVar6 = psVar6 + 1;
        sVar1 = *psVar6;
      }
      FUN_00408d60(param_1 + 4,psVar4,psVar4 + ((int)psVar6 - (int)psVar4 >> 1));
      sVar1 = *allocation;
      psVar6 = allocation;
      while (sVar1 != 0) {
        psVar6 = psVar6 + 1;
        sVar1 = *psVar6;
      }
      FUN_00408d60(param_1,allocation,allocation + ((int)psVar6 - (int)allocation >> 1));
      sVar1 = *param_3;
      psVar6 = param_3;
      while (sVar1 != 0) {
        psVar6 = psVar6 + 1;
        sVar1 = *psVar6;
      }
      FUN_00408d60(param_1 + 8,param_3,param_3 + ((int)psVar6 - (int)param_3 >> 1));
      FUN_009c8ef0((int)param_1);
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

