/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: After terrain data load, calculates world upper bounds
   +BC/+C0 from origins +B4/+B8 and uint32 world tile counts +CC/+D0 times terrain tile size at
   terrain-data +38. IMUL product wraps at 32 bits, x87 signed FILD with 2^32 correction treats that
   product as unsigned; origin addition is widened and each result is stored binary32. Query upper Z
   additionally includes world +C4. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

char __thiscall CAW_WorldInitializeTerrainAndBounds(void *this,char param_1,int param_2)

{
  undefined4 *this_00;
  int *piVar1;
  float fVar2;
  char cVar3;
  bool bVar4;
  char cVar5;
  int *piVar6;
  undefined4 *puVar7;
  void *pvVar8;
  undefined4 uVar9;
  uint uVar10;
  int iVar11;
  undefined4 extraout_ECX;
  int local_18 [6];
  
  piVar6 = (int *)FUN_108835e0();
  if (piVar6 != (int *)0x0) {
    (**(code **)(*piVar6 + 0x18))(0x38e3c0e,this,0);
  }
  uVar10 = (uint)(*(char *)((int)this + 0x43) == '\0');
  FUN_105ca890(local_18,*(undefined4 *)((int)this + 0x80),uVar10);
  puVar7 = (undefined4 *)FUN_10918ed0(0xc00,0x10,0,"World/InitCommon-WeatherMan",0);
  if (puVar7 == (undefined4 *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_10345fd0(puVar7);
  }
  piVar1 = *(int **)((int)this + 0x74);
  if (piVar6 != piVar1) {
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
    }
    *(int **)((int)this + 0x74) = piVar6;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  FUN_10346c10(*(int *)((int)this + 0x74));
  pvVar8 = (void *)FUN_10918ed0(0x1b0,0x10,0,"Terrain/WorldTerrain",0);
  if (pvVar8 == (void *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_10257be0(pvVar8,this);
  }
  piVar1 = *(int **)((int)this + 0x58);
  if (piVar6 != piVar1) {
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
    }
    *(int **)((int)this + 0x58) = piVar6;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  pvVar8 = (void *)FUN_10918ed0(0x2e0,0x10,0,"Misc/Sea",0);
  if (pvVar8 == (void *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_101dbb90(pvVar8,(int)this);
  }
  piVar1 = *(int **)((int)this + 0x60);
  if (piVar6 != piVar1) {
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
    }
    *(int **)((int)this + 0x60) = piVar6;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  pvVar8 = (void *)FUN_10918ed0(0x9f0,0x10,0,"Misc/Init-Sky",0);
  if (pvVar8 == (void *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_101e01f0(pvVar8,this);
  }
  piVar1 = *(int **)((int)this + 100);
  if (piVar6 != piVar1) {
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
    }
    *(int **)((int)this + 100) = piVar6;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  uVar9 = FUN_101e3cf0(*(void **)((int)this + 100),*(undefined4 *)((int)this + 0x14c));
  FUN_101deb40(*(void **)((int)this + 100),(undefined4 *)((int)this + 300),
               (undefined4 *)((int)this + 0x130));
  cVar5 = '\0';
  if ((char)uVar9 != '\0') {
    pvVar8 = (void *)FUN_10918ed0(0x3a0,0x10,0,"World/Load-Clouds",0);
    if (pvVar8 == (void *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = FUN_1000e830(pvVar8,this);
    }
    piVar1 = *(int **)((int)this + 0x68);
    if (piVar6 != piVar1) {
      if (piVar6 != (int *)0x0) {
        (**(code **)*piVar6)();
      }
      *(int **)((int)this + 0x68) = piVar6;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    cVar3 = FUN_1000ef40(*(void **)((int)this + 0x68));
    cVar5 = '\0';
    if (cVar3 != '\0') {
      *(undefined4 *)((int)this + 0x260) = *(undefined4 *)((int)this + 0x25c);
      uVar9 = FUN_105cb400(local_18,&DAT_10c0fb90,'\0');
      if ((char)uVar9 != '\0') {
        FUN_105cc850((void *)((int)this + 0x25c),local_18);
        FUN_105ca9e0((int)local_18);
      }
      puVar7 = (undefined4 *)FUN_10918ed0(0xd4,4,0,"World/TerrainData",0);
      if (puVar7 == (undefined4 *)0x0) {
        puVar7 = (undefined4 *)0x0;
      }
      else {
        puVar7 = FUN_101fd8d0(puVar7);
      }
      piVar6 = (int *)((int)this + 0x54);
      FUN_10673770(piVar6,puVar7);
      if (param_1 == '\0') {
        cVar3 = FUN_101fff10((void *)*piVar6,*(int **)((int)this + 0x80),uVar10);
      }
      else {
        cVar3 = FUN_101ffef0((void *)*piVar6,*(int **)((int)this + 0x80),uVar10);
      }
      cVar5 = '\0';
      if (cVar3 != '\0') {
        pvVar8 = (void *)FUN_10918ed0(300,4,0,"RoadNetwork",0);
        if (pvVar8 == (void *)0x0) {
          puVar7 = (undefined4 *)0x0;
        }
        else {
          puVar7 = (undefined4 *)FUN_101455b0(pvVar8,this);
        }
        this_00 = (undefined4 *)((int)this + 0x5c);
        FUN_10673770(this_00,puVar7);
        pvVar8 = (void *)*this_00;
        bVar4 = CAW_GameConfigHasInstalledProductBits(&DAT_10c726c0,0x8000);
        FUN_1013fef0(pvVar8,bVar4);
        uVar9 = FUN_1014f430((void *)*this_00,(undefined4 *)*piVar6);
        cVar5 = '\0';
        if ((char)uVar9 != '\0') {
          cVar3 = FUN_1014aed0((void *)*this_00,local_18);
          cVar5 = '\0';
          if (cVar3 != '\0') {
            uVar9 = FUN_10255db0(*(void **)((int)this + 0x58),(undefined4 *)*piVar6);
            cVar5 = '\0';
            if ((char)uVar9 != '\0') {
              FUN_102357e0(this,param_2);
              FUN_1025ae50(*(void **)((int)this + 0x58));
              uVar9 = FUN_101d9d20(*(void **)((int)this + 0x60),*(int **)((int)this + 0x80),uVar10);
              cVar3 = (char)uVar9;
              cVar5 = '\0';
              if (cVar3 != '\0') {
                iVar11 = *(int *)((int)this + 0xcc) * *(int *)(*piVar6 + 0x38);
                fVar2 = (float)iVar11;
                if (iVar11 < 0) {
                  fVar2 = fVar2 + _DAT_10aae190;
                }
                iVar11 = *(int *)((int)this + 0xd0) * *(int *)(*piVar6 + 0x38);
                *(float *)((int)this + 0xbc) = fVar2 + *(float *)((int)this + 0xb4);
                fVar2 = (float)iVar11;
                if (iVar11 < 0) {
                  fVar2 = fVar2 + _DAT_10aae190;
                }
                *(float *)((int)this + 0xc0) = fVar2 + *(float *)((int)this + 0xb8);
                pvVar8 = (void *)FUN_104df590();
                if (pvVar8 != (void *)0x0) {
                  FUN_104ad960(pvVar8,*(float *)((int)this + 0xbc),*(float *)((int)this + 0xc0));
                }
                pvVar8 = (void *)thunk_FUN_10627370();
                if ((pvVar8 != (void *)0x0) && (*(char *)((int)pvVar8 + 0x981) != '\0')) {
                  cVar3 = FUN_1061a810(pvVar8,local_18);
                }
                FUN_1061b160(pvVar8,(int)this);
                cVar5 = '\0';
                if (cVar3 != '\0') {
                  cVar5 = FUN_1039c4c0((void *)((int)this + 0x270),local_18,
                                       CONCAT31((int3)((uint)extraout_ECX >> 8),
                                                *(int *)((int)this + 0x1b4) != 1));
                  if ((cVar5 != '\0') && (*(int *)((int)this + 100) != 0)) {
                    uVar10 = FUN_1039c2e0((int)this + 0x270);
                    uVar9 = _DAT_10aadffc;
                    if (uVar10 != 0xc50c382) {
                      uVar9 = 0;
                    }
                    *(undefined4 *)(*(int *)((int)this + 100) + 0x990) = uVar9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  FUN_105ca900((int)local_18);
  return cVar5;
}

