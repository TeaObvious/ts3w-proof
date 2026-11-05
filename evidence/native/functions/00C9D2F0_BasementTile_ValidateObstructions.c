/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl four words, low AL bool. Dig rejects support-region
   type1 (error6B). Removal also tests edit-zone7, contained objects (Sim6C/object6D),
   flights/stairs6E, pool/fountain6F and platform70. Objects use actual lot tile query flags, not
   mesh bounds. Error context may collect multiple causes before returning false. */

bool __cdecl
BasementTile_ValidateObstructions(void *param_1,char param_2,char *param_3,void *param_4)

{
  void *pvVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  void *pvVar7;
  int local_74;
  int local_70;
  float local_6c;
  float local_68;
  undefined4 local_64;
  void *local_60;
  void *local_5c;
  undefined4 local_58;
  char *local_54;
  float local_50 [19];
  
  bVar3 = true;
  if (param_2 != '\0') {
    uVar4 = Lot_TestCellSupportRegionType(param_1,param_3,'\x01',(undefined1 *)0x0);
    if ((char)uVar4 == '\0') {
      return true;
    }
    if (param_4 == (void *)0x0) {
      return false;
    }
    FUN_00ad6a40(local_50,0x6b,(int)param_1,param_3);
    FUN_00ad8570(param_4,local_50);
    FUN_00ad70d0((int)local_50);
    return false;
  }
  cVar2 = FUN_00ab0830();
  if ((cVar2 != '\0') && (uVar4 = FUN_00ab0a00((int)param_1), (char)uVar4 != '\0')) {
    if (param_4 == (void *)0x0) {
      return false;
    }
    FUN_00ad6a40(local_50,7,(int)param_1,param_3);
    FUN_00ad8570(param_4,local_50);
    bVar3 = false;
    FUN_00ad70d0((int)local_50);
  }
  local_60 = (void *)0x0;
  local_5c = (void *)0x0;
  local_58 = 0;
  local_54 = "UserTool/BasementPlacementHelper/objectsOnTile";
  LotQuery_CollectObjectsOnTile
            (param_1,param_3,&local_60,'\0','\x01','\x01',(uint)(byte)param_3[3],0,5);
  if (local_60 != local_5c) {
    iVar5 = (int)local_5c - (int)local_60 >> 2;
    local_74 = 0;
    pvVar7 = local_60;
    local_70 = iVar5;
    if (0 < iVar5) {
      do {
        pvVar1 = *(void **)((int)pvVar7 + local_74 * 4);
        if (pvVar1 != (void *)0x0) {
          bVar3 = FUN_00afc7c0((int)pvVar1);
          if (bVar3) {
            if (param_4 == (void *)0x0) goto LAB_00c9d5fd;
            FUN_00ad6fb0(local_50,0x6c,pvVar1);
            FUN_00ad8570(param_4,local_50);
            FUN_00ad70d0((int)local_50);
          }
          if (param_4 == (void *)0x0) goto LAB_00c9d5fd;
          FUN_00ad6fb0(local_50,0x6d,pvVar1);
          FUN_00ad8570(param_4,local_50);
          bVar3 = false;
          FUN_00ad70d0((int)local_50);
          iVar5 = local_70;
          pvVar7 = local_60;
        }
        local_74 = local_74 + 1;
      } while (local_74 < iVar5);
    }
  }
  pvVar7 = *(void **)((int)param_1 + 0x2b4);
  if (pvVar7 != (void *)0x0) {
    local_6c = -1.0;
    local_68 = -1.0;
    local_64 = 0;
    FUN_00af81a0(param_3,&local_6c);
    uVar4 = FUN_00b16640(pvVar7,&local_6c,&local_70);
    if ((char)uVar4 != '\0') {
      if (param_4 == (void *)0x0) goto LAB_00c9d5fd;
      FUN_00ad6720(local_50,0x6e,(int)param_1,&local_6c,0,0);
      FUN_00ad8570(param_4,local_50);
      bVar3 = false;
      FUN_00ad70d0((int)local_50);
    }
    uVar6 = FUN_00b16890(pvVar7,param_3);
    if ((char)uVar6 != '\0') {
      if (param_4 == (void *)0x0) goto LAB_00c9d5fd;
      FUN_00ad6960(local_50,0x6e,(int)param_1,(undefined2 *)param_3);
      FUN_00ad8570(param_4,local_50);
      bVar3 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  uVar4 = Lot_TestCellSupportRegionType(param_1,param_3,'\x01',(undefined1 *)0x0);
  if (((char)uVar4 != '\0') ||
     (cVar2 = FUN_00acfa20(param_1,(undefined2 *)param_3,1,(undefined1 *)0x0), cVar2 != '\0')) {
    if (param_4 == (void *)0x0) goto LAB_00c9d5fd;
    FUN_00ad6a40(local_50,0x6f,(int)param_1,param_3);
    FUN_00ad8570(param_4,local_50);
    bVar3 = false;
    FUN_00ad70d0((int)local_50);
  }
  uVar4 = FUN_00afed60(param_1,param_3,'\0');
  if ((char)uVar4 != '\0') {
    if (param_4 == (void *)0x0) {
LAB_00c9d5fd:
      if (local_60 != (void *)0x0) {
        Memory_FreeIfNonNull(local_60);
      }
      return false;
    }
    FUN_00ad6a40(local_50,0x70,(int)param_1,param_3);
    FUN_00ad8570(param_4,local_50);
    bVar3 = false;
    FUN_00ad70d0((int)local_50);
  }
  if (local_60 != (void *)0x0) {
    Memory_FreeIfNonNull(local_60);
  }
  return bVar3;
}

