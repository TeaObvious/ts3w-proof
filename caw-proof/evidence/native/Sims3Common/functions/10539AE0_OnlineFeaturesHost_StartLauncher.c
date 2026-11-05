/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_StartLauncher. Export
   ordinal(s): 529. Entry VA: 0x10539ae0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600058A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_StartLauncher(char param_1)

{
  HANDLE hHandle;
  DWORD DVar1;
  int iVar2;
  HMODULE hModule;
  FARPROC pFVar3;
  int *piVar4;
  undefined **ppuVar5;
  HWND hWnd;
  void *this;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puStack_30;
  undefined *puStack_2c;
  undefined *puStack_28;
  char *pcStack_24;
  LPCWSTR pWStack_20;
  undefined *puStack_1c;
  undefined2 *puStack_18;
  char *pcStack_14;
  int aiStack_10 [2];
  int iStack_8;
  
  hHandle = CreateMutexA((LPSECURITY_ATTRIBUTES)0x0,1,
                         PTR_s_0245C82B_EB81_4cb7_93B9_63FD9473_10c0e000);
  if (hHandle != (HANDLE)0x0) {
    DVar1 = WaitForSingleObject(hHandle,0);
    CloseHandle(hHandle);
    if (DVar1 == 0) {
      FUN_109166c0(&DAT_10c788a8,(uint *)&DAT_10b1ae34);
      iVar2 = FUN_1038c390();
      if ((iVar2 == 0) || (*(char *)(iVar2 + 0x2a8) == '\0')) {
        if (param_1 != '\0') {
          hWnd = GetForegroundWindow();
          ShowWindow(hWnd,6);
          FUN_1068bb80(2);
          if (DAT_10c735c0 == 0) {
            this = (void *)0x0;
          }
          else {
            this = (void *)(DAT_10c735c0 + -0x10);
          }
          FUN_10406ac0(this,1,4,(short *)&_Str2_10b624fc);
        }
        piVar4 = (int *)FUN_10388740(L"Sims3Launcher",L"LauncherProcessName",L"Sims3Launcher");
        FUN_10537cf0(piVar4,(LPCWSTR *)0x0,param_1);
      }
      else {
        hModule = GetModuleHandleA("user32.dll");
        if (hModule == (HMODULE)0x0) {
          FUN_10916780((LPCRITICAL_SECTION)&DAT_10c788a8);
          return;
        }
        pFVar3 = GetProcAddress(hModule,"TGMinimizeApp");
        if (pFVar3 != (FARPROC)0x0) {
          (*pFVar3)();
        }
        pcStack_14 = "Services/GameHost";
        pWStack_20 = (LPCWSTR)&_Dst_10ca8244;
        puStack_1c = &_Dst_10ca8244;
        puStack_18 = &DAT_10ca8246;
        piVar4 = (int *)FUN_10388740(L"Sims3Launcher",L"LauncherProcessNameCider",L"S3Launcher");
        FUN_10537cf0(piVar4,&pWStack_20,'\x01');
        pcStack_24 = "Services/GameHost";
        puStack_30 = &_Dst_10ca8244;
        puStack_2c = &_Dst_10ca8244;
        puStack_28 = &DAT_10ca8245;
        ppuVar5 = FUN_10927050(aiStack_10,&pWStack_20);
        puVar6 = &DAT_10ca8245;
        puVar7 = &_Dst_10ca8244;
        if (ppuVar5 != &puStack_30) {
          FUN_1000e8a0(&puStack_30,*ppuVar5,ppuVar5[1]);
          puVar6 = puStack_28;
          puVar7 = puStack_30;
        }
        if ((1 < iStack_8 - aiStack_10[0]) && (aiStack_10[0] != 0)) {
          FUN_10918e90(aiStack_10[0]);
        }
        pFVar3 = GetProcAddress(hModule,"TGSwitchFocusToExecutable");
        if (pFVar3 != (FARPROC)0x0) {
          (*pFVar3)(puVar7);
        }
        if ((1 < (int)puVar6 - (int)puVar7) && (puVar7 != (undefined *)0x0)) {
          FUN_10918e90((int)puVar7);
        }
        if ((2 < (int)((int)puStack_18 - (int)pWStack_20 & 0xfffffffeU)) &&
           (pWStack_20 != (LPCWSTR)0x0)) {
          FUN_10918e90((int)pWStack_20);
          FUN_10916780((LPCRITICAL_SECTION)&DAT_10c788a8);
          return;
        }
      }
      FUN_10916780((LPCRITICAL_SECTION)&DAT_10c788a8);
      return;
    }
  }
  if (param_1 != '\0') {
    FUN_1068bb80(2);
    if (DAT_10c735c0 != 0) {
      FUN_10406ac0((void *)(DAT_10c735c0 + -0x10),1,4,(short *)&_Str2_10b624fc);
      return;
    }
    FUN_10406ac0((void *)0x0,1,4,(short *)&_Str2_10b624fc);
  }
  return;
}

