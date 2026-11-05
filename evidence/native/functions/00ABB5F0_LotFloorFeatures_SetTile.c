/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 ECXlot+four stack words location/flags/set/mask, RET10hex, void. Signed compact X/Z/level
   bounded before access. Set ORs raw byte flags, first Puddle1 replaces mask and an existing puddle
   ORs masks; clear ANDs complement flags, and any clear containing Puddle1 resets maskFFFF
   regardless of passed mask. All raw flag bits survive. Only transitions for bits1/2/8 emit
   messages143DDCCF/0CF1F010/06592B57, in that order; puddle mask changes also emit, retaining input
   set/mask in payload. Zero flag layer is freed only after old-nonzero/newzero transition and full
   scan. Layer allocation, dispatch availability and native failure effects are separate from scalar
   cell arithmetic. */

void __thiscall LotFloorFeatures_SetTile(void *this,char *location,byte flags,byte set,ushort mask)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  char *pcVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  bool bVar10;
  bool bVar11;
  bool bVar12;
  void *pvVar13;
  undefined *puVar14;
  char *pcVar15;
  int *piVar16;
  int *piVar17;
  byte bVar18;
  ushort uVar19;
  int iVar20;
  int iVar21;
  uint local_4;
  
  if (*location < 0) {
    return;
  }
  if (*(int *)((int)this + 0x174) <= (int)*location) {
    return;
  }
  if (location[1] < 0) {
    return;
  }
  if (*(int *)((int)this + 0x178) <= (int)location[1]) {
    return;
  }
  if ((int)location[2] < *(int *)((int)this + 0x17c)) {
    return;
  }
  if (*(int *)((int)this + 0x180) < (int)location[2]) {
    return;
  }
  if ((set != 0) && (*(int *)((int)this + 0x29c) == 0)) {
    pvVar13 = (void *)FUN_004e4500(0x20,"Lot/FloorFeatureLayer",0);
    if (pvVar13 == (void *)0x0) {
      puVar14 = (undefined *)0x0;
    }
    else {
      puVar14 = ByteWorldGrid_Construct(pvVar13,"Lot/FloorFeatureLayer");
    }
    *(undefined **)((int)this + 0x29c) = puVar14;
    if (puVar14 == (undefined *)0x0) {
      return;
    }
    WorldGrid_SetDimensions
              (puVar14,*(int *)((int)this + 0x174),*(int *)((int)this + 0x178),
               *(int *)((int)this + 0x184));
    pvVar13 = *(void **)(*(int *)((int)this + 0x29c) + 0x10);
    memset(pvVar13,0,*(int *)(*(int *)((int)this + 0x29c) + 0x14) - (int)pvVar13);
    pvVar13 = (void *)FUN_004e4500(0x20,"Lot/FloorFeatureMaskLayer",0);
    if (pvVar13 == (void *)0x0) {
      puVar14 = (undefined *)0x0;
    }
    else {
      puVar14 = UInt16WorldGrid_Construct(pvVar13,"Lot/FloorFeatureMaskLayer");
    }
    *(undefined **)((int)this + 0x2a0) = puVar14;
    if (puVar14 == (undefined *)0x0) {
      return;
    }
    WorldGrid_SetDimensions
              (puVar14,*(int *)((int)this + 0x174),*(int *)((int)this + 0x178),
               *(int *)((int)this + 0x184));
    local_4 = 0xffff;
    UInt16WorldGrid_FillAll(*(void **)((int)this + 0x2a0),(ushort *)&local_4);
  }
  iVar3 = *(int *)((int)this + 0x29c);
  bVar7 = false;
  bVar8 = false;
  bVar9 = false;
  bVar10 = false;
  bVar11 = false;
  bVar12 = false;
  if (iVar3 != 0) {
    iVar21 = (int)location[2] - *(int *)((int)this + 0x17c);
    iVar20 = (int)*location;
    bVar1 = *(byte *)((*(int *)(iVar3 + 4) * iVar21 + iVar20) * *(int *)(iVar3 + 8) +
                      *(int *)(iVar3 + 0x10) + (int)location[1]);
    iVar4 = *(int *)((int)this + 0x2a0);
    uVar2 = *(ushort *)
             (*(int *)(iVar4 + 0x10) +
             ((*(int *)(iVar4 + 4) * iVar21 + iVar20) * *(int *)(iVar4 + 8) + (int)location[1]) * 2)
    ;
    local_4 = (uint)uVar2;
    uVar19 = uVar2;
    if (set == 0) {
      bVar18 = ~flags & bVar1;
      if ((flags & 1) != 0) {
        uVar19 = 0xffff;
      }
    }
    else {
      bVar18 = flags | bVar1;
      if ((flags & 1) != 0) {
        if ((bVar1 & 1) == 0) {
          uVar19 = mask;
        }
        else {
          uVar19 = uVar2 | mask;
        }
      }
    }
    *(byte *)((int)location[1] +
             (*(int *)(iVar3 + 4) * iVar21 + iVar20) * *(int *)(iVar3 + 8) + *(int *)(iVar3 + 0x10))
         = bVar18;
    iVar3 = *(int *)((int)this + 0x2a0);
    *(ushort *)
     (*(int *)(iVar3 + 0x10) +
     ((*(int *)(iVar3 + 4) * iVar21 + (int)*location) * *(int *)(iVar3 + 8) + (int)location[1]) * 2)
         = uVar19;
    if (((bVar1 & 1) == 0) || ((bVar18 & 1) != 0)) {
      if ((((bVar1 & 1) == 0) || (uVar2 != uVar19)) && ((bVar18 & 1) != 0)) {
        bVar7 = true;
      }
    }
    else {
      bVar8 = true;
    }
    if (((bVar1 & 2) == 0) || ((bVar18 & 2) != 0)) {
      if (((bVar1 & 2) == 0) && ((bVar18 & 2) != 0)) {
        bVar9 = true;
      }
    }
    else {
      bVar10 = true;
    }
    if (((bVar1 & 8) == 0) || ((bVar18 & 8) != 0)) {
      if (((bVar1 & 8) == 0) && ((bVar18 & 8) != 0)) {
        bVar11 = true;
      }
    }
    else {
      bVar12 = true;
    }
    if ((bVar1 != 0) && (bVar18 == 0)) {
      puVar5 = *(undefined4 **)((int)this + 0x29c);
      pcVar6 = (char *)puVar5[5];
      pcVar15 = (char *)puVar5[4];
      if (pcVar15 != pcVar6) {
        do {
          if (*pcVar15 != '\0') break;
          pcVar15 = pcVar15 + 1;
        } while (pcVar15 != pcVar6);
        if (pcVar15 != pcVar6) goto LAB_00abb8f0;
      }
      if (puVar5 != (undefined4 *)0x0) {
        (**(code **)*puVar5)(1);
      }
      *(undefined4 *)((int)this + 0x29c) = 0;
      if (*(undefined4 **)((int)this + 0x2a0) != (undefined4 *)0x0) {
        (**(code **)**(undefined4 **)((int)this + 0x2a0))(1);
      }
      *(undefined4 *)((int)this + 0x2a0) = 0;
    }
  }
