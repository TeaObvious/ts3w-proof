/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Walks registered lot objects whose footprint component is enabled, derives
   the component-box polygon through B0EC20, rasterizes tile parts with AD1990, and updates render
   snow-disable source0 through Seasons_SetObjectSnowDisableSource. The selected object's bounding
   polygon comes from its component box; enabled footprint polygons are not recombined here.
   Roof/greenhouse and below-ground cases remain separate branches. */

void __thiscall Seasons_UpdateExteriorObjectRoofSnowAdmission(void *this,int *param_1)

{
  LPCRITICAL_SECTION lpCriticalSection;
  ushort uVar1;
  int iVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  int *piVar6;
  void *pvVar7;
  undefined *component;
  uint uVar8;
  char *pcVar9;
  ulonglong *puVar10;
  int local_110;
  ulonglong *local_10c;
  int *local_108;
  void *local_104;
  uint local_100;
  char *local_fc;
  char *local_f8;
  undefined4 local_f4;
  char *local_f0;
  uint local_ec;
  int *local_e8;
  uint local_e4;
  void *local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  char *local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  float local_c4;
  undefined1 local_c0 [4];
  undefined4 *local_bc;
  uint local_b8;
  undefined4 local_b4;
  float local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  void *local_a0;
  undefined1 local_9c [4];
  int *local_98;
  uint local_94;
  undefined4 local_90;
  float local_8c;
  undefined4 local_88;
  undefined4 local_84;
  char *local_80;
  void *local_7c;
  float local_78;
  float local_74;
  float local_70;
  uint local_6c;
  int local_68;
  int local_64;
  int local_60;
  uint local_5c;
  int local_58;
  int *local_54;
  float local_50;
  float local_4c;
  float local_48;
  int local_44;
  ulonglong *local_40;
  int local_38;
  undefined4 local_30 [2];
  undefined4 local_28 [2];
  undefined4 local_20 [3];
  undefined4 local_14 [4];
  
  local_54 = this;
  local_7c = ObjectRegistry_GetGlobal();
  local_110 = *(int *)((int)this + 0x180);
  if (*(int *)((int)this + 0x17c) <= *(int *)((int)this + 0x180)) {
    local_58 = 0;
    do {
      piVar4 = &local_58;
      if (-1 < local_110) {
        piVar4 = &local_110;
      }
      local_a0 = (void *)(*piVar4 * 0x20 + *param_1);
      local_a4 = "Lot/GetObjectsWithinRect/objIDSet";
      local_80 = "Lot/GetObjectsWithinRect/objIDSet";
      local_b0 = 1.0;
      local_ac = 0x40000000;
      local_b8 = 1;
      local_bc = &DAT_0114d900;
      local_b4 = 0;
      local_a8 = 0;
      local_8c = 1.0;
      local_88 = 0x40000000;
      local_94 = 1;
      local_98 = &DAT_0114d900;
      local_90 = 0;
      local_84 = 0;
      local_e4 = 0;
      if (0 < *(int *)((int)this + 0x178)) {
        do {
          local_104 = (void *)0x0;
          if (0 < *(int *)((int)this + 0x174)) {
            local_e8 = (int *)((int)local_e4 >> 2);
            do {
              iVar5 = *(int *)((int)this + 0x2d0);
              piVar4 = (int *)(((local_110 - *(int *)((int)this + 0x17c)) * *(int *)(iVar5 + 0x20) +
                               ((int)local_104 >> 2)) * *(int *)(iVar5 + 0x24) + (int)local_e8);
              uVar1 = *(ushort *)(*(int *)(iVar5 + 0x48) + (int)piVar4 * 2);
              if ((uVar1 & 0x8000) == 0) {
                piVar4 = (int *)(((local_e4 & 3) + (((uint)local_104 & 3) + (uint)uVar1 * 4) * 4) *
                                 0x10 + *(int *)(iVar5 + 0x28));
              }
              else {
                piVar4 = (int *)((int)piVar4 * 0x10 + *(int *)(iVar5 + 0x38));
              }
              iVar5 = *piVar4;
              if (iVar5 != piVar4[1]) {
                local_ec = 0;
                if (piVar4[1] - iVar5 >> 3 != 0) {
                  do {
                    local_38 = local_bc[local_b8];
                    iVar2 = local_ec * 8;
                    piVar6 = (int *)FUN_006286c0(local_c0,local_28,(uint *)(iVar2 + iVar5));
                    if (*piVar6 == local_38) {
                      local_6c = local_6c & 0xffffff00;
                      FUN_006288f0(local_c0,local_20,(uint *)(iVar2 + iVar5));
                      pvVar7 = ObjectRegistry_FindBorrowed
                                         (local_7c,CONCAT44(*(undefined4 *)(*piVar4 + 4 + iVar2),
                                                            *(undefined4 *)(*piVar4 + iVar2)));
                      if (((pvVar7 != (void *)0x0) &&
                          (component = Object_GetComponentByMask(pvVar7,DAT_011e9fa8),
                          component != (undefined *)0x0)) &&
                         (uVar8 = FootprintComponent_IsRegisteredBit(component), (char)uVar8 != '\0'
                         )) {
                        local_5c = local_5c & 0xffffff00;
                        FUN_006288f0(local_9c,local_14,(uint *)(*piVar4 + iVar2));
                      }
                    }
                    iVar5 = *piVar4;
                    local_ec = local_ec + 1;
                  } while (local_ec < (uint)(piVar4[1] - iVar5 >> 3));
                  this = local_54;
                }
              }
              local_104 = (void *)((int)local_104 + 1);
            } while ((int)local_104 < *(int *)((int)this + 0x174));
          }
          local_e4 = local_e4 + 1;
        } while ((int)local_e4 < *(int *)((int)this + 0x178));
      }
      local_10c = (ulonglong *)*local_98;
      local_108 = local_98;
      if (local_10c == (ulonglong *)0x0) {
        local_108 = local_98 + 1;
        if (local_98[1] == 0) {
          do {
            local_108 = local_108 + 1;
          } while (*local_108 == 0);
        }
        local_10c = (ulonglong *)*local_108;
      }
      local_40 = (ulonglong *)local_98[local_94];
      if (local_10c != local_40) {
        do {
          puVar10 = local_10c;
          local_104 = ObjectRegistry_FindBorrowed(local_7c,*local_10c);
          if (local_104 != (void *)0x0) {
            local_e0 = (void *)0x0;
            local_dc = 0;
            local_d8 = 0;
            local_d4 = "Lot/MarkExteriorObjectUnderRoof/footprintPoly";
            Seasons_TransformObjectBoundsIntoLotSpace(this,local_104,(int *)&local_e0,&local_d0);
            iVar5 = local_110;
            local_fc = (char *)0x0;
            local_f8 = (char *)0x0;
            local_f4 = 0;
            local_f0 = "Lot/MarkExteriorObjectUnderRoof/footprintPolyTileParts";
            local_44 = (int)ROUND(local_d0);
            local_4c = local_d0 - (float)local_44;
            local_64 = (int)ROUND(local_cc);
            local_70 = local_cc - (float)local_64;
            local_68 = (int)ROUND(local_c8);
            local_78 = (float)local_68 - local_c8;
            local_60 = (int)ROUND(local_c4);
            local_48 = (float)local_60 - local_c4;
            LotGeometry_CollectPolygonQuarterCoverage
                      (&local_e0,&local_d0,(int)this,(char)local_110,&local_fc,'\0','\x01');
            local_100 = CONCAT31(local_100._1_3_,1);
            if (iVar5 < 0) {
              pvVar7 = Object_FindCatalogInfo(local_104);
              if ((pvVar7 != (void *)0x0) && ((*(uint *)((int)pvVar7 + 0xd0) >> 2 & 1) != 0)) {
                local_100 = local_100 & 0xffffff00;
              }
            }
            else {
              local_74 = (local_c8 + local_d0) * 0.5;
              lpCriticalSection = (LPCRITICAL_SECTION)((int)this + 0xf0);
              local_50 = (local_c4 + local_cc) * 0.5;
              EnterCriticalSection(lpCriticalSection);
              if (*(void **)((int)this + 0x31c) == (void *)0x0) {
                LeaveCriticalSection(lpCriticalSection);
              }
              else {
                cVar3 = FUN_00afd5f0(*(void **)((int)this + 0x31c),local_74,local_50);
                LeaveCriticalSection(lpCriticalSection);
                if (cVar3 != '\0') {
                  local_100 = local_100 & 0xffffff00;
                  goto LAB_00abe58e;
                }
              }
              if (local_fc != local_f8) {
                local_e8 = (int *)(*(int *)((int)local_a0 + 4) + *(int *)((int)local_a0 + 8) * 4);
                pcVar9 = local_fc;
                do {
                  iVar5 = *local_e8;
                  piVar4 = (int *)FUN_00a6a380(local_a0,local_30,pcVar9);
                  if (*piVar4 != iVar5) {
                    local_100 = local_100 & 0xffffff00;
                    break;
                  }
                  pcVar9 = pcVar9 + 4;
                } while (pcVar9 != local_f8);
              }
            }
LAB_00abe58e:
            pvVar7 = Object_GetComponentByMask(local_104,DAT_011ea2a8);
            if (pvVar7 != (void *)0x0) {
              Seasons_SetObjectSnowDisableSource(pvVar7,(char)local_100,0);
            }
            if (local_fc != (char *)0x0) {
              Memory_FreeIfNonNull(local_fc);
            }
            if (local_e0 != (void *)0x0) {
              Memory_FreeIfNonNull(local_e0);
            }
            puVar10 = local_10c;
          }
          local_10c = *(ulonglong **)(puVar10 + 1);
          if (local_10c == (ulonglong *)0x0) {
            do {
              local_108 = local_108 + 1;
              local_10c = (ulonglong *)*local_108;
            } while (local_10c == (ulonglong *)0x0);
          }
        } while (local_10c != local_40);
      }
      FUN_0073ebe0((int)local_98,local_94);
      local_90 = 0;
      if (1 < local_94) {
        Memory_FreeIfNonNull(local_98);
      }
      FUN_0073ebe0((int)local_bc,local_b8);
      local_b4 = 0;
      if (1 < local_b8) {
        Memory_FreeIfNonNull(local_bc);
      }
      local_110 = local_110 + -1;
    } while (*(int *)((int)this + 0x17c) <= local_110);
  }
  return;
}

