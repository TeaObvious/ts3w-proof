/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX context plus locator/product/errors RET0C, AL means CONFLICT (opposite
   validation-success polarity). Product diagonal special check precedes partition type loop0..4.
   For each type, coincident mask before adjacent mask. Selected type2 uses separate graph query,
   other types physical graph/product type. Adjacent search checks first endpoint then second,
   returns actual found locator. With accumulator all conflicts may collect, preserving order;
   without it first conflict returns. Codes79 WallExists,87 CantPlaceWallAdjacentToFenceArch,8A
   CantPlaceFenceArchAdjacentToWall; remaining selected combinations use0 exactly. This producer
   order determines which error C9ED10 ignores. */

bool __thiscall
WallPlacement_TestPartitionConflicts(void *this,char *param_1,uint *param_2,void *param_3)

{
  void *this_00;
  bool bVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 uVar8;
  uint uVar9;
  char cVar10;
  bool local_81;
  char local_70 [8];
  float local_68;
  float local_64;
  int local_60;
  float local_5c;
  float local_58;
  int local_54;
  float local_50 [19];
  
  local_81 = false;
  uVar2 = FUN_00c5beb0(param_2);
  if ((char)uVar2 != '\0') {
    uVar3 = FUN_00c5baa0((int *)param_2);
    uVar3 = FUN_00d46910(this,param_1,param_3,(char)uVar3);
    if ((char)uVar3 != '\0') {
      if (param_3 == (void *)0x0) {
        return true;
      }
      local_81 = true;
    }
  }
  uVar2 = WallProduct_GetBlockedPartitionMask(param_2);
  uVar4 = WallProduct_GetAdjacentBlockedPartitionMask(param_2);
  uVar9 = 0;
  do {
    uVar5 = 1 << ((byte)uVar9 & 0x1f);
    if ((uVar2 & uVar5) != 0) {
      this_00 = *(void **)(*(int *)((int)this + 8) + 0x298);
      if (uVar9 == 2) {
        uVar6 = FUN_00b47050(this_00,param_1);
        cVar10 = (char)uVar6;
      }
      else {
        bVar1 = FUN_00b47d20(this_00,param_1);
        if (!bVar1) goto LAB_00d46f70;
        puVar7 = FUN_00b47df0(this_00,param_1,'\0');
        uVar6 = WallProduct_GetPartitionType(puVar7);
        cVar10 = uVar6 == uVar9;
      }
      if (cVar10 != '\0') {
        if (param_3 == (void *)0x0) {
          return true;
        }
        FUN_00ad68b0(local_50,0x79,*(int *)((int)this + 8),param_1,'\0');
        FUN_00ad8570(param_3,local_50);
        local_81 = true;
        FUN_00ad70d0((int)local_50);
      }
    }
LAB_00d46f70:
    if ((uVar4 & uVar5) != 0) {
      local_60 = (int)param_1[2];
      local_68 = (float)(int)*param_1;
      local_64 = (float)(int)param_1[1];
      local_70[0] = -1;
      local_70[1] = 0xff;
      local_70[2] = 0;
      local_70[3] = 0xff;
      local_70[4] = 0xff;
      local_70[5] = 0;
      bVar1 = WallPlacement_FindIncidentPartitionType(this,uVar9,&local_68,(undefined4 *)local_70);
      if (!bVar1) {
        local_54 = (int)param_1[5];
        local_5c = (float)(int)param_1[3];
        local_58 = (float)(int)param_1[4];
        bVar1 = WallPlacement_FindIncidentPartitionType(this,uVar9,&local_5c,(undefined4 *)local_70)
        ;
        if (!bVar1) goto LAB_00d47086;
      }
      if (param_3 == (void *)0x0) {
        return true;
      }
      uVar8 = 0;
      uVar3 = WallProduct_IsZeroField8COrAllowedType(param_2);
      if (((char)uVar3 == '\0') || (uVar9 != 2)) {
        uVar3 = FUN_00c5b8c0(param_2);
        if (((char)uVar3 != '\0') && (uVar9 == 0)) {
          uVar8 = 0x8a;
        }
      }
      else {
        uVar8 = 0x87;
      }
      FUN_00ad68b0(local_50,uVar8,*(int *)((int)this + 8),local_70,'\0');
      FUN_00ad8570(param_3,local_50);
      local_81 = true;
      FUN_00ad70d0((int)local_50);
    }
LAB_00d47086:
    uVar9 = uVar9 + 1;
    if (4 < uVar9) {
      return local_81;
    }
  } while( true );
}

