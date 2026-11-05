/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, mode DWORD and byte control in two words, RET8. With control0 and modeControl1, clears
   held pressed/current rotation/height/disposition state. Alt4 disables snap89 except B009F0 spiral
   staircase. Other shift/wall/copy flags and cursor updates remain native branches. */

void __thiscall ObjectTool_SetMode(void *this,uint param_1,char param_2)

{
  bool bVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  void *pvVar6;
  
  iVar3 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)this + 0x118));
  if (iVar3 != 0) {
    FUN_00c97730(iVar3);
  }
  iVar3 = FUN_00cef500();
  if (iVar3 != 0) {
    ScriptCore.GameUtils::GameUtils_AddOrConfigureProfiler();
  }
  if ((param_2 == '\0') && ((param_1 & 1) != 0)) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (iVar3 != 0) {
      uVar4 = FUN_00d25de0(iVar3);
      if (((char)uVar4 != '\0') && (*(char *)((int)this + 0x8b) != '\0')) {
        *(undefined1 *)((int)this + 0x8b) = 0;
        *(undefined1 *)((int)this + 0x1cc) = 0;
        *(undefined1 *)((int)this + 0x1cd) = 0;
        *(undefined1 *)((int)this + 0x1ce) = 0;
        *(undefined4 *)((int)this + 0x1c8) = 0xffffffff;
      }
    }
  }
  *(undefined1 *)((int)this + 0x1da) = 0;
  *(undefined1 *)((int)this + 0x1df) = 0;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar3 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar3 = *(int *)((int)this + 0x60);
  }
  if (iVar3 == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = *(int *)(iVar3 + 0x58);
  }
  uVar5 = FUN_00b00560(iVar3);
  FUN_00ced6d0(this,(char)uVar5);
  if ((param_1 & 2) != 0) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (iVar3 == 0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = *(void **)(iVar3 + 0x58);
    }
    bVar1 = Object_IsLevelAboveFloorCutout(pvVar6);
    if (!bVar1) {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar3 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar3 = *(int *)((int)this + 0x60);
      }
      if (iVar3 == 0) {
        pvVar6 = (void *)0x0;
      }
      else {
        pvVar6 = *(void **)(iVar3 + 0x58);
      }
      bVar1 = Object_IsSpiralStaircaseWithoutFloorCutout(pvVar6);
      if (!bVar1) {
        uVar2 = (**(code **)(*(int *)this + 0x90))();
        *(undefined1 *)((int)this + 0x1da) = uVar2;
        goto LAB_00cfebea;
      }
    }
    FUN_00ced6d0(this,1);
    *(undefined1 *)((int)this + 0x1df) = 1;
  }
LAB_00cfebea:
  if ((param_1 & 4) == 0) {
LAB_00cfec21:
    *(undefined1 *)((int)this + 0x89) = 1;
  }
  else {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (iVar3 == 0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = *(void **)(iVar3 + 0x58);
    }
    bVar1 = Object_IsSpiralStaircaseWithoutFloorCutout(pvVar6);
    if (bVar1) goto LAB_00cfec21;
    *(undefined1 *)((int)this + 0x89) = 0;
  }
  if (param_1 == 3) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar3 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar3 = *(int *)((int)this + 0x60);
    }
    if (iVar3 != 0) {
      uVar4 = FUN_00d25de0(iVar3);
      if ((char)uVar4 != '\0') goto LAB_00cfec65;
    }
    *(undefined1 *)((int)this + 0x8a) = 1;
    ObjectTool_UpdateHeldCursor((int)this);
    return;
  }
  *(undefined1 *)((int)this + 0x8a) = 0;
LAB_00cfec65:
  ObjectTool_UpdateHeldCursor((int)this);
  return;
}

