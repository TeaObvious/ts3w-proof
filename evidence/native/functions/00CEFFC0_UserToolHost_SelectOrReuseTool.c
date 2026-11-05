/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst role includes real
   reuse, prior retirement, allocation, initialization and active binding, not just factory
   allocation. ECX host plus toolId DWORD and aggregate pointer DWORD on stack; RET8. If existing
   +2C tool, compare retained +30 ID and typed variants; only the complete comparison path reaches
   CF0964 reuse. Different ID also clears state byte+24. Replacement retires old virtual+8 under its
   lot+0D0 critical section, notifies world manager, clears +2C, decrements old count and calls
   virtual scalar-delete when zero. Missing active typed lot admits only tool IDs1C/1D; other IDs
   bind null via CEFD60 and return. Unsigned id<=32 uses byte table CF09E4[51] and DWORD targets
   CF0974[112]; unrecognized entries clean temporary parameters without allocating. Selected
   constructors receive the real lot except world tools; TerrainSculpt/LotPaint/Water results use
   actual +28 interface adjustment. Nonnull result initializes through virtual+4 under its own lot
   lock before CEFD60(host,tool,0), then copies retained ID and four parameter variants.
   Constructor/virtual implementation semantics and every first-edit consumer are not established by
   this dispatch body. Retained variants here are native typed values, not current host generation
   markers or receipt/GPU readiness flags. */

void __thiscall UserToolHost_SelectOrReuseTool(void *this,int param_1,int param_2)

