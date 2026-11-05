/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). thiscall lot clears
   output length; requires lot+0x2d0 and signed level bounds +0x17c..+0x180. Clamped tile candidates
   with area mask 5 are deduplicated by GUID. An input option admits objects containing original Sim
   component (descriptor 0x0117ca84; dynamic mask global 0x011ea0fc; presence field +0x2c) before
   geometry. Otherwise calls LotQuery_TestFootprintPolygonIntersection with mask 5. Original
   x87/sign-bit grid adjustments govern misleading decompiler ROUND casts. */

void __thiscall
Lot_CollectObjectsIntersectingPolygon
          (void *this,int *param_1,int param_2,undefined4 *param_3,char param_4,char param_5)

{
  int iVar1;
  undefined4 *puVar2;
  float fVar3;
  float fVar4;
  bool bVar5;
  int *piVar6;
  int iVar7;
  void *pvVar8;
  int iVar9;
  int local_98;
  int local_90;
  char local_8c;
  undefined1 local_8b;
  undefined1 local_8a;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  int local_78;
  int local_74;
  undefined1 local_70 [4];
  undefined4 *local_6c;
  uint local_68;
  undefined4 local_64;
  float local_60;
  undefined4 local_5c;
  undefined4 local_58;
  char *local_54;
  void *local_50;
  int local_4c;
  void *local_48;
  void *local_44;
  undefined4 local_40;
  char *local_3c;
  uint local_38;
  void *local_34;
  uint local_30;
  undefined4 local_2c;
  uint local_28;
  undefined4 local_24;
  undefined4 local_1c [2];
  undefined4 local_14 [4];
  
  param_3[1] = *param_3;
  if (*(int *)((int)this + 0x2d0) != 0) {
    local_60 = 1.0;
    local_5c = 0x40000000;
    local_54 = "Lot/GetObjectsIntersectingRect/objIDSet";
    local_68 = 1;
    local_6c = &DAT_0114d900;
    local_64 = 0;
    local_58 = 0;
    local_50 = this;
    if ((param_2 < *(int *)((int)this + 0x17c)) || (*(int *)((int)this + 0x180) < param_2)) {
      FUN_0073ebe0(0x114d900,1);
      local_64 = 0;
      if (1 < local_68) {
        Memory_FreeIfNonNull(local_6c);
      }
    }
    else {
      Geometry_GetPolygonXZBounds(param_1,&local_88);
      fVar4 = local_84;
      fVar3 = local_88;
      if (local_80 < local_88) {
        local_88 = local_80;
        local_80 = fVar3;
      }
      if (local_7c < local_84) {
        local_84 = local_7c;
        local_7c = fVar4;
      }
      local_90 = (int)ROUND(local_84) + -1 +
                 (uint)((uint)(local_84 - (float)(int)ROUND(local_84)) < 0x80000001);
      local_78 = ((int)ROUND(local_7c) + 1) -
                 (uint)((uint)((float)(int)ROUND(local_7c) - local_7c) < 0x80000001);
      local_4c = (int)ROUND(local_88) + -1 +
                 (uint)((uint)(local_88 - (float)(int)ROUND(local_88)) < 0x80000001);
      local_74 = ((int)ROUND(local_80) + 1) -
                 (uint)((uint)((float)(int)ROUND(local_80) - local_80) < 0x80000001);
      FUN_00a8acd0(this,&local_4c,&local_90);
      FUN_00a8acd0(this,&local_74,&local_78);
      pvVar8 = (void *)0x0;
      local_48 = (void *)0x0;
      local_44 = (void *)0x0;
      local_40 = 0;
      local_3c = "World/Lot/objectsOnTile";
      ObjectRegistry_GetGlobal();
      if (local_90 < local_78) {
        do {
          iVar7 = local_4c;
          if (local_4c < local_74) {
            do {
              local_8b = (undefined1)local_90;
              local_8a = (undefined1)param_2;
              local_8c = (char)iVar7;
              local_44 = pvVar8;
              LotQuery_CollectObjectsOnTile(this,&local_8c,&local_48,param_5,param_4,'\0',0xf,0,5);
              iVar9 = (int)local_44 - (int)local_48 >> 2;
              local_98 = 0;
              if (0 < iVar9) {
                do {
                  pvVar8 = *(void **)((int)local_48 + local_98 * 4);
                  local_34 = pvVar8;
                  if (pvVar8 != (void *)0x0) {
                    local_28 = *(uint *)((int)pvVar8 + 8);
                    local_24 = *(undefined4 *)((int)pvVar8 + 0xc);
                    iVar1 = local_6c[local_68];
                    piVar6 = (int *)FUN_006286c0(local_70,local_1c,&local_28);
                    if (*piVar6 == iVar1) {
                      local_30 = *(uint *)((int)pvVar8 + 8);
                      local_2c = *(undefined4 *)((int)pvVar8 + 0xc);
                      local_38 = local_38 & 0xffffff00;
                      FUN_006288f0(local_70,local_14,&local_30);
                      if (((param_4 != '\0') &&
                          ((*(uint *)((int)pvVar8 + 0x2c) & DAT_011ea0fc) != 0)) ||
                         (bVar5 = LotQuery_TestFootprintPolygonIntersection
                                            (pvVar8,param_2,param_1,&local_88,5), bVar5)) {
                        puVar2 = (undefined4 *)param_3[1];
                        if (puVar2 < (undefined4 *)param_3[2]) {
                          param_3[1] = puVar2 + 1;
                          if (puVar2 != (undefined4 *)0x0) {
                            *puVar2 = pvVar8;
                          }
                        }
                        else {
                          FUN_00982420(param_3,puVar2,&local_34);
                        }
                      }
                    }
                  }
                  local_98 = local_98 + 1;
                } while (local_98 < iVar9);
              }
              iVar7 = iVar7 + 1;
              pvVar8 = local_48;
              this = local_50;
            } while (iVar7 < local_74);
          }
          local_90 = local_90 + 1;
        } while (local_90 < local_78);
      }
      if (pvVar8 != (void *)0x0) {
        Memory_FreeIfNonNull(pvVar8);
      }
      FUN_0073ebe0((int)local_6c,local_68);
      local_64 = 0;
      if (1 < local_68) {
        Memory_FreeIfNonNull(local_6c);
        return;
      }
    }
  }
  return;
}

