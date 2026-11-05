/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, four stack words, RET10hex; event0/1/2 are press/release/move. Saves Int32 screen point
   and current raw XZLevel/pose on press. Ordinary move recomputes rotation byte1CC from signed
   Manhattan distance>16; separateB0 threshold-crossed state stays set. Wall-height branch uses
   separate thresholds/bytes; no assertion that current1CC is sticky. */

void __thiscall ObjectTool_ProcessPointerEvent(void *this,int param_1,int param_2,int param_3)

{
  void *this_00;
  code *pcVar1;
  char cVar2;
  undefined1 uVar3;
  bool bVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  void *pvVar10;
  uint uVar11;
  uint uVar12;
  int iVar13;
  undefined1 local_70;
  undefined1 local_6f;
  undefined1 local_6e;
  undefined1 local_6d;
  undefined1 local_6c;
  undefined1 local_6b;
  undefined1 local_6a;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 local_58;
  undefined1 local_57;
  undefined1 local_56;
  float afStack_50 [19];
  
  iVar9 = *(int *)((int)this + 0x31c);
  iVar13 = *(int *)((int)this + 800);
  local_6f = 1;
  local_6e = 1;
  local_6d = 0;
  local_6c = 0;
  local_6b = 0;
  local_6a = 0;
  local_68 = 0;
  local_60 = 0;
  local_5c = 0;
  local_58 = 0;
  local_57 = 0;
  local_56 = 0;
  local_64 = 0x14;
  local_70 = 1;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar5 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar5 = *(int *)((int)this + 0x60);
  }
  if ((iVar5 != 0) && (iVar5 = *(int *)(iVar5 + 0x58), iVar5 != 0)) {
    local_60 = *(undefined4 *)(iVar5 + 8);
    local_5c = *(undefined4 *)(iVar5 + 0xc);
    iVar6 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(iVar5 + 0x18));
    if (iVar6 != 0) {
      if (((*(byte *)(iVar6 + 0xa4) & 0x3f) != 0) &&
         (uVar7 = FUN_00cfe2a0(iVar5), (char)uVar7 == '\0')) {
        local_57 = 1;
      }
      iVar5 = *(int *)((int)this + 0xc);
      if ((((*(int *)(iVar5 + 0x408) == 1) && (*(int *)(iVar5 + 0x40c) == 0x50)) ||
          (*(char *)(iVar5 + 0x4b0) != '\0')) && (uVar7 = FUN_00afc8b0(iVar6), (char)uVar7 != '\0'))
      {
        local_56 = 1;
      }
    }
  }
  UserTool_UpdatePickContext(this,param_1,iVar9 + param_2,iVar13 + param_3,(undefined4 *)&local_70);
  if (param_1 == 0) {
    if (*(char *)((int)this + 0x8a) != '\0') {
      return;
    }
    thunk_FUN_00792320();
    if (*(int *)((int)this + 0x1c4) != 0) {
      FUN_00ccafe0(*(int *)((int)this + 0x1c4));
    }
    *(undefined1 *)((int)this + 0x8b) = 1;
    *(int *)((int)this + 0x8c) = param_2;
    *(int *)((int)this + 0x90) = param_3;
    *(undefined1 *)((int)this + 0x1cc) = 0;
    *(undefined1 *)((int)this + 0x1cd) = 0;
    *(undefined1 *)((int)this + 0xb0) = 0;
    *(undefined1 *)((int)this + 0xb1) = 0;
    *(undefined1 *)((int)this + 0xb2) = 0;
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar9 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar9 = *(int *)((int)this + 0x60);
    }
    if ((iVar9 == 0) || (uVar7 = FUN_00d25de0(iVar9), (char)uVar7 == '\0')) {
      uVar3 = 0;
    }
    else {
      uVar3 = 1;
    }
    *(undefined1 *)((int)this + 0x1ce) = uVar3;
    pvVar10 = FUN_00ccf730(this,(float *)0x0,'\x01','\0');
    if ((pvVar10 == (void *)0x0) || (uVar7 = FUN_00b00690(pvVar10), (char)uVar7 == '\0')) {
      if ((*(int *)((int)this + 0x360) != 0) &&
         (bVar4 = FUN_00cedbc0(*(int *)((int)this + 0x360)), !bVar4)) {
        (**(code **)(**(int **)((int)this + 0x360) + 0xc))(param_2,param_3);
        uVar7 = FUN_00d3bc40(*(int *)((int)this + 0x360));
        *(char *)((int)this + 0x364) = (char)uVar7;
        *(char *)((int)this + 0x8b) = (char)uVar7;
      }
    }
    else {
      pvVar10 = (void *)FUN_00cfa6a0(pvVar10);
      if (*(char *)((int)this + 0x1ce) == '\0') {
        this_00 = (void *)((int)this + 0x270);
        FUN_00ad77d0((int)this_00);
        cVar2 = (**(code **)(*(int *)this + 0x8c))(pvVar10);
        if (cVar2 == '\0') {
          bVar4 = FUN_00ad6f10((int)this_00);
          if (!bVar4) {
            FUN_00ad6fb0(afStack_50,0x4a,pvVar10);
            FUN_00ad8570(this_00,afStack_50);
            FUN_00ad70d0((int)afStack_50);
          }
          FUN_00cd3890(this_00,1,'\x01');
        }
        else {
          *(undefined1 *)((int)this + 0x2f2) = 0;
        }
      }
      if (((*(char *)((int)this + 0x2f0) == '\0') || (*(char *)((int)this + 0x2f2) == '\0')) &&
         (uVar7 = FUN_00cfb8a0((int)this), (char)uVar7 == '\0')) {
        (**(code **)(*(int *)this + 0x74))(pvVar10,0);
      }
      if (*(int *)((int)this + 0x360) != 0) {
        FUN_00cedbb0(*(int *)((int)this + 0x360));
      }
    }
    *(undefined4 *)((int)this + 0x94) = *(undefined4 *)((int)this + 0xb8);
    *(undefined4 *)((int)this + 0x98) = *(undefined4 *)((int)this + 0xbc);
    *(undefined4 *)((int)this + 0x9c) = *(undefined4 *)((int)this + 0xc0);
    *(undefined4 *)((int)this + 0xa0) = *(undefined4 *)((int)this + 0xd0);
    *(undefined4 *)((int)this + 0xa4) = *(undefined4 *)((int)this + 0xd4);
    *(undefined4 *)((int)this + 0xa8) = *(undefined4 *)((int)this + 0xd8);
    *(undefined4 *)((int)this + 0xac) = *(undefined4 *)((int)this + 0xdc);
    return;
  }
  if (param_1 == 1) {
    if (*(char *)((int)this + 0x8a) != '\0') {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar9 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar9 = *(int *)((int)this + 0x60);
      }
      if (((iVar9 == 0) || (uVar7 = FUN_00d25de0(iVar9), (char)uVar7 == '\0')) &&
         (cVar2 = FUN_00790ef0(), cVar2 != '\0')) {
        FUN_00790fd0();
        return;
      }
    }
    *(undefined1 *)((int)this + 0x8b) = 0;
    *(undefined1 *)((int)this + 0x1cc) = 0;
    *(undefined1 *)((int)this + 0x1cd) = 0;
    *(undefined4 *)((int)this + 0x1c8) = 0xffffffff;
    ObjectTool_UpdateHeldCursor((int)this);
    if (*(char *)((int)this + 0x2f0) != '\0') {
      FUN_00ccf730(this,(float *)0x0,'\x01','\0');
    }
    if (*(int *)((int)this + 0x1c4) == 0) {
      return;
    }
    FUN_00ccafe0(*(int *)((int)this + 0x1c4));
    return;
  }
  if (param_1 != 2) {
    return;
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar9 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar9 = *(int *)((int)this + 0x60);
  }
  if ((iVar9 == 0) || (uVar7 = FUN_00d25de0(iVar9), (char)uVar7 == '\0')) {
    if (*(char *)((int)this + 0x8b) != '\0') {
      return;
    }
    *(undefined4 *)((int)this + 0x1d4) = 0x5aed100;
    iVar9 = FUN_00cef500();
    if (*(char *)(iVar9 + 0x1d0) == '\0') {
      if (*(char *)((int)this + 0x8a) != '\0') {
        cVar2 = FUN_00790ef0();
        *(uint *)((int)this + 0x1d4) = (-(uint)(cVar2 != '\0') & 0xfffffffe) + 0x653e102;
        FUN_00ccea10();
        return;
      }
      pvVar10 = FUN_00ccf730(this,(float *)0x0,'\x01','\0');
      if (pvVar10 == (void *)0x0) {
        *(undefined1 *)((int)this + 0x2f2) = 0;
        *(undefined1 *)((int)this + 0x2f3) = 0;
        if ((*(int **)((int)this + 0x360) != (int *)0x0) && (*(int *)(DAT_011edbc4 + 0x154) == 0xc9)
           ) {
          (**(code **)(**(int **)((int)this + 0x360) + 0x14))(param_2,param_3);
          uVar7 = FUN_00d3bc40(*(int *)((int)this + 0x360));
          if ((char)uVar7 != '\0') {
            *(undefined4 *)((int)this + 0x1d4) = 0x5aed100;
          }
        }
      }
      else {
        cVar2 = (**(code **)(*(int *)this + 0x8c))(pvVar10);
        if (cVar2 == '\0') {
          pcVar1 = *(code **)(*(int *)this + 0x9c);
          *(undefined1 *)((int)this + 0x2f3) = 0;
          cVar2 = (*pcVar1)(pvVar10);
          if (cVar2 != '\0') {
            (**(code **)(*(int *)this + 0xa0))(pvVar10);
          }
        }
        else {
          *(undefined1 *)((int)this + 0x2f3) = 1;
          *(undefined1 *)((int)this + 0x2f2) = 0;
          *(undefined4 *)((int)this + 0x1d4) = 0x5aed101;
        }
        if (*(int *)((int)this + 0x360) != 0) {
          uVar7 = FUN_00d3bc40(*(int *)((int)this + 0x360));
          if ((char)uVar7 != '\0') {
            FUN_00d3d990(*(void **)((int)this + 0x360));
            FUN_00cd3810(*(int *)((int)this + 0x360));
            thunk_FUN_00792320();
          }
          FUN_00cedbb0(*(int *)((int)this + 0x360));
          FUN_00ccea10();
          return;
        }
      }
    }
    FUN_00ccea10();
    return;
  }
  if (*(char *)((int)this + 0x8b) == '\0') goto LAB_00d0756c;
  uVar8 = param_2 - *(int *)((int)this + 0x8c);
  uVar11 = param_3 - *(int *)((int)this + 0x90);
  uVar12 = (int)uVar8 >> 0x1f;
  iVar13 = (uVar8 ^ uVar12) - uVar12;
  iVar9 = (uVar11 ^ (int)uVar11 >> 0x1f) - ((int)uVar11 >> 0x1f);
  *(uint *)((int)this + 0xec) = uVar11;
  if (*(char *)((int)this + 0xb0) == '\0') {
    iVar5 = *(int *)((int)this + 0x1b8);
    pvVar10 = (void *)FUN_00cfb880((int)this);
    uVar7 = FUN_00b032e0(pvVar10,iVar5);
    if ((char)uVar7 != '\0') {
      if (*(char *)((int)this + 0xb1) == '\0') {
        iVar5 = *(int *)((int)this + 0x368);
        if ((iVar13 < iVar5) && (iVar5 < iVar9)) {
          *(undefined1 *)((int)this + 0x1ce) = 1;
          *(undefined1 *)((int)this + 0x1cd) = 1;
          *(undefined1 *)((int)this + 0xb1) = 1;
          *(bool *)((int)this + 0xb2) = *(int *)((int)this + 0xec) < 0;
          *(undefined4 *)((int)this + 0xe4) = 0;
        }
        else {
          *(undefined1 *)((int)this + 0x1cd) = 0;
          if (iVar5 < iVar13) {
            *(undefined1 *)((int)this + 0x1cc) = 1;
            *(undefined1 *)((int)this + 0x1ce) = 1;
            *(undefined1 *)((int)this + 0xb0) = 1;
            ObjectTool_UpdateHeldCursor((int)this);
            goto LAB_00d0756c;
          }
        }
        *(undefined1 *)((int)this + 0x1cc) = 0;
        ObjectTool_UpdateHeldCursor((int)this);
      }
      goto LAB_00d0756c;
    }
  }
  if ((*(char *)((int)this + 0xb1) == '\0') && (0x10 < iVar9 + iVar13)) {
    *(undefined1 *)((int)this + 0x1ce) = 1;
    *(undefined1 *)((int)this + 0x1cc) = 1;
    *(undefined1 *)((int)this + 0xb0) = 1;
    ObjectTool_UpdateHeldCursor((int)this);
  }
  else {
    *(undefined1 *)((int)this + 0x1cc) = 0;
  }
LAB_00d0756c:
  if (*(char *)((int)this + 0x1cc) != '\0') {
    return;
  }
  FUN_00d00a00(this,(undefined4 *)((int)this + 0x324));
  return;
}

