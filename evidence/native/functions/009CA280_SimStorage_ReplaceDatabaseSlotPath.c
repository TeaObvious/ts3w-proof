/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX, slotdescriptor,pathobject,name arguments. Existing
   slot+30 database isdetached,closed,released andcleared. Nullpath clears descriptorstrings.
   Otherwise combines path+filename and stores full/path/name strings then009c8ef0 indexinghook.
   Precise string helper semantics and async operations remainopen. */

void SimStorage_ReplaceDatabaseSlotPath(undefined4 *param_1,undefined4 *param_2,short *param_3)

{
  short sVar1;
  short *psVar2;
  int *piVar3;
  uint uVar4;
  short *psVar5;
  int iVar6;
  short *psVar7;
  undefined4 *puVar8;
  short *psStack_428;
  undefined4 uStack_424;
  undefined4 uStack_420;
  char *pcStack_41c;
  undefined4 auStack_418 [261];
  
  iVar6 = param_1[0xc];
  if (iVar6 != 0) {
    piVar3 = (int *)FUN_004afe80();
    if ((iVar6 != 0) && (piVar3 != (int *)0x0)) {
      (**(code **)(*piVar3 + 0x34))(0,iVar6,0);
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
    puVar8 = auStack_418;
    for (iVar6 = 0x104; iVar6 != 0; iVar6 = iVar6 + -1) {
      *puVar8 = *param_2;
      param_2 = param_2 + 1;
      puVar8 = puVar8 + 1;
    }
    FUN_004ee400(auStack_418,param_3,0);
    uVar4 = FUN_004edef0(auStack_418,(void *)0x0,0);
    if (uVar4 != 0) {
      psStack_428 = (short *)0x0;
      uStack_424 = 0;
      uStack_420 = 0;
      pcStack_41c = "ResourceSystem/DownloadContent/SimStorageManager/tempString";
      FUN_0067f5e0(&psStack_428,uVar4 + 2);
      psVar2 = psStack_428;
      FUN_004edef0(auStack_418,psStack_428,uVar4 + 1);
      psVar5 = (short *)FUN_007e51a0(auStack_418);
      sVar1 = *psVar5;
      psVar7 = psVar5;
      while (sVar1 != 0) {
        psVar7 = psVar7 + 1;
        sVar1 = *psVar7;
      }
      FUN_00408d60(param_1 + 4,psVar5,psVar5 + ((int)psVar7 - (int)psVar5 >> 1));
      sVar1 = *psVar2;
      psVar7 = psVar2;
      while (sVar1 != 0) {
        psVar7 = psVar7 + 1;
        sVar1 = *psVar7;
      }
      FUN_00408d60(param_1,psVar2,psVar2 + ((int)psVar7 - (int)psVar2 >> 1));
      sVar1 = *param_3;
      psVar7 = param_3;
      while (sVar1 != 0) {
        psVar7 = psVar7 + 1;
        sVar1 = *psVar7;
      }
      FUN_00408d60(param_1 + 8,param_3,param_3 + ((int)psVar7 - (int)param_3 >> 1));
      FUN_009c8ef0((int)param_1);
      FUN_004e44e0((int)psVar2);
    }
  }
  return;
}

