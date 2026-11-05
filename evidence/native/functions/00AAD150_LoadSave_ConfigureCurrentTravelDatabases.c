/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Original instruction review: cdecl enable andmodebyte. Owner+664 required. enablefalse
   configuresnullpaths. enabletrue builds CurrentGame.sims3/TravelDB.package and a
   selectedworld-derived ExportDB.package path then009ca420. Called after worldload success00ec7250
   withmode0, and normalLoadSave load reset withmode1. Native paths correspond to originalsave
   selection, not aninvented globaldatabase. */

void __cdecl LoadSave_ConfigureCurrentTravelDatabases(char param_1,undefined1 param_2)

{
  void *pvVar1;
  short **ppsVar2;
  uint uVar3;
  short *local_430;
  undefined1 *local_42c;
  undefined2 *local_428;
  char *local_424;
  void *local_420 [2];
  int local_418;
  undefined4 local_410 [260];
  
  pvVar1 = DownloadContent_GetOwnerFromGlobalLink();
  if ((pvVar1 != (void *)0x0) && (pvVar1 = *(void **)((int)pvVar1 + 0x664), pvVar1 != (void *)0x0))
  {
    if (param_1 == '\0') {
      SimStorage_ConfigureTravelAndExportPaths(pvVar1,(undefined4 *)0x0,(short *)0x0,1);
    }
    else {
      FUN_004ec7e0((undefined2 *)local_410);
      FUN_00aa9a20(local_410);
      FUN_004ee250(local_410,(short *)PTR_u_CurrentGame_sims3_01183ddc);
      FUN_004ee400(local_410,L"TravelDB.package",0);
      local_424 = "World/LoadSaveManager";
      local_430 = (short *)&DAT_011c8e54;
      local_42c = &DAT_011c8e54;
      local_428 = &DAT_011c8e56;
      ppsVar2 = (short **)FUN_00aacef0(local_420);
      if (ppsVar2 != &local_430) {
        FUN_00408d60(&local_430,*ppsVar2,ppsVar2[1]);
      }
      if ((2 < (int)(local_418 - (int)local_420[0] & 0xfffffffeU)) && (local_420[0] != (void *)0x0))
      {
        Memory_FreeIfNonNull(local_420[0]);
      }
      uVar3 = FUN_00aaaa80(&local_430,(short *)&DAT_00fba02c,0xffffffff);
      if (uVar3 != 0xffffffff) {
        FUN_004edba0(&local_430,uVar3,0xffffffff);
      }
      FUN_004e3950(&local_430,L"ExportDB.package");
      SimStorage_ConfigureTravelAndExportPaths(pvVar1,local_410,local_430,param_2);
      if ((2 < (int)((int)local_428 - (int)local_430 & 0xfffffffeU)) && (local_430 != (short *)0x0))
      {
        Memory_FreeIfNonNull(local_430);
        return;
      }
    }
  }
  return;
}

