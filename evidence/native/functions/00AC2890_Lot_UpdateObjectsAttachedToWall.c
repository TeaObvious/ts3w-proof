/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. ECX lot, six signed locator bytes (two
   XYZ/level triples), endpoint state low bytes. Primary-cell requested visibility = both endpoint
   bytes nonzero. Collects primary GUIDs, resolves borrowed objects and calls00AC0250; primary
   duplicates can be processed repeatedly. Diagonal path only when both planar coordinates differ;
   indices0..2 skip other cell, validate signed bounds, suppress previously seen GUIDs, and can
   choose one endpoint state by00AF7B70. No generic nearest-endpoint claim. */

void __thiscall
Lot_UpdateObjectsAttachedToWall(void *this,char *wallLocator6,byte firstUp,byte secondUp)

{
  ushort uVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  uint *puVar6;
  void *pvVar7;
  undefined4 uVar8;
  int iVar9;
  uint *puVar10;
  int iVar11;
  uint uVar12;
  char local_40;
  char local_3f;
  char local_3e;
  char local_3d;
  char local_3c;
  char local_3b;
  char local_3a;
  undefined1 local_39;
  char local_38;
  char local_37;
  char local_36;
  char local_35;
  uint local_34;
  int local_30;
  void *local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  void *local_14;
  uint *local_10;
  uint *local_c;
  char *local_8;
  
  iVar11 = 0;
  if (*(int *)((int)this + 0x364) == 0) {
    return;
  }
  local_3c = -1;
  local_3b = -1;
  local_3a = '\0';
  local_39 = 0xff;
  FUN_00c45f20(wallLocator6,(undefined2 *)&local_3c);
  bVar2 = Lot_IsSignedTileInBounds(this,&local_3c);
  if (!bVar2) {
    return;
  }
                    /* Both raw endpoint lowbytes nonzero -> requested visibility1. Otherwise0; no
                       high stack-byte significance. */
  if (firstUp != 0) {
    local_34 = CONCAT31(local_34._1_3_,1);
    if (secondUp != 0) goto LAB_00ac28f8;
  }
  local_34 = local_34 & 0xffffff00;
LAB_00ac28f8:
  uVar3 = FUN_00ab4800(this,&local_3c);
  local_14 = (void *)0x0;
  local_10 = (uint *)0x0;
  local_c = (uint *)0x0;
  local_8 = "World/Lot/HideShowObjectsAttachedToWall/objIDSet";
  local_28 = uVar3;
  local_2c = ObjectRegistry_GetGlobal();
  if (0 < (int)uVar3) {
    do {
      iVar9 = *(int *)((int)this + 0x2d0);
      iVar4 = (((int)local_3a - *(int *)((int)this + 0x17c)) * *(int *)(iVar9 + 0x20) +
              ((int)local_3c >> 2)) * *(int *)(iVar9 + 0x24) + ((int)local_3b >> 2);
      uVar1 = *(ushort *)(*(int *)(iVar9 + 0x48) + iVar4 * 2);
      if ((uVar1 & 0x8000) == 0) {
        piVar5 = (int *)((((int)local_3b & 3U) + (((int)local_3c & 3U) + (uint)uVar1 * 4) * 4) *
                         0x10 + *(int *)(iVar9 + 0x28));
      }
      else {
        piVar5 = (int *)(iVar4 * 0x10 + *(int *)(iVar9 + 0x38));
      }
      if ((iVar11 < 0) || (iVar9 = *piVar5, piVar5[1] - iVar9 >> 3 <= iVar11)) {
        uVar3 = 0;
        uVar12 = 0;
      }
      else {
        uVar3 = *(uint *)(iVar9 + iVar11 * 8);
        uVar12 = *(uint *)(iVar9 + 4 + iVar11 * 8);
      }
      local_24 = uVar3;
      local_20 = uVar12;
      puVar6 = (uint *)FUN_00627330((int)local_14,(int)local_10,&local_24);
      if ((puVar6 == local_10) ||
         ((puVar10 = local_10, uVar12 <= puVar6[1] && ((uVar12 < puVar6[1] || (uVar3 < *puVar6))))))
      {
        if ((local_10 == local_c) || (puVar6 != local_10)) {
          FUN_00572360(&local_14,puVar6,&local_24);
          puVar10 = local_10;
        }
        else {
          puVar10 = local_10 + 2;
          if (local_10 != (uint *)0x0) {
            *local_10 = uVar3;
            local_10[1] = uVar12;
          }
        }
      }
                    /* Primary GUID loop still processes after set insertion attempt. Do not infer
                       global once-per-object deduplication. */
      local_10 = puVar10;
      pvVar7 = ObjectRegistry_FindBorrowed(local_2c,CONCAT44(local_20,local_24));
      if (pvVar7 != (void *)0x0) {
        Lot_UpdateWallMountedObjectVisibility
                  (this,pvVar7,wallLocator6,&local_3c,local_34,firstUp,secondUp);
      }
      iVar11 = iVar11 + 1;
    } while (iVar11 < (int)local_28);
  }
  if ((wallLocator6[3] != *wallLocator6) && (wallLocator6[4] != wallLocator6[1])) {
    local_38 = -1;
    local_37 = -1;
    local_36 = '\0';
    local_35 = -1;
    FUN_00c45fb0((undefined2 *)wallLocator6,(undefined2 *)&local_38);
    local_28 = 0;
    do {
      uVar3 = local_28;
      local_40 = -1;
      local_3f = -1;
      local_3e = '\0';
      local_3d = -1;
      FUN_00af74d0(&local_3c,local_28,&local_40);
      if ((((local_40 != local_38) || (local_3f != local_37)) || (local_3e != local_36)) ||
         (local_3d != local_35)) {
        if ((((-1 < local_40) && ((int)local_40 < *(int *)((int)this + 0x174))) &&
            ((-1 < local_3f &&
             (((int)local_3f < *(int *)((int)this + 0x178) &&
              (*(int *)((int)this + 0x17c) <= (int)local_3e)))))) &&
           ((int)local_3e <= *(int *)((int)this + 0x180))) {
          if (firstUp != secondUp) {
            uVar8 = FUN_00af7b70(wallLocator6,&local_40);
            if ((char)uVar8 == '\0') {
              local_34 = CONCAT31(local_34._1_3_,secondUp);
            }
            else {
              local_34 = CONCAT31(local_34._1_3_,firstUp);
            }
          }
          local_24 = FUN_00ab4800(this,&local_40);
          local_30 = 0;
          if (0 < (int)local_24) {
            do {
              puVar6 = local_10;
              iVar11 = *(int *)((int)this + 0x2d0);
              iVar9 = (((int)local_3e - *(int *)((int)this + 0x17c)) * *(int *)(iVar11 + 0x20) +
                      ((int)local_40 >> 2)) * *(int *)(iVar11 + 0x24) + ((int)local_3f >> 2);
              uVar1 = *(ushort *)(*(int *)(iVar11 + 0x48) + iVar9 * 2);
              if ((uVar1 & 0x8000) == 0) {
                piVar5 = (int *)((((int)local_3f & 3U) +
                                 (((int)local_40 & 3U) + (uint)uVar1 * 4) * 4) * 0x10 +
                                *(int *)(iVar11 + 0x28));
              }
              else {
                piVar5 = (int *)(iVar9 * 0x10 + *(int *)(iVar11 + 0x38));
              }
              if ((local_30 < 0) || (iVar11 = *piVar5, piVar5[1] - iVar11 >> 3 <= local_30)) {
                uVar3 = 0;
                uVar12 = 0;
              }
              else {
                uVar3 = *(uint *)(iVar11 + local_30 * 8);
                uVar12 = *(uint *)(iVar11 + 4 + local_30 * 8);
              }
              local_1c = uVar3;
              local_18 = uVar12;
              puVar10 = (uint *)FUN_00627330((int)local_14,(int)local_10,&local_1c);
              if (puVar10 == puVar6) {
LAB_00ac2c59:
                if ((puVar6 == local_c) || (puVar10 != puVar6)) {
                  FUN_00572360(&local_14,puVar10,&local_1c);
                }
                else {
                  local_10 = puVar6 + 2;
                  if (puVar6 != (uint *)0x0) {
                    *puVar6 = uVar3;
                    puVar6[1] = uVar12;
                  }
                }
LAB_00ac2c86:
                pvVar7 = ObjectRegistry_FindBorrowed(local_2c,CONCAT44(local_18,local_1c));
                if (pvVar7 != (void *)0x0) {
                  Lot_UpdateWallMountedObjectVisibility
                            (this,pvVar7,wallLocator6,&local_3c,local_34,firstUp,secondUp);
                }
              }
              else if ((uVar12 < puVar10[1]) ||
                      (((uVar12 <= puVar10[1] && (uVar3 < *puVar10)) || (puVar10 == puVar10 + 2))))
              {
                if ((puVar10 == puVar6) ||
                   ((uVar12 <= puVar10[1] && ((uVar12 < puVar10[1] || (uVar3 < *puVar10))))))
                goto LAB_00ac2c59;
                goto LAB_00ac2c86;
              }
              local_30 = local_30 + 1;
              uVar3 = local_28;
            } while (local_30 < (int)local_24);
          }
        }
      }
      local_28 = uVar3 + 1;
    } while (local_28 < 3);
  }
  if (local_14 != (void *)0x0) {
    Memory_FreeIfNonNull(local_14);
  }
  return;
}

