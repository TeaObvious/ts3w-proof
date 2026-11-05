/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. ECX lot with six stack args, RET18h.
   Requires lot+364, object, valid signed tile, catalog result, catalog+98 bit0x40, no catalog+A4
   bit0x1000 and exact required wall. requestedVisibilityWord is tested only by low byte and its
   stack slot is reused as scratch later. Ordinary branch emits event13(object,0/1); modesC9/CA/CC,
   room sets and special endpoint logic can skip or override hiding. A partially raised special wall
   can emit1 at00AC0550 even when requested0; see instruction comments. No universal
   either-endpoint-down final-visibility claim. */

void __thiscall
Lot_UpdateWallMountedObjectVisibility
          (void *this,void *object,char *wallLocator6,char *tile4,uint requestedVisibilityWord,
          byte firstUp,byte secondUp)

{
  char cVar1;
  char cVar2;
  int iVar3;
  byte bVar4;
  bool bVar5;
  char cVar6;
  short sVar7;
  short sVar8;
  void *pvVar9;
  uint uVar10;
  void *pvVar11;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
  if (*(int *)((int)this + 0x364) == 0) {
    return;
  }
  if (object == (void *)0x0) {
    return;
  }
  bVar5 = Lot_IsSignedTileInBounds(this,tile4);
  if (!bVar5) {
    return;
  }
  pvVar9 = Object_FindCatalogInfo(object);
  if (pvVar9 == (void *)0x0) {
    return;
  }
  uVar10 = ObjectCatalog_HideWhenWallDown(pvVar9);
  if ((char)uVar10 == '\0') {
    return;
  }
  uVar10 = ObjectCatalog_FlagsApplyToFences(pvVar9);
  if ((char)uVar10 != '\0') {
    return;
  }
  bVar5 = Object_RequiresWallLocator(object,wallLocator6);
  if (!bVar5) {
    return;
  }
                    /* Numeric modes at owner+154 are not named here. C9/CA/CC exceptions mean
                       endpoint AND is not the complete final visibility rule. */
  iVar3 = *(int *)(*(int *)((int)this + 0xc) + 0x154);
  if (((iVar3 == 0xc9) || (iVar3 == 0xca)) || (iVar3 == 0xcc)) {
    bVar5 = true;
  }
  else {
    bVar5 = false;
  }
  if ((char)requestedVisibilityWord == '\0') {
    if ((iVar3 == 0xc9) &&
       (uVar10 = Catalog_TestIntersectionCategoryOrD0Bit4(pvVar9), (char)uVar10 != '\0')) {
      return;
    }
    if (bVar5) {
      pvVar11 = (void *)HandTool_GetCurrentHeldPointer();
      if (pvVar11 == object) {
        return;
      }
    }
    else {
      uVar10 = Catalog_TestIntersectionCategoryMask(pvVar9);
      if ((char)uVar10 != '\0') {
        pvVar11 = *(void **)((int)this + 0x298);
        if (*(int *)((int)pvVar11 + 0xe4) == *(int *)((int)pvVar11 + 0xe8)) {
          if (*(char *)((int)this + 0x3a4) != '\0') {
            cVar6 = FUN_00791710();
LAB_00ac04a1:
            if (cVar6 != '\0') {
              return;
            }
          }
        }
        else {
          sVar7 = FUN_00b470e0(pvVar11,tile4,0,'\0');
          bVar5 = FUN_00abf1f0(*(void **)((int)this + 0x298),sVar7);
          if (bVar5) {
            return;
          }
          requestedVisibilityWord = 0xff00ffff;
          WallLocator_QueryOtherAdjacentTile
                    ((undefined2 *)wallLocator6,(undefined2 *)&requestedVisibilityWord);
          sVar8 = FUN_00b470e0(*(void **)((int)this + 0x298),(char *)&requestedVisibilityWord,0,'\0'
                              );
          pvVar11 = *(void **)((int)this + 0x298);
          bVar5 = FUN_00abf1f0(pvVar11,sVar8);
          if (bVar5) {
            return;
          }
          if (((*(char *)((int)this + 0x3a4) != '\0') ||
              (bVar5 = FUN_00abf240(pvVar11,sVar7), bVar5)) ||
             (bVar5 = FUN_00abf240(pvVar11,sVar8), bVar5)) {
            cVar6 = FUN_00791710();
            goto LAB_00ac04a1;
          }
        }
      }
    }
    bVar4 = firstUp;
                    /* Partial endpoint exception: if either endpoint UP, catalog trait00C97A00 true
                       and00B48B80(endpoint) true, no catalog+D0 bit4 causes event13(value1) even
                       though requested lowbyte0. */
    if (((secondUp != 0) || (firstUp != 0)) &&
       (uVar10 = Catalog_TestIntersectionCategoryOrD0Bit4(pvVar9), (char)uVar10 != '\0')) {
      if (bVar4 == 0) {
        cVar6 = wallLocator6[3];
        cVar1 = wallLocator6[4];
        cVar2 = wallLocator6[5];
      }
      else {
        cVar6 = *wallLocator6;
        cVar1 = wallLocator6[1];
        cVar2 = wallLocator6[2];
      }
      local_10 = (int)cVar2;
      local_18 = (float)(int)cVar6;
      local_14 = (float)(int)cVar1;
      local_c = local_18;
      local_8 = local_14;
      local_4 = local_10;
      uVar10 = FUN_00b48b80(*(void **)((int)this + 0x298),&local_18);
      if ((char)uVar10 != '\0') {
        if ((*(uint *)((int)pvVar9 + 0xd0) >> 2 & 1) == 0) goto LAB_00ac0382;
        FUN_00b0c120(object);
      }
    }
    pvVar9 = (void *)0x0;
  }
  else {
    if (firstUp == 0) {
      cVar6 = wallLocator6[3];
      cVar1 = wallLocator6[4];
      cVar2 = wallLocator6[5];
    }
    else {
      cVar6 = *wallLocator6;
      cVar1 = wallLocator6[1];
      cVar2 = wallLocator6[2];
    }
    local_10 = (int)cVar2;
    local_18 = (float)(int)cVar6;
    local_14 = (float)(int)cVar1;
    local_c = local_18;
    local_8 = local_14;
    local_4 = local_10;
    if (((*(uint *)((int)pvVar9 + 0xd0) >> 2 & 1) != 0) &&
       (uVar10 = FUN_00b48b80(*(void **)((int)this + 0x298),&local_c), (char)uVar10 != '\0')) {
      WorldObject_ApplyAuthoredWallAndFenceCutoutRows(object);
    }
LAB_00ac0382:
    pvVar9 = (void *)0x1;
  }
  ObjectEvents_Dispatch(0xd,object,pvVar9);
  return;
}

