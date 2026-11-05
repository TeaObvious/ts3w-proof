/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* PC 1.67 original instruction review. Analyst-assigned name. thiscall RET12, save-info pointer and
   two low-byte mode flags; original registered save wrapper forwards EAX as uint. Entry guards
   return1 for missing info with mode0,10hex for manager byte+1d set,2 for missing world.
   Constructs398hex-byte World/LoadSaveManager/DBPF, calls underlying save helper00aaa810,
   propagates stage status and builds .bad path on selected failure paths. Numeric status names and
   called file-helper effects remain unresolved; __alloca_probe/local layout and indirect calls are
   decompiler limitations. No save execution or persistence-cycle test was run.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Additional bounded review: 00742C40 is
   the registered wrapper; selected writer stage 00AAA810 owns header/world-state production.
   Three-byte alignment gap at 00AAF83D is outside stored body ranges. Complete owned Listing is
   1145 bytes/356 instructions, not its 1148-byte envelope. Travel mode paths and staged status
   remain distinct from current managed save workflow. */

uint __thiscall
LoadSaveManager_DispatchSave(void *this,undefined4 *param_1,char param_2,char param_3)

{
  ushort uVar1;
  int iVar2;
  int *this_00;
  char cVar3;
  void *pvVar4;
  uint uVar5;
  ushort *puVar6;
  int iVar7;
  LPCWSTR pWVar8;
  short *psVar9;
  undefined4 *puVar10;
  LPCWSTR pWVar11;
  uint uVar12;
  undefined4 uVar13;
  ushort *puVar14;
  int *piVar15;
  bool bVar16;
  int *local_3144;
  LPCWSTR local_3140;
  LPCWSTR pWStack_313c;
  short *psStack_3130;
  int iStack_312c;
  undefined4 local_3120 [260];
  short *psStack_2d10;
  undefined1 auStack_2cf0 [2096];
  undefined1 auStack_24c0 [3120];
  undefined1 local_1890 [1072];
  undefined1 local_1460 [5212];
  undefined4 uStack_4;
  
  iVar2 = DAT_011edbc4;
  uStack_4 = 0xaaf6ca;
  if ((param_1 == (undefined4 *)0x0) && (param_2 == '\0')) {
    return 1;
  }
  if (*(char *)((int)this + 0x1d) != '\0') {
    return 0x10;
  }
  if (DAT_011edbc4 == 0) {
    return 2;
  }
  pvVar4 = DownloadContent_GetOwnerFromGlobalLink();
  if ((pvVar4 != (void *)0x0) && (*(void **)((int)pvVar4 + 0x664) != (void *)0x0)) {
    SimStorage_CommitOpenDatabases(*(void **)((int)pvVar4 + 0x664));
  }
  if (param_1 == (undefined4 *)0x0) {
    psVar9 = (short *)0x0;
  }
  else {
    psVar9 = (short *)param_1[2];
  }
  FUN_00aaab20(local_3120,psVar9);
  FUN_00aaab20(local_1890,(short *)0x0);
  uVar5 = FUN_00aacfe0(local_1890,'\0','\x01');
  if ((uVar5 != 0) || (uVar5 = FUN_00aacfe0(local_3120,'\0',param_2), uVar5 != 0)) {
LAB_00aaf7e0:
    FUN_00aaa1d0((int)local_1890);
    FUN_00aaa1d0((int)local_3120);
    return uVar5;
  }
  local_3144 = (int *)0x100266c;
  FUN_004088f0(&local_3140,&local_3144);
  if (param_2 == '\0') {
    FUN_00aab600((int)local_3120,&local_3140);
  }
  uVar5 = FUN_00aa9a00(local_1890);
  if (uVar5 != 0) {
    FUN_004ef8f0((int *)&local_3140);
    goto LAB_00aaf7e0;
  }
  if (param_3 == '\0') {
    puVar10 = (undefined4 *)((int)this + 0x80);
    uVar5 = FUN_004dbd70(*(LPCWSTR *)((int)this + 0x80));
    if ((char)uVar5 != '\0') {
      puVar14 = (ushort *)*puVar10;
      puVar6 = (ushort *)FUN_007e51a0(local_1460);
      do {
        uVar1 = *puVar14;
        bVar16 = uVar1 < *puVar6;
        if (uVar1 != *puVar6) {
LAB_00aaf866:
          iVar7 = (1 - (uint)bVar16) - (uint)(bVar16 != 0);
          goto LAB_00aaf86b;
        }
        if (uVar1 == 0) break;
        uVar1 = puVar14[1];
        bVar16 = uVar1 < puVar6[1];
        if (uVar1 != puVar6[1]) goto LAB_00aaf866;
        puVar14 = puVar14 + 2;
        puVar6 = puVar6 + 2;
      } while (uVar1 != 0);
      iVar7 = 0;
LAB_00aaf86b:
      if (iVar7 != 0) {
        pWVar11 = (LPCWSTR)*puVar10;
        pWVar8 = (LPCWSTR)FUN_007e51a0(local_1460);
        FUN_004dbdc0(pWVar11,pWVar8,'\x01');
      }
    }
    psVar9 = (short *)FUN_007e51a0(local_1460);
    FUN_00408f50(puVar10,psVar9);
  }
  local_3144 = (int *)0x0;
  puVar10 = FUN_004e4760(0x398,"World/LoadSaveManager/DBPF",0);
  if (puVar10 == (undefined4 *)0x0) {
    pvVar4 = (void *)0x0;
  }
  else {
    iVar7 = 0;
    psVar9 = (short *)FUN_007e51a0(local_1460);
    pvVar4 = PackedFile_InitializeProvider(puVar10,psVar9,iVar7);
  }
  FUN_004a0800(&local_3144,(int)pvVar4);
  this_00 = local_3144;
  if ((local_3144 == (int *)0x0) || (cVar3 = (**(code **)(*local_3144 + 4))(), cVar3 == '\0')) {
    uVar5 = 0x11;
    piVar15 = this_00;
  }
  else {
    FUN_004a6da0(this_00,1);
    cVar3 = (**(code **)(*this_00 + 0x18))(2,2,0);
    if (cVar3 == '\0') {
      uVar5 = 0xf;
    }
    else {
      if (param_1 != (undefined4 *)0x0) {
        FUN_00566590((void *)((int)this + 0x18),param_1);
      }
      *(undefined1 *)(iVar2 + 0x45) = 1;
      uVar5 = LoadSave_WriteWorldPackageState(this,this_00,(undefined4 *)0x1);
      *(undefined1 *)(iVar2 + 0x45) = 0;
      (**(code **)(*this_00 + 0x1c))();
      if ((uVar5 != 0) &&
         (puVar10 = *(undefined4 **)((int)this + 0x18), puVar10 != (undefined4 *)0x0)) {
        *(undefined4 *)((int)this + 0x18) = 0;
        iVar2 = puVar10[1];
        puVar10[1] = iVar2 + -1;
        if (iVar2 + -1 == 0) {
          puVar10[1] = 1;
          (**(code **)*puVar10)(1);
        }
      }
    }
    (**(code **)(*this_00 + 8))();
    piVar15 = (int *)0x0;
    if (this_00 != (int *)0x0) {
      (**(code **)(this_00[1] + 4))();
    }
  }
  if (param_2 == '\0') {
    if (uVar5 == 0) {
      pWVar11 = (LPCWSTR)FUN_007e51a0(auStack_2cf0);
      uVar12 = FUN_004dbd70(pWVar11);
      if ((((char)uVar12 == '\0') || (cVar3 = FUN_00aaf610(psStack_2d10), cVar3 != '\0')) &&
         (bVar16 = FUN_00aaf510(psStack_2d10,0), bVar16)) goto LAB_00aafa9c;
      uVar5 = 0x10;
    }
    local_3144 = (int *)0x1065a20;
    FUN_004088f0(&psStack_3130,&local_3144);
    FUN_00408f50(&psStack_3130,psStack_2d10);
    FUN_004e3950(&psStack_3130,L".bad");
    if ((uint)(iStack_312c - (int)psStack_3130 >> 1) < 0x105) {
      FUN_00aaf510(psStack_3130,0);
    }
    if (local_3140 != pWStack_313c) {
      cVar3 = '\x01';
      pWVar11 = (LPCWSTR)FUN_007e51a0(auStack_24c0);
      FUN_004dbdc0(local_3140,pWVar11,cVar3);
      pWVar11 = (LPCWSTR)FUN_007e51a0(auStack_24c0);
      FUN_00aadb40(pWVar11);
    }
    FUN_004ef8f0((int *)&psStack_3130);
LAB_00aafa98:
    if (uVar5 != 0) goto LAB_00aafb00;
  }
  else if (uVar5 != 0) goto LAB_00aafa98;
LAB_00aafa9c:
  uVar13 = FUN_00aadc80(local_3120);
  if ((char)uVar13 == '\0') {
    if (piVar15 != (int *)0x0) {
      (**(code **)(piVar15[1] + 4))();
    }
    FUN_004ef8f0((int *)&local_3140);
    FUN_00aaa1d0((int)local_1890);
    FUN_00aaa1d0((int)local_3120);
    return 0x11;
  }
  if ((uVar5 == 0) && (param_2 != '\0')) {
    *(undefined1 *)((int)this + 0x1c) = 1;
  }
LAB_00aafb00:
  if (piVar15 != (int *)0x0) {
    (**(code **)(piVar15[1] + 4))();
  }
  FUN_004ef8f0((int *)&local_3140);
  FUN_00aaa1d0((int)local_1890);
  FUN_00aaa1d0((int)local_3120);
  return uVar5;
}