{
  int iVar1;
  ulong *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  int *piVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  undefined4 uVar10;
  _GUID *p_Var11;
  void *pvVar12;
  char cVar13;
  undefined8 uVar14;
  uint *visitCounter;
  _GUID *p_Var15;
  _GUID local_1b8;
  _GUID local_1a8;
  undefined4 auStack_198 [8];
  undefined1 auStack_178 [32];
  undefined1 auStack_158 [32];
  undefined1 auStack_138 [32];
  undefined4 uStack_118;
  undefined4 auStack_110 [8];
  undefined1 auStack_f0 [104];
  undefined4 auStack_88 [34];
  
  iVar1 = param_2;
  iVar5 = param_1;
  if (*(int *)((int)this + 0x2c) == 0) {
    *(undefined1 *)((int)this + 0x24) = 0;
  }
  else {
    if (*(int *)((int)this + 0x30) == param_1) {
      if ((*(short *)(param_2 + 10) == 0x201) && (*(short *)((int)this + 0x42) == 0x201)) {
        puVar2 = (ulong *)FUN_00cefae0(param_2);
        local_1b8.Data1 = *puVar2;
        local_1b8._4_4_ = puVar2[1];
        local_1b8.Data4._0_4_ = puVar2[2];
        local_1b8.Data4._4_4_ = puVar2[3];
        puVar2 = (ulong *)FUN_00cefae0((int)this + 0x38);
        local_1a8.Data1 = *puVar2;
        local_1a8._4_4_ = puVar2[1];
        local_1a8.Data4._0_4_ = puVar2[2];
        local_1a8.Data4._4_4_ = puVar2[3];
        iVar3 = _AfxIsEqualGUID(&local_1b8,&local_1a8);
        if (((char)iVar3 != '\0') &&
           ((((uVar4 = FUN_00cef5c0(iVar5), (char)uVar4 == '\0' &&
              (*(short *)((int)this + 0x62) == *(short *)(iVar1 + 0x2a))) &&
             (*(short *)((int)this + 0x82) == *(short *)(iVar1 + 0x4a))) &&
            (*(short *)((int)this + 0xa2) == *(short *)(iVar1 + 0x6a))))) {
          cVar13 = '\x01';
          if (*(short *)(iVar1 + 0x2a) == 0x201) {
            puVar2 = (ulong *)FUN_00cefae0(iVar1 + 0x20);
            local_1a8.Data1 = *puVar2;
            local_1a8._4_4_ = puVar2[1];
            local_1a8.Data4._0_4_ = puVar2[2];
            local_1a8.Data4._4_4_ = puVar2[3];
            puVar2 = (ulong *)FUN_00cefae0((int)this + 0x58);
            local_1b8.Data1 = *puVar2;
            local_1b8._4_4_ = puVar2[1];
            local_1b8.Data4._0_4_ = puVar2[2];
            local_1b8.Data4._4_4_ = puVar2[3];
            iVar5 = _AfxIsEqualGUID(&local_1a8,&local_1b8);
            cVar13 = (char)iVar5;
            if (cVar13 == '\0') goto LAB_00cf01c6;
          }
          if (*(short *)(iVar1 + 0x4a) == 0x201) {
            puVar2 = (ulong *)FUN_00cefae0(iVar1 + 0x40);
            local_1a8.Data1 = *puVar2;
            local_1a8._4_4_ = puVar2[1];
            local_1a8.Data4._0_4_ = puVar2[2];
            local_1a8.Data4._4_4_ = puVar2[3];
            puVar2 = (ulong *)FUN_00cefae0((int)this + 0x78);
            local_1b8.Data1 = *puVar2;
            local_1b8._4_4_ = puVar2[1];
            local_1b8.Data4._0_4_ = puVar2[2];
            local_1b8.Data4._4_4_ = puVar2[3];
            iVar5 = _AfxIsEqualGUID(&local_1a8,&local_1b8);
            cVar13 = (char)iVar5;
          }
          if (cVar13 != '\0') {
            if (*(short *)(iVar1 + 0x4a) == 10) {
              piVar6 = FUN_0086c0f0((int)this + 0x78);
              piVar7 = FUN_0086c0f0(iVar1 + 0x40);
              cVar13 = *piVar7 == *piVar6;
            }
            if (cVar13 != '\0') {
              if (*(short *)(iVar1 + 0x6a) == 0x13) {
                puVar8 = FUN_008a6f90(iVar1 + 0x60);
                puVar9 = FUN_008a6f90((int)this + 0x98);
                uVar10 = FUN_00446720(puVar8,puVar9);
                cVar13 = (char)uVar10;
              }
              if (cVar13 != '\0') {
                return;
              }
            }
          }
        }
      }
    }
    else {
      *(undefined1 *)((int)this + 0x24) = 0;
    }
LAB_00cf01c6:
    pvVar12 = DAT_011edbc4;
    iVar5 = *(int *)(*(int *)((int)this + 0x2c) + 0xc);
    if (iVar5 != 0) {
      EnterCriticalSection((LPCRITICAL_SECTION)(iVar5 + 0xd0));
    }
    (**(code **)(**(int **)((int)this + 0x2c) + 8))();
    if (iVar5 != 0) {
      LeaveCriticalSection((LPCRITICAL_SECTION)(iVar5 + 0xd0));
    }
    if (pvVar12 != (void *)0x0) {
      FUN_00c5f470((int)pvVar12);
    }
    puVar8 = *(undefined4 **)((int)this + 0x2c);
    if (puVar8 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0x2c) = 0;
      iVar5 = puVar8[1];
      puVar8[1] = iVar5 + -1;
      if (iVar5 + -1 == 0) {
        puVar8[1] = 1;
        (**(code **)*puVar8)(1);
      }
    }
  }
  pvVar12 = DAT_011edbc4;
  piVar6 = (int *)0x0;
  if (DAT_011edbc4 == (void *)0x0) {
LAB_00cf025a:
    if ((param_1 != 0x1c) && (param_1 != 0x1d)) {
      UserToolHost_BindActiveTool(this,(undefined4 *)0x0,'\0');
      return;
    }
  }
  else {
    visitCounter = (uint *)0x0;
    uVar14 = FUN_00c5f560((int)DAT_011edbc4);
    piVar6 = WorldObjects_FindLotByGuid
                       (pvVar12,(uint)uVar14,(uint)((ulonglong)uVar14 >> 0x20),visitCounter);
    if (piVar6 == (int *)0x0) goto LAB_00cf025a;
  }
  FUN_00cefc80(auStack_198,iVar1);
  switch(param_1) {
  case 0:
  case 8:
  case 0x1e:
    pvVar12 = (void *)FUN_004e4500(0x120,"UserTool/UserToolWall",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d3a360(pvVar12,(int)piVar6);
    break;
  case 1:
    pvVar12 = (void *)FUN_004e4500(0xe8,"UserTool/UserToolWallpaper",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d3f2c0(pvVar12,piVar6);
    break;
  case 2:
    pvVar12 = (void *)FUN_004e4500(400,"UserTool/UserToolFloorPattern",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00ce57f0(pvVar12,(int)piVar6);
    break;
  case 3:
    pvVar12 = (void *)FUN_004e4500(0x268,"UserTool/UserToolDeckFoundation",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cd9b00(pvVar12,(int)piVar6);
    break;
  case 4:
  case 0x14:
    pvVar12 = (void *)FUN_004e4500(0x3a0,"UserTool/UserToolObject",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = ObjectTool_Construct(pvVar12,(int)piVar6);
    break;
  default:
    goto switchD_00cf02a4_caseD_5;
  case 6:
    puVar2 = (ulong *)FUN_00c8b460();
    local_1b8._4_4_ = puVar2[1];
    local_1b8.Data1 = *puVar2;
    local_1b8.Data4._0_4_ = puVar2[2];
    local_1b8.Data4._4_4_ = puVar2[3];
    p_Var15 = &local_1b8;
    p_Var11 = (_GUID *)FUN_00cefae0(iVar1);
    iVar5 = _AfxIsEqualGUID(p_Var11,p_Var15);
    if ((char)iVar5 == '\0') {
      pvVar12 = (void *)FUN_004e4500(0x170,"UserTool/UserToolRoof",0);
      if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
      piVar6 = FUN_00d0cc60(pvVar12,(int)piVar6);
    }
    else {
      puVar2 = (ulong *)FUN_00c8b450();
      local_1b8.Data1 = *puVar2;
      local_1b8._4_4_ = puVar2[1];
      local_1b8.Data4._0_4_ = puVar2[2];
      local_1b8.Data4._4_4_ = puVar2[3];
      pvVar12 = (void *)FUN_004e4500(400,"UserTool/UserToolFloorPattern",0);
      if (pvVar12 == (void *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = FUN_00ce57f0(pvVar12,(int)piVar6);
      }
      FUN_00c9fac0(auStack_110);
      FUN_00c9fa90(auStack_110,&local_1b8);
      FUN_00c9fa90(auStack_f0,&DAT_011ec8d0);
      FUN_00cef7b0(auStack_198,(int)auStack_110);
      FUN_00c9fa30(auStack_110);
    }
    break;
  case 7:
    pvVar12 = (void *)FUN_004e4500(0x3c,"UserTool/UserToolRoofPattern",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d0e5d0(pvVar12,piVar6);
    break;
  case 9:
    pvVar12 = (void *)FUN_004e4500(0x1c,"UserTool/UserToolHousehold",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cebf40(pvVar12,piVar6);
    break;
  case 0xb:
    pvVar12 = (void *)FUN_004e4500(0x80,"UserTool/UserToolObjectDesignMode",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d07c40(pvVar12,piVar6);
    break;
  case 0xc:
  case 0x32:
    pvVar12 = (void *)FUN_004e4500(800,"UserTool/UserToolSledgeHammer",0);
    if (pvVar12 == (void *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = FUN_00d12860(pvVar12,(int)piVar6);
    }
    FUN_00c9fac0(auStack_88);
    FUN_004f5ea0(auStack_88,&param_1);
    FUN_00cef7b0(auStack_198,(int)auStack_88);
    FUN_00c9fa30(auStack_88);
    break;
  case 0xd:
    pvVar12 = (void *)FUN_004e4500(0xa4,"UserTool/UserToolLevelRect",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cec970(pvVar12,(int)piVar6);
    break;
  case 0xe:
    pvVar12 = (void *)FUN_004e4500(0x3c,"UserTool/UserToolFlattenLot",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00ce3910(pvVar12,piVar6);
    break;
  case 0xf:
    pvVar12 = (void *)FUN_004e4500(0x1a8,"UserTool/UserToolTerrainSculpt",0);
    if ((pvVar12 == (void *)0x0) ||
       (pvVar12 = FUN_00d1a690(pvVar12,(int)piVar6), pvVar12 == (void *)0x0))
    goto switchD_00cf02a4_caseD_5;
    piVar6 = (int *)((int)pvVar12 + 0x28);
    break;
  case 0x10:
    pvVar12 = (void *)FUN_004e4500(0x3f8,"UserTool/UserToolModularStairs",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cf7bb0(pvVar12,(int)piVar6);
    break;
  case 0x11:
    pvVar12 = (void *)FUN_004e4500(0x178,"UserTool/UserToolModularRailings",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cf2600(pvVar12,(int)piVar6);
    break;
  case 0x12:
    pvVar12 = (void *)FUN_004e4500(0x1b8,"UserTool/UserToolLotPaint",0);
    if ((pvVar12 == (void *)0x0) ||
       (pvVar12 = FUN_00cef0f0(pvVar12,(int)piVar6), pvVar12 == (void *)0x0))
    goto switchD_00cf02a4_caseD_5;
    piVar6 = (int *)((int)pvVar12 + 0x28);
    break;
  case 0x13:
    pvVar12 = (void *)FUN_004e4500(0x490,"UserTool/UserToolFireplace",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00ce0030(pvVar12,(int)piVar6);
    break;
  case 0x15:
    pvVar12 = (void *)FUN_004e4500(0x78,"UserTool/UserAutoToolRoof",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cd01e0(pvVar12,(int)piVar6);
    break;
  case 0x16:
    pvVar12 = (void *)FUN_004e4500(0xd0,"UserTool/UserToolEyeDropper",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cdce00(pvVar12,piVar6);
    break;
  case 0x17:
    pvVar12 = (void *)FUN_004e4500(0x198,"UserTool/UserToolWater",0);
    if ((pvVar12 == (void *)0x0) ||
       (pvVar12 = FUN_00d404e0(pvVar12,(int)piVar6), pvVar12 == (void *)0x0))
    goto switchD_00cf02a4_caseD_5;
    piVar6 = (int *)((int)pvVar12 + 0x28);
    break;
  case 0x18:
    pvVar12 = (void *)FUN_004e4500(0x48,"UserTool/UserToolDebug",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cd74b0(pvVar12,piVar6);
    break;
  case 0x19:
    pvVar12 = (void *)FUN_004e4500(0x250,"UserTool/UserToolWallDrag",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d3d1b0(pvVar12,(int)piVar6);
    break;
  case 0x1a:
    pvVar12 = (void *)FUN_004e4500(0x98,"UserTool/UserToolBasement",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cd0800(pvVar12,(int)piVar6);
    break;
  case 0x1b:
    pvVar12 = (void *)FUN_004e4500(0x6c,"UserTool/UserToolRoofPitch",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = RoofPitch_Construct(pvVar12,piVar6);
    break;
  case 0x1c:
    puVar8 = (undefined4 *)FUN_004e4500(0x1e0,"UserTool/UserToolWorldObject",0);
    if (puVar8 == (undefined4 *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d453a0(puVar8);
    break;
  case 0x1d:
    puVar8 = (undefined4 *)FUN_004e4500(0x210,"UserTool/UserToolWorldLotOperations",0);
    if (puVar8 == (undefined4 *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00d42130(puVar8);
    break;
  case 0x1f:
    pvVar12 = (void *)FUN_004e4500(0x2a0,"UserTool/UserToolCurvedPool",0);
    if (pvVar12 == (void *)0x0) goto switchD_00cf02a4_caseD_5;
    piVar6 = FUN_00cd6ae0(pvVar12,(int)piVar6);
  }
  if (piVar6 != (int *)0x0) {
    iVar5 = piVar6[3];
    if (iVar5 != 0) {
      EnterCriticalSection((LPCRITICAL_SECTION)(iVar5 + 0xd0));
    }
    (**(code **)(*piVar6 + 4))(auStack_198);
    if (iVar5 != 0) {
      LeaveCriticalSection((LPCRITICAL_SECTION)(iVar5 + 0xd0));
    }
    UserToolHost_BindActiveTool(this,piVar6,'\0');
    *(int *)((int)this + 0x30) = param_1;
    FUN_004f64b0((void *)((int)this + 0x38),(int)auStack_198);
    FUN_004f64b0((void *)((int)this + 0x58),(int)auStack_178);
    FUN_004f64b0((void *)((int)this + 0x78),(int)auStack_158);
    FUN_004f64b0((void *)((int)this + 0x98),(int)auStack_138);
    *(undefined4 *)((int)this + 0xb8) = uStack_118;
  }
switchD_00cf02a4_caseD_5:
  FUN_00c9fa30(auStack_198);
  return;
}

