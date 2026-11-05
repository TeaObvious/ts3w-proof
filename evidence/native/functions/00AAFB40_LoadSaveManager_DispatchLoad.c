/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* PC 1.67 original instruction review. Analyst-assigned name. thiscall RET4, save-info pointer,
   boolean result AL. Entry guards reject missing info when manager byte+1c clear, manager+1d set or
   missing world. Prepares paths and constructs398hex-byte World/LoadSaveManager/DBPF with read-mode
   virtual calls, then calls00aab6e0 and associated cleanup. Detailed local status/flag semantics
   and actual filesystem/game state effects remain unresolved; __alloca_probe/indirect-call stack
   tracking limits pseudocode. No load execution or persistence-cycle test was run.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Additional bounded review: physical
   thiscall RET4 returns AL bool, preserves mode/path selection, package read/open and selected
   manager load 00AAB6E0 plus cleanup. Calls travel database configuration 00AAD150 on selected
   path; configuration is not proof of unconditional database writes. Current LoadGame false is an
   explicit gap; no load execution occurred. */

bool __thiscall LoadSaveManager_DispatchLoad(void *this,undefined4 *param_1)

{
  char cVar1;
  int *piVar2;
  char cVar3;
  bool bVar4;
  int iVar5;
  LPCWSTR pWVar6;
  uint uVar7;
  undefined4 *puVar8;
  short *psVar9;
  void *pvVar10;
  int unaff_EBX;
  char unaff_SI;
  undefined4 *puVar11;
  bool local_1cba;
  char local_1cb9;
  void *local_1cb4;
  int *local_1cb0;
  int local_1cac;
  undefined4 local_1ca8 [260];
  undefined1 local_1898 [1040];
  short *psStack_1488;
  undefined4 local_1058 [264];
  undefined4 local_c38 [779];
  undefined4 uStack_c;
  
  iVar5 = DAT_011edbc4;
  uStack_c = 0xaafb50;
  cVar1 = *(char *)((int)this + 0x1c);
  if ((param_1 == (undefined4 *)0x0) && (cVar1 == '\0')) {
    return false;
  }
  if (*(char *)((int)this + 0x1d) != '\0') {
    return false;
  }
  local_1cac = DAT_011edbc4;
  if (DAT_011edbc4 == 0) {
    return false;
  }
  *(undefined4 *)(DAT_011edbc4 + 0x1b4) = 1;
  *(undefined1 *)(iVar5 + 0x44) = 1;
  local_1cb4 = this;
  FUN_004ec7e0((undefined2 *)local_1ca8);
  if (param_1 == (undefined4 *)0x0) {
    psVar9 = (short *)0x0;
  }
  else {
    psVar9 = (short *)param_1[2];
  }
  FUN_00aaab20(local_1898,psVar9);
  iVar5 = FUN_00aacfe0(local_1898,'\x01',cVar1);
  if (iVar5 != 0) {
LAB_00aafbc7:
    FUN_00aaa1d0((int)local_1898);
    return false;
  }
  local_1cb9 = '\0';
  if (cVar1 == '\0') {
    pWVar6 = (LPCWSTR)FUN_007e51a0(local_1058);
    uVar7 = FUN_004dbd70(pWVar6);
    if ((char)uVar7 == '\0') {
      pWVar6 = (LPCWSTR)FUN_007e51a0(local_c38);
      uVar7 = FUN_004dbd70(pWVar6);
      local_1cb9 = (char)uVar7;
      if (local_1cb9 == '\0') goto LAB_00aafbc7;
      puVar8 = local_c38;
      goto LAB_00aafc30;
    }
  }
  puVar8 = local_1058;
LAB_00aafc30:
  puVar11 = local_1ca8;
  for (iVar5 = 0x104; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar11 = *puVar8;
    puVar8 = puVar8 + 1;
    puVar11 = puVar11 + 1;
  }
  local_1cba = false;
  local_1cb0 = (int *)0x0;
  puVar8 = FUN_004e4760(0x398,"World/LoadSaveManager/DBPF",0);
  if (puVar8 == (undefined4 *)0x0) {
    pvVar10 = (void *)0x0;
  }
  else {
    iVar5 = 0;
    psVar9 = (short *)FUN_007e51a0(local_1ca8);
    pvVar10 = PackedFile_InitializeProvider(puVar8,psVar9,iVar5);
  }
  FUN_004a0800(&local_1cb0,(int)pvVar10);
  piVar2 = local_1cb0;
  cVar3 = (**(code **)(*local_1cb0 + 4))();
  if (cVar3 != '\0') {
    cVar3 = (**(code **)(*piVar2 + 0x18))(1,3,0);
    if (cVar3 == '\0') {
      pWVar6 = (LPCWSTR)FUN_007e51a0(&local_1cb4);
      uVar7 = FUN_004dbd70(pWVar6);
      if ((char)uVar7 != '\0') {
        pWVar6 = (LPCWSTR)FUN_007e51a0(&local_1cb4);
        FUN_004dbe70(pWVar6);
      }
    }
    else {
      if ((param_1 != (undefined4 *)0x0) && (unaff_SI == '\0')) {
        FUN_00566590((void *)(unaff_EBX + 0x18),param_1);
      }
      FUN_00aab6e0((int)piVar2);
      (**(code **)(*piVar2 + 0x1c))();
    }
    (**(code **)(*piVar2 + 8))();
  }
  if (piVar2 != (int *)0x0) {
    (**(code **)(piVar2[1] + 4))();
  }
  puVar8 = *(undefined4 **)((int)local_1cb4 + 0x18);
  if (puVar8 != (undefined4 *)0x0) {
    *(undefined4 *)((int)local_1cb4 + 0x18) = 0;
    iVar5 = puVar8[1];
    puVar8[1] = iVar5 + -1;
    if (iVar5 + -1 == 0) {
      puVar8[1] = 1;
      (**(code **)*puVar8)(1);
    }
  }
  if ((cVar1 == '\0') && (local_1cb9 == '\0')) {
    pvVar10 = DownloadContent_GetOwnerFromGlobalLink();
    if ((pvVar10 != (void *)0x0) && (*(void **)((int)pvVar10 + 0x664) != (void *)0x0)) {
      SimStorage_ConfigureTravelAndExportPaths
                (*(void **)((int)pvVar10 + 0x664),(undefined4 *)0x0,(short *)0x0,1);
    }
    bVar4 = FUN_00aaf510(psStack_1488,1);
    if (!bVar4) {
      local_1cba = bVar4;
    }
    LoadSave_ConfigureCurrentTravelDatabases('\x01',1);
  }
  *(undefined1 *)(local_1cac + 0x44) = 0;
  FUN_00aaa1d0((int)local_1898);
  return local_1cba;
}

