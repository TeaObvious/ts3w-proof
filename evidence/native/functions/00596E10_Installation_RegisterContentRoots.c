/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Retail installation registration
   resolves product/SKU install directory and appends GameData before596800. Original descriptor
   triplets at1153A38 associate SKU1->content1 and SKU2->content4; content4 is EP1. Later product
   flags are separately translated, so flag4 must not be mistaken for this content key. */

uint __thiscall
Installation_RegisterContentRoots(void *this,undefined4 *param_1,char param_2,ushort *param_3)

{
  char **ppcVar1;
  LPCWSTR *ppWVar2;
  undefined4 *puVar3;
  short sVar4;
  char *pcVar5;
  char cVar6;
  uint uVar7;
  uint extraout_EAX;
  wchar_t *pwVar8;
  int iVar9;
  undefined4 uVar10;
  int *piVar11;
  uint extraout_EAX_00;
  LPCWSTR pWVar12;
  short *psVar13;
  WCHAR *pWVar14;
  uint *puVar15;
  wchar_t *pwVar16;
  short *psVar17;
  WCHAR *pWVar18;
  undefined1 *puVar19;
  int iVar20;
  undefined4 *puVar21;
  undefined4 extraout_EAX_01;
  WCHAR *pWVar22;
  undefined2 *puVar23;
  int *piVar24;
  bool bVar25;
  ushort *puVar26;
  char *local_8c8;
  undefined2 *local_8c4;
  undefined2 *local_8c0;
  char *local_8bc;
  undefined1 local_8b8;
  wchar_t *local_8b4;
  int *local_8b0;
  int *local_8ac;
  int *local_8a8;
  char *local_8a4;
  char local_89d;
  uint local_89c;
  LPCWSTR local_898;
  WCHAR *local_894;
  WCHAR *local_890;
  char *local_88c;
  int *local_888;
  short *local_884;
  short *local_880;
  short *local_87c;
  char *local_878;
  short *local_874;
  ushort *local_870;
  WCHAR local_86c [4];
  uint local_864;
  short local_860 [32];
  WCHAR local_820 [520];
  undefined1 local_410 [1040];
  
  local_870 = *(ushort **)((int)this + 0xc);
  *(char *)((int)this + 8) = param_2;
  local_8b0 = (int *)0x0;
  local_8ac = (int *)0x0;
  local_8a8 = (int *)0x0;
  local_8a4 = "Services/GameConfig";
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceDir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  FUN_005964c0(&local_8b0,(undefined4 *)0x0,&local_8c8);
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsLocalWorkDir");
  piVar11 = local_8ac;
  local_8b8 = 0;
  local_8b4 = L"nolocalwork";
  if (local_8ac < local_8a8) {
    piVar24 = local_8ac + 6;
    bVar25 = local_8ac != (int *)0x0;
    local_8ac = piVar24;
    if (bVar25) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = (int)L"nolocalwork";
    }
  }
  else {
    FUN_005964c0(&local_8b0,local_8ac,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsJazzSourceDir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP1Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP1Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP2Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP2Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP3Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP3Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP4Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP4Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP5Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP5Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP6Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP6Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP7Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP7Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP8Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP8Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP9Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP10Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceSP9Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar11 < local_8a8) {
    piVar24 = piVar11 + 6;
    local_8ac = piVar24;
    if (piVar11 != (int *)0x0) {
      FUN_00408df0(piVar11,&local_8c8);
      *(undefined1 *)(piVar11 + 4) = 0;
      piVar11[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar11,&local_8c8);
    piVar24 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  local_8c8 = (char *)0x0;
  local_8c4 = (undefined2 *)0x0;
  local_8c0 = (undefined2 *)0x0;
  local_8bc = "Services/GameConfig";
  FUN_0040b590(&local_8c8,L"AssetsSourceEP11Dir");
  local_8b8 = 0;
  local_8b4 = (wchar_t *)0x0;
  if (piVar24 < local_8a8) {
    piVar11 = piVar24 + 6;
    local_8ac = piVar11;
    if (piVar24 != (int *)0x0) {
      FUN_00408df0(piVar24,&local_8c8);
      *(undefined1 *)(piVar24 + 4) = 0;
      piVar24[5] = 0;
    }
  }
  else {
    FUN_005964c0(&local_8b0,piVar24,&local_8c8);
    piVar11 = local_8ac;
  }
  if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) && (local_8c8 != (char *)0x0)) {
    Memory_FreeIfNonNull(local_8c8);
  }
  piVar24 = local_8b0;
  if (local_8b0 == piVar11) {
    uVar7 = FUN_00891b20(local_8b0,piVar11);
    if (piVar24 != (int *)0x0) {
      Memory_FreeIfNonNull(piVar24);
      uVar7 = extraout_EAX;
    }
LAB_00597a02:
    return uVar7 & 0xffffff00;
  }
  cVar6 = FUN_0058b0c0(L"InstallationRequired",1);
  if (cVar6 == '\0') {
    local_888 = (int *)0xffffffff;
    do {
      if (local_888 == (int *)0xffffffff) {
        FUN_004f3100((int)local_860,(ushort *)L"data");
      }
      else {
        FUN_004f3100((int)local_860,(ushort *)L"data%d");
      }
      pwVar8 = (wchar_t *)FUN_0058ac90(local_860,0);
      if (((pwVar8 != (wchar_t *)0x0) && (iVar9 = _wcsicmp(L"none",pwVar8), iVar9 != 0)) &&
         (uVar10 = FUN_00596b80(this,pwVar8), (char)uVar10 == '\0')) {
        FUN_0040e840(param_1,(ushort *)L"Invalid Data Location Specified: %s");
        piVar24 = local_8b0;
        uVar7 = FUN_00891b20(local_8b0,piVar11);
        bVar25 = piVar24 == (int *)0x0;
        goto LAB_00597d97;
      }
      local_888 = (int *)((int)local_888 + 1);
    } while ((int)local_888 < 100);
    local_874 = (short *)0x1;
    piVar11 = ContentRoots_FindByKey(this,(int *)&local_874);
    if (piVar11 == (int *)0x0) {
      FUN_00596b80(this,L"../../GameData");
    }
    local_874 = (short *)0x1;
    piVar11 = ContentRoots_FindByKey(this,(int *)&local_874);
    if (piVar11 == (int *)0x0) {
      FUN_00596b80(this,L"../../../DL_LKG/GameData");
    }
    iVar9 = FUN_0058b5b0((LPCWSTR)"OverrideUI",0);
    if (iVar9 != 0) {
      FUN_005960e0(L"AssetsSourceCfg",L"UIOverride.cfg");
      FUN_005960e0(L"CfgFullPath",L"../../../UIData/UIOverride.cfg");
    }
    iVar9 = FUN_0058b5b0((LPCWSTR)"OverrideEnvIni",0);
    if (iVar9 != 0) {
      FUN_005960e0(L"AssetsSourceCfg",L"EnvIniOverride.cfg");
      FUN_005960e0(L"AssetsSourceEP4Cfg",L"EnvIniOverrideEP4.cfg");
      FUN_005960e0(L"AssetsSourceSP4Cfg",L"EnvIniOverrideSP4.cfg");
      FUN_005960e0(L"AssetsSourceEP5Cfg",L"EnvIniOverrideEP5.cfg");
      FUN_005960e0(L"AssetsSourceEP6Cfg",L"EnvIniOverrideEP6.cfg");
      FUN_005960e0(L"AssetsSourceSP6Cfg",L"EnvIniOverrideSP6.cfg");
      FUN_005960e0(L"AssetsSourceEP7Cfg",L"EnvIniOverrideEP7.cfg");
      FUN_005960e0(L"AssetsSourceEP8Cfg",L"EnvIniOverrideEP8.cfg");
      FUN_005960e0(L"AssetsSourceEP9Cfg",L"EnvIniOverrideEP9.cfg");
      FUN_005960e0(L"AssetsSourceEP10Cfg",L"EnvIniOverrideEP10.cfg");
      FUN_005960e0(L"AssetsSourceEP11Cfg",L"EnvIniOverrideEP11.cfg");
    }
    iVar9 = FUN_0058b5b0((LPCWSTR)"OverrideAudio",0);
    if (iVar9 != 0) {
      FUN_005960e0(L"AssetsSourceCfg",L"AudioOverride.cfg");
      FUN_005960e0(L"AssetsSourceEP1Cfg",L"AudioOverrideEP1.cfg");
      FUN_005960e0(L"AssetsSourceSP1Cfg",L"AudioOverrideSP1.cfg");
      FUN_005960e0(L"AssetsSourceEP2Cfg",L"AudioOverrideEP2.cfg");
      FUN_005960e0(L"AssetsSourceSP2Cfg",L"AudioOverrideSP2.cfg");
      FUN_005960e0(L"AssetsSourceEP3Cfg",L"AudioOverrideEP3.cfg");
      FUN_005960e0(L"AssetsSourceSP3Cfg",L"AudioOverrideSP3.cfg");
      FUN_005960e0(L"AssetsSourceEP4Cfg",L"AudioOverrideEP4.cfg");
      FUN_005960e0(L"AssetsSourceSP4Cfg",L"AudioOverrideSP4.cfg");
      FUN_005960e0(L"AssetsSourceEP5Cfg",L"AudioOverrideEP5.cfg");
      FUN_005960e0(L"AssetsSourceSP5Cfg",L"AudioOverrideSP5.cfg");
      FUN_005960e0(L"AssetsSourceEP6Cfg",L"AudioOverrideEP6.cfg");
      FUN_005960e0(L"AssetsSourceSP6Cfg",L"AudioOverrideSP6.cfg");
      FUN_005960e0(L"AssetsSourceSP7Cfg",L"AudioOverrideSP7.cfg");
      FUN_005960e0(L"AssetsSourceEP7Cfg",L"AudioOverrideEP7.cfg");
      FUN_005960e0(L"AssetsSourceEP8Cfg",L"AudioOverrideEP8.cfg");
      FUN_005960e0(L"AssetsSourceSP8Cfg",L"AudioOverrideSP8.cfg");
      FUN_005960e0(L"AssetsSourceEP9Cfg",L"AudioOverrideEP9.cfg");
      FUN_005960e0(L"AssetsSourceEP10Cfg",L"AudioOverrideEP10.cfg");
      FUN_005960e0(L"AssetsSourceSP9Cfg",L"AudioOverrideSP9.cfg");
      FUN_005960e0(L"AssetsSourceEP11Cfg",L"AudioOverrideEP11.cfg");
    }
  }
  else if (DAT_01153a38 != 0) {
    puVar21 = &DAT_01153a3c;
    do {
      local_898 = (LPCWSTR)&DAT_011c8e54;
      local_894 = (WCHAR *)&DAT_011c8e54;
      local_88c = "Services/GameConfig";
      local_890 = &DAT_011c8e56;
      cVar6 = FUN_007d0fe0(puVar21[-1],(int *)&local_898);
      if (cVar6 != '\0') {
        FUN_004f3100((int)local_820,(ushort *)L"%s/GameData");
        local_884 = (short *)0x0;
        local_880 = (short *)0x0;
        local_87c = (short *)0x0;
        local_878 = "Services/GameConfig";
        FUN_0040b590(&local_884,local_820);
        ContentRoots_PublishPath(this,*puVar21,&local_884);
        FUN_004f3100((int)local_820,(ushort *)L"%s/Caches");
        uVar7 = FUN_004dc130(local_820);
        if ((char)uVar7 != '\0') {
          local_8c8 = (char *)0x0;
          local_8c4 = (undefined2 *)0x0;
          local_8c0 = (undefined2 *)0x0;
          local_8bc = "Services/GameConfig";
          FUN_0040b590(&local_8c8,local_820);
          FUN_00596980(this,*puVar21,&local_8c8);
          if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) &&
             (local_8c8 != (char *)0x0)) {
            Memory_FreeIfNonNull(local_8c8);
          }
        }
        FUN_004f3100((int)local_820,(ushort *)L"%s/GameData/Win32/Resource.cfg");
        FUN_005960e0(L"CfgFullPath",local_820);
        FUN_004f3100((int)local_820,(ushort *)L"%s/GameData/Shared/NonPackaged/Worlds");
        uVar7 = FUN_004dc130(local_820);
        if ((char)uVar7 != '\0') {
          FUN_00596630(this,local_820,puVar21[1]);
        }
        FUN_004f3100((int)local_820,(ushort *)L"%s/GameData/Shared/NonPackaged/Library");
        uVar7 = FUN_004dc130(local_820);
        if ((char)uVar7 != '\0') {
          FUN_005968c0(this,local_820,*puVar21);
        }
        if ((2 < (int)((int)local_87c - (int)local_884 & 0xfffffffeU)) &&
           (local_884 != (short *)0x0)) {
          Memory_FreeIfNonNull(local_884);
        }
      }
      if ((2 < (int)((int)local_890 - (int)local_898 & 0xfffffffeU)) && (local_898 != (WCHAR *)0x0))
      {
        Memory_FreeIfNonNull(local_898);
      }
      piVar11 = puVar21 + 2;
      puVar21 = puVar21 + 3;
    } while (*piVar11 != 0);
  }
  if (param_3 != (ushort *)0x0) {
    FUN_004edf60((void *)((int)this + 0x7c),param_3);
    FUN_004ee250((void *)((int)this + 0x7c),L"Mods");
  }
  iVar9 = FUN_0058b5b0((LPCWSTR)"ignoreMods",0);
  if (((iVar9 == 0) && (pWVar12 = (LPCWSTR)FUN_007e51a0((int)this + 0x7c), pWVar12 != (LPCWSTR)0x0))
     && (uVar7 = FUN_004dc130(pWVar12), (char)uVar7 != '\0')) {
    FUN_004ee170(local_820,(ushort *)pWVar12);
    FUN_004ee3a0(local_820,L"Resource.cfg",0);
    pWVar12 = (LPCWSTR)FUN_007e51a0(local_820);
    uVar7 = FUN_004dbd70(pWVar12);
    if ((char)uVar7 != '\0') {
      FUN_005960e0(L"CfgFullPath",pWVar12);
    }
  }
  FUN_004ee170(local_410,local_870);
  FUN_004ee3a0(local_410,L"Resource.cfg",0);
  pWVar12 = (LPCWSTR)FUN_007e51a0(local_410);
  uVar7 = FUN_004dbd70(pWVar12);
  if ((char)uVar7 == '\0') {
    FUN_004ee3e0(local_410,*(short **)((int)this + 0x1c),0);
  }
  psVar13 = (short *)FUN_007e51a0(local_410);
  FUN_005960e0(L"CfgFullPath",psVar13);
  local_888 = local_8b0;
  do {
    local_89d = '\0';
    local_874 = (short *)FUN_0058ac90((short *)*local_888,0);
    if (local_874 != (short *)0x0) {
      sVar4 = *local_874;
      local_884 = (short *)0x0;
      local_880 = (short *)0x0;
      local_87c = (short *)0x0;
      local_878 = "Services/GameConfig";
      psVar13 = local_874;
      while (sVar4 != 0) {
        psVar13 = psVar13 + 1;
        sVar4 = *psVar13;
      }
      iVar9 = ((int)psVar13 - (int)local_874 >> 1) * 2 >> 1;
      uVar7 = iVar9 + 1;
      if (uVar7 < 2) {
        psVar13 = (short *)&DAT_011c8e54;
        local_87c = &DAT_011c8e56;
      }
      else {
        psVar13 = (short *)FUN_004e4500(uVar7 * 2,"Services/GameConfig",0);
        local_87c = psVar13 + uVar7;
      }
      local_884 = psVar13;
      local_880 = psVar13;
      memmove(psVar13,local_874,iVar9 * 2);
      local_880 = psVar13 + iVar9;
      *local_880 = 0;
      local_898 = (LPCWSTR)&DAT_011c8e54;
      local_894 = (WCHAR *)&DAT_011c8e54;
      local_88c = "Services/GameConfig";
      local_890 = &DAT_011c8e56;
      if (((wchar_t *)local_888[5] == (wchar_t *)0x0) ||
         (cVar6 = FUN_0058b0c0((wchar_t *)local_888[5],0), cVar6 == '\0')) {
        if (local_884 != local_880) {
          do {
            if (local_89d != '\0') break;
            FUN_004f4980((int *)&local_884,0x2c,(int *)&local_898);
            pWVar12 = local_898;
            local_86c[0] = L' ';
            local_86c[1] = 9;
            local_86c[2] = 0;
            pWVar18 = local_86c;
            do {
              pWVar18 = pWVar18 + 1;
            } while (*pWVar18 != L'\0');
            pWVar18 = local_86c + ((int)pWVar18 - (int)local_86c >> 1);
            for (pWVar22 = local_898; pWVar22 != local_894; pWVar22 = pWVar22 + 1) {
              pWVar14 = local_86c;
              if (pWVar14 == pWVar18) {
LAB_0059825c:
                if (pWVar22 != local_894) {
                  local_89c = (int)pWVar22 - (int)local_898 >> 1;
                  goto LAB_00598274;
                }
                break;
              }
              while (*pWVar22 != *pWVar14) {
                pWVar14 = pWVar14 + 1;
                if (pWVar14 == pWVar18) goto LAB_0059825c;
              }
              if (pWVar14 == pWVar18) goto LAB_0059825c;
            }
            local_89c = 0xffffffff;
LAB_00598274:
            local_864 = (int)local_894 - (int)local_898 >> 1;
            puVar15 = &local_864;
            if (local_89c <= local_864) {
              puVar15 = &local_89c;
            }
            pWVar18 = local_898 + *puVar15;
            if (local_898 != pWVar18) {
              memmove(local_898,pWVar18,((int)local_894 - (int)pWVar18 >> 1) * 2 + 2);
              local_894 = local_894 + -((int)pWVar18 - (int)pWVar12 >> 1);
            }
            FUN_004f0160((int *)&local_898);
            puVar26 = local_870;
            FUN_00595b30(&local_898,(short *)local_870);
            uVar10 = FUN_00595fe0(&local_898,param_1);
            if ((char)uVar10 == '\0') {
              if ((2 < (int)((int)local_890 - (int)local_898 & 0xfffffffeU)) &&
                 (local_898 != (WCHAR *)0x0)) {
                Memory_FreeIfNonNull(local_898);
              }
              if ((2 < (int)((int)local_87c - (int)local_884 & 0xfffffffeU)) &&
                 (local_884 != (short *)0x0)) {
                Memory_FreeIfNonNull(local_884);
              }
              piVar24 = local_8b0;
              uVar7 = FUN_00891b20(local_8b0,local_8ac);
              bVar25 = piVar24 == (int *)0x0;
              goto LAB_00597d97;
            }
            FUN_007cd220((int *)&local_898,puVar26);
            uVar7 = FUN_004dc130(local_898);
            if ((char)uVar7 != '\0') {
              local_89d = '\x01';
            }
          } while (local_884 != local_880);
        }
      }
      else if (local_884 != local_880) {
        *local_884 = 0;
        local_880 = local_884;
      }
      if (param_2 == '\0') {
        if (local_89d == '\0') {
          if ((char)local_888[4] != '\0') {
            local_8c8 = (char *)0x0;
            local_8c4 = (undefined2 *)0x0;
            local_8c0 = (undefined2 *)0x0;
            local_8bc = "Services/GameConfig";
            FUN_0040b590(&local_8c8,local_874);
            FUN_00595b30(&local_8c8,(short *)local_870);
            FUN_00595fe0(&local_8c8,param_1);
            FUN_0040e840(param_1,(ushort *)L"Could not locate required directory [%s] [%s]");
            if ((2 < (int)((int)local_8c0 - (int)local_8c8 & 0xfffffffeU)) &&
               (local_8c8 != (char *)0x0)) {
              Memory_FreeIfNonNull(local_8c8);
            }
            if ((2 < (int)((int)local_890 - (int)local_898 & 0xfffffffeU)) &&
               (local_898 != (WCHAR *)0x0)) {
              Memory_FreeIfNonNull(local_898);
            }
            if ((2 < (int)((int)local_87c - (int)local_884 & 0xfffffffeU)) &&
               (local_884 != (short *)0x0)) {
              Memory_FreeIfNonNull(local_884);
            }
            piVar24 = local_8b0;
            uVar7 = FUN_00891b20(local_8b0,local_8ac);
            bVar25 = piVar24 == (int *)0x0;
LAB_00597d97:
            if (!bVar25) {
              Memory_FreeIfNonNull(piVar24);
              return extraout_EAX_00 & 0xffffff00;
            }
            goto LAB_00597a02;
          }
LAB_00598442:
          if (local_898 != local_894) {
            *local_898 = L'\0';
            local_894 = local_898;
          }
        }
      }
      else if (local_89d == '\0') goto LAB_00598442;
      FUN_0058acd0((short *)*local_888,local_898);
      if ((2 < (int)((int)local_890 - (int)local_898 & 0xfffffffeU)) && (local_898 != (WCHAR *)0x0))
      {
        Memory_FreeIfNonNull(local_898);
      }
      if ((2 < (int)((int)local_87c - (int)local_884 & 0xfffffffeU)) && (local_884 != (short *)0x0))
      {
        Memory_FreeIfNonNull(local_884);
      }
    }
    local_888 = local_888 + 6;
  } while (local_888 != local_8ac);
  local_874 = (short *)0x0;
  while( true ) {
    local_878 = "Services/GameConfig";
    pwVar8 = L"CfgFullPath";
    do {
      pwVar16 = pwVar8;
      pwVar8 = pwVar16 + 1;
    } while (*pwVar8 != L'\0');
    iVar9 = ((int)(pwVar16 + -0x7ec9d7) >> 1) * 2 >> 1;
    uVar7 = iVar9 + 1;
    if (uVar7 < 2) {
      psVar13 = (short *)&DAT_011c8e54;
      local_87c = &DAT_011c8e56;
    }
    else {
      psVar13 = (short *)FUN_004e4500(uVar7 * 2,"Services/GameConfig",0);
      local_87c = psVar13 + uVar7;
    }
    local_884 = psVar13;
    memmove(psVar13,L"CfgFullPath",iVar9 * 2);
    psVar17 = local_874;
    local_880 = psVar13 + iVar9;
    *local_880 = 0;
    FUN_004af140(&local_884,(ushort *)&DAT_00fc056c);
    psVar13 = local_884;
    local_874 = (short *)((int)psVar17 + 1);
    psVar17 = (short *)FUN_0058ac90(local_884,0);
    if (psVar17 == (short *)0x0) break;
    local_898 = (LPCWSTR)0x0;
    local_894 = (WCHAR *)0x0;
    local_890 = (WCHAR *)0x0;
    local_88c = "Services/GameConfig";
    sVar4 = *psVar17;
    psVar13 = psVar17;
    while (sVar4 != 0) {
      psVar13 = psVar13 + 1;
      sVar4 = *psVar13;
    }
    iVar9 = ((int)psVar13 - (int)psVar17 >> 1) * 2 >> 1;
    uVar7 = iVar9 + 1;
    if (uVar7 < 2) {
      pWVar18 = (WCHAR *)&DAT_011c8e54;
      local_890 = &DAT_011c8e56;
    }
    else {
      pWVar18 = (WCHAR *)FUN_004e4500(uVar7 * 2,"Services/GameConfig",0);
      local_890 = pWVar18 + uVar7;
    }
    local_898 = pWVar18;
    local_894 = pWVar18;
    memmove(pWVar18,psVar17,iVar9 * 2);
    local_894 = pWVar18 + iVar9;
    *local_894 = L'\0';
    FUN_007cd1c0(&local_898,local_870);
    FUN_0058acd0(local_884,local_898);
    if ((2 < (int)((int)local_890 - (int)local_898 & 0xfffffffeU)) && (local_898 != (WCHAR *)0x0)) {
      Memory_FreeIfNonNull(local_898);
    }
    if ((2 < (int)((int)local_87c - (int)local_884 & 0xfffffffeU)) && (local_884 != (short *)0x0)) {
      Memory_FreeIfNonNull(local_884);
    }
  }
  if ((2 < (int)((int)local_87c - (int)psVar13 & 0xfffffffeU)) && (psVar13 != (short *)0x0)) {
    Memory_FreeIfNonNull(psVar13);
  }
  psVar13 = (short *)FUN_0058b5b0((LPCWSTR)"AssetsSourceDir",0);
  if (psVar13 != (short *)0x0) {
    sVar4 = *psVar13;
    psVar17 = psVar13;
    while (sVar4 != 0) {
      psVar17 = psVar17 + 1;
      sVar4 = *psVar17;
    }
    local_89c = ((int)psVar17 - (int)psVar13 >> 1) * 2 >> 1;
    if (local_89c + 1 < 2) {
      puVar19 = &DAT_011c8e54;
      puVar23 = &DAT_011c8e56;
    }
    else {
      uVar7 = (local_89c + 1) * 2;
      puVar19 = (undefined1 *)FUN_004e4500(uVar7,"Services/GameConfig",0);
      puVar23 = (undefined2 *)(puVar19 + uVar7);
    }
    local_89c = local_89c * 2;
    memmove(puVar19,psVar13,local_89c);
    ppcVar1 = (char **)((int)this + 0x2c);
    *(undefined2 *)(puVar19 + local_89c) = 0;
    if (&local_8c8 != ppcVar1) {
      FUN_00408d60(ppcVar1,puVar19,(undefined2 *)(puVar19 + local_89c));
    }
    FUN_007cd220((int *)ppcVar1,*(ushort **)((int)this + 0xc));
    if ((2 < (int)((int)puVar23 - (int)puVar19 & 0xfffffffeU)) && (puVar19 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puVar19);
    }
  }
  psVar13 = (short *)FUN_0058b5b0((LPCWSTR)"AssetsJazzSourceDir",0);
  if (psVar13 != (short *)0x0) {
    sVar4 = *psVar13;
    psVar17 = psVar13;
    while (sVar4 != 0) {
      psVar17 = psVar17 + 1;
      sVar4 = *psVar17;
    }
    local_89c = ((int)psVar17 - (int)psVar13 >> 1) * 2 >> 1;
    if (local_89c + 1 < 2) {
      puVar19 = &DAT_011c8e54;
      puVar23 = &DAT_011c8e56;
    }
    else {
      uVar7 = (local_89c + 1) * 2;
      puVar19 = (undefined1 *)FUN_004e4500(uVar7,"Services/GameConfig",0);
      puVar23 = (undefined2 *)(puVar19 + uVar7);
    }
    local_89c = local_89c * 2;
    memmove(puVar19,psVar13,local_89c);
    ppcVar1 = (char **)((int)this + 0x3c);
    *(undefined2 *)(puVar19 + local_89c) = 0;
    if (&local_8c8 != ppcVar1) {
      FUN_00408d60(ppcVar1,puVar19,(undefined2 *)(puVar19 + local_89c));
    }
    FUN_007cd220((int *)ppcVar1,*(ushort **)((int)this + 0xc));
    if ((2 < (int)((int)puVar23 - (int)puVar19 & 0xfffffffeU)) && (puVar19 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puVar19);
    }
  }
  psVar13 = (short *)FUN_0058b5b0((LPCWSTR)"AssetsLocalWorkDir",0);
  if (psVar13 != (short *)0x0) {
    sVar4 = *psVar13;
    psVar17 = psVar13;
    while (sVar4 != 0) {
      psVar17 = psVar17 + 1;
      sVar4 = *psVar17;
    }
    local_89c = ((int)psVar17 - (int)psVar13 >> 1) * 2 >> 1;
    if (local_89c + 1 < 2) {
      puVar19 = &DAT_011c8e54;
      puVar23 = &DAT_011c8e56;
    }
    else {
      uVar7 = (local_89c + 1) * 2;
      puVar19 = (undefined1 *)FUN_004e4500(uVar7,"Services/GameConfig",0);
      puVar23 = (undefined2 *)(puVar19 + uVar7);
    }
    local_89c = local_89c * 2;
    memmove(puVar19,psVar13,local_89c);
    ppcVar1 = (char **)((int)this + 0x4c);
    *(undefined2 *)(puVar19 + local_89c) = 0;
    if (&local_8c8 != ppcVar1) {
      FUN_00408d60(ppcVar1,puVar19,(undefined2 *)(puVar19 + local_89c));
    }
    FUN_007cd220((int *)ppcVar1,*(ushort **)((int)this + 0xc));
    if ((2 < (int)((int)puVar23 - (int)puVar19 & 0xfffffffeU)) && (puVar19 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puVar19);
    }
  }
  psVar13 = (short *)FUN_0058ac90(L"code",0);
  FUN_0058ac90(L"codeConfig",L"Release");
  local_88c = "Services/GameConfig/storeScriptpackagePath";
  local_8bc = "Services/GameConfig/storeJazzpackagePath";
  if (psVar13 == (short *)0x0) {
    local_890 = &DAT_011c8e56;
    local_8c0 = &DAT_011c8e56;
    local_898 = (LPCWSTR)&DAT_011c8e54;
    local_894 = (WCHAR *)&DAT_011c8e54;
    local_8c8 = &DAT_011c8e54;
    local_8c4 = (undefined2 *)&DAT_011c8e54;
    FUN_0040e840(&local_898,(ushort *)L"../../GameAndNativeToolsWin32/%s/StoreObjectPackages");
    FUN_0040e840(&local_8c8,(ushort *)L"../../GameAndNativeToolsWin32/%s/Jazz");
    pWVar12 = local_898;
    ppWVar2 = (LPCWSTR *)((int)this + 0x5c);
    if (&local_898 != ppWVar2) {
      FUN_00408d60(ppWVar2,local_898,local_894);
    }
    FUN_007cd220((int *)ppWVar2,*(ushort **)((int)this + 0xc));
    pcVar5 = local_8c8;
    ppcVar1 = (char **)((int)this + 0x6c);
    if (&local_8c8 != ppcVar1) {
      FUN_00408d60(ppcVar1,local_8c8,local_8c4);
    }
    FUN_007cd220((int *)ppcVar1,*(ushort **)((int)this + 0xc));
    if ((2 < (int)((int)local_8c0 - (int)pcVar5 & 0xfffffffeU)) && (pcVar5 != (char *)0x0)) {
      Memory_FreeIfNonNull(pcVar5);
    }
    uVar7 = (int)local_890 - (int)pWVar12;
  }
  else {
    local_898 = (LPCWSTR)&DAT_011c8e54;
    local_894 = (WCHAR *)&DAT_011c8e54;
    local_890 = &DAT_011c8e56;
    local_8c8 = &DAT_011c8e54;
    local_8c4 = (undefined2 *)&DAT_011c8e54;
    local_8c0 = &DAT_011c8e56;
    iVar9 = FUN_004fe3b0(psVar13,(short *)&DAT_00fd9544);
    iVar20 = FUN_004fe2c0(psVar13);
    if (iVar9 == iVar20) {
      FUN_0040e840(&local_898,
                   (ushort *)L"../../../%s/GameAndNativeToolsWin32/%s/StoreObjectPackages");
      FUN_0040e840(&local_8c8,(ushort *)L"../../../%s/GameAndNativeToolsWin32/%s/Jazz");
    }
    else {
      FUN_0040e840(&local_898,(ushort *)&DAT_00fc1818);
      FUN_0040e840(&local_8c8,(ushort *)&DAT_00fc1818);
    }
    pWVar12 = local_898;
    ppWVar2 = (LPCWSTR *)((int)this + 0x5c);
    if (&local_898 != ppWVar2) {
      FUN_00408d60(ppWVar2,local_898,local_894);
    }
    FUN_007cd220((int *)ppWVar2,*(ushort **)((int)this + 0xc));
    pcVar5 = local_8c8;
    ppcVar1 = (char **)((int)this + 0x6c);
    if (&local_8c8 != ppcVar1) {
      FUN_00408d60(ppcVar1,local_8c8,local_8c4);
    }
    FUN_007cd220((int *)ppcVar1,*(ushort **)((int)this + 0xc));
    if ((2 < (int)((int)local_8c0 - (int)pcVar5 & 0xfffffffeU)) && (pcVar5 != (char *)0x0)) {
      Memory_FreeIfNonNull(pcVar5);
    }
    uVar7 = (int)local_890 - (int)pWVar12;
  }
  if ((2 < (int)(uVar7 & 0xfffffffe)) && (pWVar12 != (LPCWSTR)0x0)) {
    Memory_FreeIfNonNull(pWVar12);
  }
  psVar13 = (short *)FUN_0058ac90((short *)PTR_u_worldFilesDataPath_01153b4c,0);
  if (psVar13 != (short *)0x0) {
    FUN_00596630(this,psVar13,1);
  }
  local_89c = 1;
  piVar11 = ContentRoots_FindByKey(this,(int *)&local_89c);
  if ((piVar11 != (int *)0x0) &&
     (psVar13 = (short *)FUN_0058b5b0((LPCWSTR)"installedContentLibraryPath",0),
     psVar13 != (short *)0x0)) {
    FUN_005968c0(this,psVar13,1);
  }
  puVar21 = FUN_0072eb80();
  iVar20 = *(int *)((int)this + 0x4a0) - *(int *)((int)this + 0x49c);
  iVar9 = iVar20 >> 0x1f;
  local_888 = (int *)0x0;
  if (iVar20 / 0x14 + iVar9 != iVar9) {
    local_870 = (ushort *)0x0;
    do {
      puVar3 = (undefined4 *)(*(int *)((int)this + 0x49c) + (int)local_870);
      switch(*puVar3) {
      case 1:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 1;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 0;
        iVar9 = 1;
        break;
      default:
        goto switchD_00598c1b_caseD_2;
      case 4:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 2;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 1;
        iVar9 = 1;
        break;
      case 5:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 4;
        uVar7 = 1;
        iVar9 = 2;
        goto LAB_00598d56;
      case 6:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 8;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 2;
        iVar9 = 1;
        break;
      case 7:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x10;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 2;
        iVar9 = 2;
        break;
      case 8:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x20;
        uVar7 = 3;
        goto LAB_00598d55;
      case 9:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x40;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 3;
        iVar9 = 2;
        break;
      case 10:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x80;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 4;
        iVar9 = 1;
        break;
      case 0xb:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x100;
        uVar7 = 4;
        iVar9 = 2;
        goto LAB_00598d56;
      case 0xc:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x200;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 5;
        iVar9 = 1;
        break;
      case 0xd:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x400;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 5;
        iVar9 = 2;
        break;
      case 0xe:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x800;
        uVar7 = 6;
        goto LAB_00598d55;
      case 0xf:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x1000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 6;
        iVar9 = 2;
        break;
      case 0x10:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x2000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 7;
        iVar9 = 2;
        break;
      case 0x11:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x4000;
        uVar7 = 7;
        goto LAB_00598d55;
      case 0x12:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x8000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 8;
        iVar9 = 1;
        break;
      case 0x13:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x10000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 8;
        iVar9 = 2;
        break;
      case 0x14:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x20000;
        uVar7 = 9;
        goto LAB_00598d55;
      case 0x15:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x40000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 10;
        iVar9 = 1;
        break;
      case 0x16:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x80000;
        puVar26 = (ushort *)puVar3[1];
        uVar7 = 9;
        iVar9 = 2;
        break;
      case 0x17:
        *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 0x100000;
        uVar7 = 0xb;
LAB_00598d55:
        iVar9 = 1;
LAB_00598d56:
        puVar26 = (ushort *)puVar3[1];
      }
      FUN_0072ee40(puVar21,puVar26,iVar9,uVar7);
switchD_00598c1b_caseD_2:
      local_888 = (int *)((int)local_888 + 1);
      local_870 = local_870 + 10;
    } while (local_888 < (uint)((*(int *)((int)this + 0x4a0) - *(int *)((int)this + 0x49c)) / 0x14))
    ;
  }
  *(undefined1 *)this = 1;
  FUN_00596210(this);
  local_8c8 = &DAT_011c8e54;
  local_8c4 = (undefined2 *)&DAT_011c8e54;
  local_8bc = "Misc/DeviceConfigManager/String";
  local_8c0 = (undefined2 *)&DAT_011c8e55;
  FUN_00590e60(&local_8c8,&DAT_00fb71cc);
  pcVar5 = local_8c8;
  local_89c = 0x13;
  local_864 = 1;
  FUN_00892a30((int *)&local_864,(int *)&local_89c,local_8c8);
  if ((1 < (int)local_8c0 - (int)pcVar5) && (pcVar5 != (char *)0x0)) {
    Memory_FreeIfNonNull(pcVar5);
  }
  piVar11 = local_8b0;
  uVar10 = FUN_00891b20(local_8b0,local_8ac);
  if (piVar11 != (int *)0x0) {
    Memory_FreeIfNonNull(piVar11);
    uVar10 = extraout_EAX_01;
  }
  return CONCAT31((int3)((uint)uVar10 >> 8),1);
}

