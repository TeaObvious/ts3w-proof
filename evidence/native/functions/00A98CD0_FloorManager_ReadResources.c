/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete FloorManager read dispatcher. First resource group0093D6A5/typeB125533A is byte
   FLAGS, NOT floor elevation. Only allocates/reads when contextgood andflags28null; C6D950 consumes
   header without version/equality test; rawReadExact uses vectorend14-begin10 bytes,
   accumulatesstatus, closes, then A8D6A0(false) clears restricted-ground perimeter. Failedheader
   frees/nullsowner andreturns; failedbody accumulatescontextfailure, doesnotproceedpatterns.
   Detached host failure admission neednot expose nativepartial allocation.
   Laterpattern/rotation/map branches remain genuine body,not all newly re-verified by this
   flag-focused annotation. Physicalthiscall context,resourcecontext,lotId low/high fourwords
   RET10hex,void. No header dimension comparison to lot174/178/live range and no exactEOF here. */

void __thiscall
FloorManager_ReadResources(void *this,char *param_1,void *param_2,uint param_3,undefined4 param_4)

{
  byte *fourKeys;
  ushort *puVar1;
  bool bVar2;
  char cVar3;
  ushort uVar4;
  void *pvVar5;
  undefined *this_00;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  ushort *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  if ((param_1[0x14] != '\0') && (*(int *)((int)this + 0x28) == 0)) {
    pvVar5 = (void *)FUN_004e4500(0x20,"Lot/FloorManager/FlagsLayer",0);
    if (pvVar5 == (void *)0x0) {
      this_00 = (undefined *)0x0;
    }
    else {
      this_00 = ByteWorldGrid_Construct(pvVar5,"Lot/FloorManager/FlagsLayer");
    }
    *(undefined **)((int)this + 0x28) = this_00;
    bVar2 = LotGrid_ReadHeaderResource(this_00,param_1,0x93d6a5,CONCAT44(param_4,param_3));
    if (!bVar2) {
      ResourceStreamContext_Close(param_1);
      StreamReader_AccumulateStatus(param_1,0);
      param_1[0x14] = '\0';
      if (*(undefined4 **)((int)this + 0x28) != (undefined4 *)0x0) {
        (**(code **)**(undefined4 **)((int)this + 0x28))(1);
      }
      *(undefined4 *)((int)this + 0x28) = 0;
      return;
    }
    pvVar5 = *(void **)(*(int *)((int)this + 0x28) + 0x10);
    bVar2 = Stream_ReadExactBytes
                      (*(void **)(param_1 + 8),pvVar5,
                       *(int *)(*(int *)((int)this + 0x28) + 0x14) - (int)pvVar5);
    StreamReader_AccumulateStatus(param_1,bVar2);
    ResourceStreamContext_Close(param_1);
    FloorManager_SetRestrictedGroundPerimeter(this,false);
  }
  if (param_1[0x14] != '\0') {
    if (*(int *)((int)this + 0x2c) == 0) {
      pvVar5 = (void *)FUN_004e4500(0x58,"Lot/Floormanager/PatternLayer",0);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)0x0;
      }
      else {
        pvVar5 = (void *)FUN_00a8e690(pvVar5,"Lot/FloorManager/PatternLayer");
      }
      *(void **)((int)this + 0x2c) = pvVar5;
      uVar6 = FUN_00a97570(pvVar5,param_1,0x93deb7,param_3,param_4);
      if ((char)uVar6 == '\0') {
        ResourceStreamContext_Close(param_1);
        StreamReader_AccumulateStatus(param_1,0);
        param_1[0x14] = '\0';
        if (*(undefined4 **)((int)this + 0x2c) != (undefined4 *)0x0) {
          (**(code **)**(undefined4 **)((int)this + 0x2c))(1);
        }
        *(undefined4 *)((int)this + 0x2c) = 0;
        return;
      }
      iVar8 = *(int *)((int)this + 0x2c);
      local_10 = (ushort *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Lot/Floormanager/PatternLayer";
      FUN_00a90d00(&local_10,*(int *)(iVar8 + 0xc) * *(int *)(iVar8 + 8) * *(int *)(iVar8 + 4));
      puVar1 = local_10;
      uVar7 = Stream_ReadUtf16UnitsEndian
                        (*(int **)(param_1 + 8),local_10,(local_c - (int)local_10 >> 3) * 4,
                         *(uint *)(param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,(byte)uVar7);
      ResourceStreamContext_Close(param_1);
      FUN_00a95420(*(void **)((int)this + 0x2c),(int *)&local_10);
      *(undefined1 *)((int)this + 0x220) = 1;
      if (puVar1 != (ushort *)0x0) {
        Memory_FreeIfNonNull(puVar1);
      }
    }
    if (((param_1[0x14] != '\0') && (3 < *(uint *)((int)this + 0x1c))) &&
       (*(int *)((int)this + 0x30) == 0)) {
      pvVar5 = (void *)FUN_004e4500(0x58,"Lot/FloorManager/PatternRotationLayer",0);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)0x0;
      }
      else {
        pvVar5 = (void *)FUN_00a8e600(pvVar5,"Lot/FloorManager/PatternRotationLayer");
      }
      *(void **)((int)this + 0x30) = pvVar5;
      bVar2 = ByteTileGrid_ReadResourceHeader(pvVar5,param_1,0xa6d544,param_3,param_4);
      if (!bVar2) {
        ResourceStreamContext_Close(param_1);
        StreamReader_AccumulateStatus(param_1,0);
        param_1[0x14] = '\0';
        if (*(undefined4 **)((int)this + 0x30) != (undefined4 *)0x0) {
          (**(code **)**(undefined4 **)((int)this + 0x30))(1);
        }
        *(undefined4 *)((int)this + 0x30) = 0;
        return;
      }
      iVar8 = *(int *)((int)this + 0x30);
      local_10 = (ushort *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Lot/FloorManager/PatternRotationLayer";
      ByteVector_ResizeZeroed
                (&local_10,*(int *)(iVar8 + 0xc) * *(int *)(iVar8 + 8) * *(int *)(iVar8 + 4));
      puVar1 = local_10;
      StreamReader_ReadBytesInto(param_1,local_10,local_c - (int)local_10);
      ResourceStreamContext_Close(param_1);
      ByteTileGrid_ImportFlatBytes(*(void **)((int)this + 0x30),(int *)&local_10);
      if (puVar1 != (ushort *)0x0) {
        Memory_FreeIfNonNull(puVar1);
      }
    }
  }
  if (0xb < *(uint *)((int)this + 0x1c)) {
    *(undefined4 *)((int)this + 0x38) = *(undefined4 *)((int)this + 0x34);
    if ((param_1[0x14] == '\0') ||
       (uVar7 = FUN_00a948a0(this,param_1,param_3,param_4), (char)uVar7 == '\0')) {
      ResourceStreamContext_Close(param_1);
      StreamReader_AccumulateStatus(param_1,0);
      param_1[0x14] = '\0';
      *(undefined4 *)((int)this + 0x38) = *(undefined4 *)((int)this + 0x34);
      return;
    }
    if (*(int *)((int)this + 0x34) != *(int *)((int)this + 0x38)) {
      if (param_1[0x14] == '\0') {
        return;
      }
      if (*(int *)((int)this + 0x48) == 0) {
        pvVar5 = (void *)FUN_004e4500(0x58,"Lot/Floormanager/PatternLayer",0);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)0x0;
        }
        else {
          pvVar5 = (void *)FUN_00a8e690(pvVar5,"Lot/FloorManager/PatternLayer");
        }
        *(void **)((int)this + 0x48) = pvVar5;
        uVar6 = FUN_00a97570(pvVar5,param_1,0x8153da,param_3,param_4);
        if ((char)uVar6 == '\0') {
          ResourceStreamContext_Close(param_1);
          StreamReader_AccumulateStatus(param_1,0);
          param_1[0x14] = '\0';
          if (*(undefined4 **)((int)this + 0x48) != (undefined4 *)0x0) {
            (**(code **)**(undefined4 **)((int)this + 0x48))(1);
          }
          *(undefined4 *)((int)this + 0x48) = 0;
          return;
        }
        iVar8 = *(int *)((int)this + 0x48);
        local_10 = (ushort *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = "Lot/Floormanager/PatternLayer";
        FUN_00a90d00(&local_10,*(int *)(iVar8 + 0xc) * *(int *)(iVar8 + 8) * *(int *)(iVar8 + 4));
        puVar1 = local_10;
        BlendGeometry_ReadUInt16Bank(param_1,local_10,(local_c - (int)local_10 >> 3) * 4);
        ResourceStreamContext_Close(param_1);
        FUN_00a95420(*(void **)((int)this + 0x48),(int *)&local_10);
        if (puVar1 != (ushort *)0x0) {
          Memory_FreeIfNonNull(puVar1);
        }
      }
      if (param_1[0x14] == '\0') {
        return;
      }
      if (*(int *)((int)this + 0x4c) == 0) {
        pvVar5 = (void *)FUN_004e4500(0x58,"Lot/FloorManager/PatternRotationLayer",0);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)0x0;
        }
        else {
          pvVar5 = (void *)FUN_00a8e600(pvVar5,"Lot/FloorManager/PatternRotationLayer");
        }
        *(void **)((int)this + 0x4c) = pvVar5;
        bVar2 = ByteTileGrid_ReadResourceHeader(pvVar5,param_1,0x8153e1,param_3,param_4);
        if (!bVar2) {
          ResourceStreamContext_Close(param_1);
          StreamReader_AccumulateStatus(param_1,0);
          param_1[0x14] = '\0';
          if (*(undefined4 **)((int)this + 0x4c) != (undefined4 *)0x0) {
            (**(code **)**(undefined4 **)((int)this + 0x4c))(1);
          }
          *(undefined4 *)((int)this + 0x4c) = 0;
          return;
        }
        iVar8 = *(int *)((int)this + 0x4c);
        local_10 = (ushort *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = "Lot/FloorManager/PatternRotationLayer";
        ByteVector_ResizeZeroed
                  (&local_10,*(int *)(iVar8 + 0xc) * *(int *)(iVar8 + 8) * *(int *)(iVar8 + 4));
        puVar1 = local_10;
        StreamReader_ReadBytesInto(param_1,local_10,local_c - (int)local_10);
        ResourceStreamContext_Close(param_1);
        ByteTileGrid_ImportFlatBytes(*(void **)((int)this + 0x4c),(int *)&local_10);
        if (puVar1 != (ushort *)0x0) {
          Memory_FreeIfNonNull(puVar1);
        }
      }
    }
  }
  if (param_1[0x14] != '\0') {
    if (*(int *)((int)this + 0xd8) == 0) {
      iVar8 = FUN_004e4500(0x98,"Lot/FloorManager/PatternMap",0);
      if (iVar8 == 0) {
        uVar6 = 0;
      }
      else {
        uVar6 = FUN_00aa5030(iVar8);
      }
      *(undefined4 *)((int)this + 0xd8) = uVar6;
      uVar4 = Lot_GetSourceFormatVersion(*(int *)((int)this + 4));
      cVar3 = FloorPatternMap_ReadResourceRows
                        (*(void **)((int)this + 0xd8),param_1,param_2,0x93d9d1,param_3,param_4,
                         (uint)uVar4);
      if (cVar3 == '\0') {
        StreamReader_AccumulateStatus(param_1,0);
        param_1[0x14] = '\0';
        pvVar5 = *(void **)((int)this + 0xd8);
        if (pvVar5 != (void *)0x0) {
          FUN_00aa4fc0((int)pvVar5);
          Memory_FreeIfNonNull(pvVar5);
        }
        *(undefined4 *)((int)this + 0xd8) = 0;
        return;
      }
      iVar8 = FUN_00a8fa50(*(void **)((int)this + 0xd8),(byte *)&DAT_011ec920);
      if (iVar8 == 0) {
        FloorKeyMap_AddReference(*(void **)((int)this + 0xd8),(undefined *)&DAT_011ec920);
      }
      FUN_00a903b0(*(void **)((int)this + 0xd8),&DAT_011ec920);
      if ((*(int *)((int)this + 4) != 0) && (*(char *)(*(int *)((int)this + 4) + 0x4bc) != '\0')) {
        fourKeys = (byte *)((int)this + 0x90);
        iVar8 = FUN_00a8fa50(*(void **)((int)this + 0xd8),fourKeys);
        if (iVar8 == 0) {
          FloorKeyMap_AddReference(*(void **)((int)this + 0xd8),fourKeys);
        }
        FUN_00a903b0(*(void **)((int)this + 0xd8),(int *)fourKeys);
      }
    }
    if (((param_1[0x14] != '\0') && (*(char *)((int)this + 1) != '\0')) &&
       (10 < *(uint *)((int)this + 0x1c))) {
      FUN_00a90a90((void *)((int)this + 0x150),param_1,param_2,param_3,param_4);
    }
  }
  return;
}

