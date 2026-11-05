/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 common world initialization. Constructs and connects weather, terrain, sea, sky,
   cloud, terrain-data and road owners through ordered success branches. Selects C2DB00 for zero
   input mode and C2DAE0 otherwise; tests returned AL before subsequent road/terrain/sea success
   joins. Computes world maxima from wrapping low32 tile-count times terrain tile-size, recovers
   unsigned products through signed FILD plus physical Float32 two-to32 atF99948 when negative, adds
   origins in x87 and stores Singles. If the light owner exists, passes these maxima to6B7030. Later
   template setup can still refuse; grid initialization is not complete world-init success. Inferred
   object fields/prototypes are not reconstructed declarations. */

char __thiscall WorldManager_InitializeCommon(void *this,char param_1,int param_2)

{
  undefined4 *this_00;
  int *piVar1;
  float fVar2;
  char cVar3;
  bool bVar4;
  int *piVar5;
  void *pvVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  uint uVar9;
  int iVar10;
  int local_18 [6];
  
  piVar5 = (int *)MessageDispatch_GetCurrent();
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 0x18))(0x38e3c0e,this,0);
  }
  uVar9 = (uint)(*(char *)((int)this + 0x43) == '\0');
  FUN_007d7920(local_18,*(undefined4 *)((int)this + 0x80),uVar9);
  pvVar6 = (void *)FUN_004e4520(0xc00,0x10,0,"World/InitCommon-WeatherMan",0);
  if (pvVar6 == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = WeatherManager_Construct(pvVar6);
  }
  piVar1 = *(int **)((int)this + 0x74);
  if (piVar5 != piVar1) {
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
    }
    *(int **)((int)this + 0x74) = piVar5;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  FUN_00d6d970(*(int *)((int)this + 0x74));
  pvVar6 = (void *)FUN_004e4520(0x1b0,0x10,0,"Terrain/WorldTerrain",0);
  if (pvVar6 == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = FUN_00c822e0(pvVar6,this);
  }
  piVar1 = *(int **)((int)this + 0x58);
  if (piVar5 != piVar1) {
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
    }
    *(int **)((int)this + 0x58) = piVar5;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  pvVar6 = (void *)FUN_004e4520(0x2e0,0x10,0,"Misc/Sea",0);
  if (pvVar6 == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = FUN_00c0c840(pvVar6,(int)this);
  }
  piVar1 = *(int **)((int)this + 0x60);
  if (piVar5 != piVar1) {
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
    }
    *(int **)((int)this + 0x60) = piVar5;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  pvVar6 = (void *)FUN_004e4520(0x9f0,0x10,0,"Misc/Init-Sky",0);
  if (pvVar6 == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = FUN_00c10d60(pvVar6,this);
  }
  piVar1 = *(int **)((int)this + 100);
  if (piVar5 != piVar1) {
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
    }
    *(int **)((int)this + 100) = piVar5;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  uVar7 = FUN_00c14860(*(void **)((int)this + 100),*(undefined4 *)((int)this + 0x14c));
  FUN_00c0f6b0(*(void **)((int)this + 100),(undefined4 *)((int)this + 300),
               (undefined4 *)((int)this + 0x130));
  bVar4 = false;
  if ((char)uVar7 != '\0') {
    pvVar6 = (void *)FUN_004e4520(0x3a0,0x10,0,"World/Load-Clouds",0);
    if (pvVar6 == (void *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      piVar5 = FUN_00a4f9d0(pvVar6,this);
    }
    piVar1 = *(int **)((int)this + 0x68);
    if (piVar5 != piVar1) {
      if (piVar5 != (int *)0x0) {
        (**(code **)*piVar5)();
      }
      *(int **)((int)this + 0x68) = piVar5;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    cVar3 = FUN_00a4fea0(*(void **)((int)this + 0x68));
    bVar4 = false;
    if (cVar3 != '\0') {
      *(undefined4 *)((int)this + 0x260) = *(undefined4 *)((int)this + 0x25c);
      bVar4 = ResourceStreamContext_OpenRead(local_18,&DAT_01185350,0);
      if (bVar4) {
        StreamContext_ReadResourceKeyVector((void *)((int)this + 0x25c),local_18);
        ResourceStreamContext_Close(local_18);
      }
      puVar8 = (undefined4 *)FUN_004e4520(0xd4,4,0,"World/TerrainData",0);
      if (puVar8 == (undefined4 *)0x0) {
        puVar8 = (undefined4 *)0x0;
      }
      else {
        puVar8 = FUN_00c2b7d0(puVar8);
      }
      piVar5 = (int *)((int)this + 0x54);
      FUN_00874fb0(piVar5,puVar8);
      if (param_1 == '\0') {
        cVar3 = TerrainData_LoadHeightBlendMode((void *)*piVar5,*(int **)((int)this + 0x80),uVar9);
      }
      else {
        cVar3 = TerrainData_LoadChunkMode((void *)*piVar5,*(int **)((int)this + 0x80),uVar9);
      }
      bVar4 = false;
      if (cVar3 != '\0') {
        pvVar6 = (void *)FUN_004e4520(300,4,0,"RoadNetwork",0);
        if (pvVar6 == (void *)0x0) {
          puVar8 = (undefined4 *)0x0;
        }
        else {
          puVar8 = (undefined4 *)FUN_00b7a510(pvVar6,this);
        }
        this_00 = (undefined4 *)((int)this + 0x5c);
        FUN_00874fb0(this_00,puVar8);
        pvVar6 = (void *)*this_00;
        bVar4 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
        FUN_00b75740(pvVar6,bVar4);
        uVar7 = FUN_00b83c30((void *)*this_00,(undefined4 *)*piVar5);
        bVar4 = false;
        if ((char)uVar7 != '\0') {
          cVar3 = FUN_00b7f6d0((void *)*this_00,local_18);
          bVar4 = false;
          if (cVar3 != '\0') {
            uVar7 = FUN_00c804b0(*(void **)((int)this + 0x58),(undefined4 *)*piVar5);
            bVar4 = false;
            if ((char)uVar7 != '\0') {
              FUN_00c61330(this,param_2);
              FUN_00c85310(*(void **)((int)this + 0x58));
              uVar7 = FUN_00c0a9d0(*(void **)((int)this + 0x60),*(int **)((int)this + 0x80),uVar9);
              cVar3 = (char)uVar7;
              bVar4 = false;
              if (cVar3 != '\0') {
                iVar10 = *(int *)((int)this + 0xcc) * *(int *)(*piVar5 + 0x38);
                fVar2 = (float)iVar10;
                if (iVar10 < 0) {
                  fVar2 = fVar2 + FLOAT_00f99948;
                }
                iVar10 = *(int *)((int)this + 0xd0) * *(int *)(*piVar5 + 0x38);
                *(float *)((int)this + 0xbc) = fVar2 + *(float *)((int)this + 0xb4);
                fVar2 = (float)iVar10;
                if (iVar10 < 0) {
                  fVar2 = fVar2 + FLOAT_00f99948;
                }
                *(float *)((int)this + 0xc0) = fVar2 + *(float *)((int)this + 0xb8);
                pvVar6 = (void *)FUN_006e9660();
                if (pvVar6 != (void *)0x0) {
                  NeighborhoodLightGrid_InitializeDimensions
                            (pvVar6,*(float *)((int)this + 0xbc),*(float *)((int)this + 0xc0));
                }
                pvVar6 = (void *)thunk_FUN_00835d40();
                if ((pvVar6 != (void *)0x0) && (*(char *)((int)pvVar6 + 0x981) != '\0')) {
                  cVar3 = FUN_00828e30(pvVar6,local_18);
                }
                FUN_00829910(pvVar6,(int)this);
                bVar4 = false;
                if (cVar3 != '\0') {
                  bVar4 = WorldTemplate_ReadMetadata
                                    ((void *)((int)this + 0x270),local_18,
                                     *(int *)((int)this + 0x1b4) != 1);
                  if ((bVar4) && (*(int *)((int)this + 100) != 0)) {
                    uVar9 = WorldTemplate_GetEffectiveWorldName((void *)((int)this + 0x270));
                    uVar7 = DAT_0103fd88;
                    if (uVar9 != 0xc50c382) {
                      uVar7 = 0;
                    }
                    *(undefined4 *)(*(int *)((int)this + 100) + 0x990) = uVar7;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return bVar4;
}

