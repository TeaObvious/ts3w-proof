/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161570 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_StartLauncher [assembly=ScriptCore
   token=0x0600062C; authToken: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.OnlineFeatures::OnlineFeaturesHost_StartLauncher(char param_1)

{
  HANDLE hHandle;
  DWORD DVar1;
  int iVar2;
  HMODULE hModule;
  FARPROC pFVar3;
  short *psVar4;
  undefined1 **ppuVar5;
  HWND hWnd;
  void *this;
  undefined *puVar6;
  undefined1 *puVar7;
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined *puStack_28;
  char *pcStack_24;
  LPCWSTR local_20;
  undefined1 *local_1c;
  undefined2 *local_18;
  char *local_14;
  int aiStack_10 [2];
  int iStack_8;
  
  hHandle = CreateMutexA((LPSECURITY_ATTRIBUTES)0x0,1,
                         PTR_s_0245C82B_EB81_4cb7_93B9_63FD9473_011503e0);
  if (hHandle != (HANDLE)0x0) {
    DVar1 = WaitForSingleObject(hHandle,0);
    CloseHandle(hHandle);
    if (DVar1 == 0) {
      FUN_004e1c00(&DAT_011d5028,(uint *)&DAT_01003a04);
      iVar2 = FUN_0058e800();
      if ((iVar2 == 0) || (*(char *)(iVar2 + 0x2a8) == '\0')) {
        if (param_1 != '\0') {
          hWnd = GetForegroundWindow();
          ShowWindow(hWnd,6);
          FUN_00897b10(2);
          if (DAT_011cfca0 == 0) {
            this = (void *)0x0;
          }
          else {
            this = (void *)(DAT_011cfca0 + -0x10);
          }
          FUN_0060bf10(this,1,4,&DAT_00fba6c4);
        }
        psVar4 = (short *)FUN_0058ac60(L"Sims3Launcher",L"LauncherProcessName",L"Sims3Launcher");
        FUN_00746a30(psVar4,(LPCWSTR *)0x0,param_1);
      }
      else {
        hModule = GetModuleHandleA("user32.dll");
        if (hModule == (HMODULE)0x0) {
          FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011d5028);
          return;
        }
        pFVar3 = GetProcAddress(hModule,"TGMinimizeApp");
        if (pFVar3 != (FARPROC)0x0) {
          (*pFVar3)();
        }
        local_14 = "Services/GameHost";
        local_20 = (LPCWSTR)&DAT_011c8e54;
        local_1c = &DAT_011c8e54;
        local_18 = &DAT_011c8e56;
        psVar4 = (short *)FUN_0058ac60(L"Sims3Launcher",L"LauncherProcessNameCider",L"S3Launcher");
        FUN_00746a30(psVar4,&local_20,'\x01');
        pcStack_24 = "Services/GameHost";
        puStack_30 = &DAT_011c8e54;
        puStack_2c = &DAT_011c8e54;
        puStack_28 = &DAT_011c8e55;
        ppuVar5 = FUN_004f3df0(aiStack_10,&local_20);
        puVar6 = &DAT_011c8e55;
        puVar7 = &DAT_011c8e54;
        if (ppuVar5 != &puStack_30) {
          FUN_00405910(&puStack_30,*ppuVar5,ppuVar5[1]);
          puVar6 = puStack_28;
          puVar7 = puStack_30;
        }
        if ((1 < iStack_8 - aiStack_10[0]) && (aiStack_10[0] != 0)) {
          FUN_004e44e0(aiStack_10[0]);
        }
        pFVar3 = GetProcAddress(hModule,"TGSwitchFocusToExecutable");
        if (pFVar3 != (FARPROC)0x0) {
          (*pFVar3)(puVar7);
        }
        if ((1 < (int)puVar6 - (int)puVar7) && (puVar7 != (undefined1 *)0x0)) {
          FUN_004e44e0((int)puVar7);
        }
        if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (LPCWSTR)0x0))
        {
          FUN_004e44e0((int)local_20);
          FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011d5028);
          return;
        }
      }
      FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011d5028);
      return;
    }
  }
  if (param_1 != '\0') {
    FUN_00897b10(2);
    if (DAT_011cfca0 != 0) {
      FUN_0060bf10((void *)(DAT_011cfca0 + -0x10),1,4,&DAT_00fba6c4);
      return;
    }
    FUN_0060bf10((void *)0x0,1,4,&DAT_00fba6c4);
  }
  return;
}