LAB_00abb8f0:
  piVar16 = (int *)MessageDispatch_GetCurrent();
  if (piVar16 != (int *)0x0) {
    if ((bVar7) || (bVar8)) {
      piVar17 = FloorMessagePool_AcquireStorage();
      if (piVar17 == (int *)0x0) {
        piVar17 = (int *)0x0;
      }
      else {
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar17[1] = 0;
        UNLOCK();
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        *(undefined1 *)(piVar17 + 4) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x11) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x12) = 0;
        (**(code **)(*piVar17 + 4))();
      }
      piVar17[2] = *(int *)((int)this + 0x48);
      piVar17[3] = *(int *)((int)this + 0x4c);
      *(undefined2 *)(piVar17 + 4) = *(undefined2 *)location;
      *(char *)((int)piVar17 + 0x12) = location[2];
      *(ushort *)(piVar17 + 5) = mask;
      *(byte *)((int)piVar17 + 0x16) = set;
      (**(code **)(*piVar16 + 0x1c))(0x143ddccf,piVar17,0,0);
      (**(code **)(*piVar17 + 8))();
    }
    if ((bVar9) || (bVar10)) {
      piVar17 = FloorMessagePool_AcquireStorage();
      if (piVar17 == (int *)0x0) {
        piVar17 = (int *)0x0;
      }
      else {
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar17[1] = 0;
        UNLOCK();
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        *(undefined1 *)(piVar17 + 4) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x11) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x12) = 0;
        (**(code **)(*piVar17 + 4))();
      }
      piVar17[2] = *(int *)((int)this + 0x48);
      piVar17[3] = *(int *)((int)this + 0x4c);
      *(undefined2 *)(piVar17 + 4) = *(undefined2 *)location;
      *(char *)((int)piVar17 + 0x12) = location[2];
      *(byte *)((int)piVar17 + 0x16) = set;
      *(undefined2 *)(piVar17 + 5) = 0xffff;
      (**(code **)(*piVar16 + 0x1c))(0xcf1f010,piVar17,0,0);
      (**(code **)(*piVar17 + 8))();
    }
    if ((bVar11) || (bVar12)) {
      piVar17 = FloorMessagePool_AcquireStorage();
      if (piVar17 == (int *)0x0) {
        piVar17 = (int *)0x0;
      }
      else {
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar17[1] = 0;
        UNLOCK();
        *piVar17 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        *(undefined1 *)(piVar17 + 4) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x11) = 0xff;
        *(undefined1 *)((int)piVar17 + 0x12) = 0;
        (**(code **)(*piVar17 + 4))();
      }
      piVar17[2] = *(int *)((int)this + 0x48);
      piVar17[3] = *(int *)((int)this + 0x4c);
      *(undefined2 *)(piVar17 + 4) = *(undefined2 *)location;
      *(char *)((int)piVar17 + 0x12) = location[2];
      *(byte *)((int)piVar17 + 0x16) = set;
      *(undefined2 *)(piVar17 + 5) = 0xffff;
      (**(code **)(*piVar16 + 0x1c))(0x6592b57,piVar17,0,0);
      (**(code **)(*piVar17 + 8))();
    }
  }
  return;
}

