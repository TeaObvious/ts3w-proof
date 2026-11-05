/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011630d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetCustomMusicInfoImpl [assembly=ScriptCore token=0x06000E56;
   songNumber: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetCustomMusicInfoImpl(uint param_1)

{
  void *allocation;
  int iVar1;
  char *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  wchar_t *pwVar6;
  undefined4 uStack_6a0;
  void *pvStack_69c;
  undefined4 uStack_698;
  int iStack_694;
  char *pcStack_690;
  undefined4 *puStack_68c;
  undefined4 *puStack_688;
  int *piStack_67c;
  undefined **appuStack_678 [2];
  ushort uStack_670;
  undefined2 uStack_66e;
  undefined **appuStack_658 [2];
  ushort uStack_650;
  undefined2 uStack_64e;
  undefined4 uStack_639;
  undefined1 uStack_61a;
  undefined1 auStack_610 [512];
  undefined1 auStack_410 [1040];
  
  uStack_6a0 = 0;
  piStack_67c = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piStack_67c == (int *)0x0) {
    return uStack_6a0;
  }
  FUN_00782e30(&puStack_68c,(int *)(DAT_011d7988 + 0x48));
  iVar1 = (int)puStack_688 - (int)puStack_68c >> 0x1f;
  if (((int)puStack_688 - (int)puStack_68c) / 0x90 + iVar1 == iVar1) {
    FUN_00869e20((undefined4 *)(DAT_011d7988 + 0x48));
    FUN_00783b90(&puStack_68c,(int *)(DAT_011d7988 + 0x48));
  }
  puVar5 = puStack_68c;
  if (param_1 < (uint)(((int)puStack_688 - (int)puStack_68c) / 0x90)) {
    puVar5 = puStack_68c + param_1 * 0x24;
    pvStack_69c = (void *)0x0;
    uStack_698 = 0;
    iStack_694 = 0;
    pcStack_690 = "UI/CustomSongInfo";
    FUN_0040b590(&pvStack_69c,(short *)puStack_68c[param_1 * 0x24]);
    pcVar2 = (char *)((int)puVar5 + 0x13);
    iVar3 = 0;
    iVar1 = -0x28 - (int)pcVar2;
    do {
      pcVar2[(int)(auStack_610 + iVar1)] = *pcVar2;
      if (*pcVar2 == '\0') break;
      iVar3 = iVar3 + 1;
      pcVar2 = pcVar2 + 1;
    } while (iVar3 < 0x1e);
    if (iVar3 == 0) {
      FUN_004ee170(auStack_410,(ushort *)*puVar5);
      FUN_004eddc0(auStack_410,auStack_610,0x100);
      pwVar6 = L"|%s";
    }
    else {
      if (iVar3 == 0x1e) {
        uStack_61a = 0;
        puVar4 = &uStack_639;
        do {
          pcVar2 = (char *)((int)puVar4 + 1);
          puVar4 = (undefined4 *)((int)puVar4 + 1);
        } while (*pcVar2 != '\0');
        *puVar4 = 0x2e2e2e;
      }
      pwVar6 = L"|%hs";
    }
    FUN_004af140(&pvStack_69c,(ushort *)pwVar6);
    pcVar2 = (char *)((int)puVar5 + 0x31);
    iVar3 = 0;
    iVar1 = -0x28 - (int)pcVar2;
    do {
      pcVar2[(int)(auStack_610 + iVar1)] = *pcVar2;
      if (*pcVar2 == '\0') break;
      iVar3 = iVar3 + 1;
      pcVar2 = pcVar2 + 1;
    } while (iVar3 < 0x1e);
    if (iVar3 == 0x1e) {
      uStack_61a = 0;
      puVar5 = &uStack_639;
      do {
        pcVar2 = (char *)((int)puVar5 + 1);
        puVar5 = (undefined4 *)((int)puVar5 + 1);
      } while (*pcVar2 != '\0');
      *puVar5 = 0x2e2e2e;
    }
    FUN_004af140(&pvStack_69c,(ushort *)L"|%hs");
    appuStack_678[0] = &PTR_FUN_00fba6f4;
    uStack_670 = 0;
    uStack_66e = 0;
    FUN_004f59c0(appuStack_678,0x13,9,&pvStack_69c,0x10,1);
    appuStack_658[0] = &PTR_FUN_00fba6f4;
    uStack_650 = 0;
    uStack_64e = 0;
    FUN_004f64b0(appuStack_658,(int)appuStack_678);
    appuStack_678[0] = &PTR_FUN_00fba6f4;
    if ((uStack_670 & 4) != 0) {
      FUN_004f5760(appuStack_678,'\0');
    }
    (**(code **)(*piStack_67c + 0x50))(appuStack_658,&uStack_6a0);
    appuStack_658[0] = &PTR_FUN_00fba6f4;
    if ((uStack_650 & 4) != 0) {
      FUN_004f5760(appuStack_658,'\0');
    }
    puVar5 = puStack_68c;
    if ((2 < (int)(iStack_694 - (int)pvStack_69c & 0xfffffffeU)) && (pvStack_69c != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_69c);
      puVar5 = puStack_68c;
    }
  }
  for (; puStack_68c < puStack_688; puStack_68c = puStack_68c + 0x24) {
    allocation = (void *)*puStack_68c;
    if ((2 < (int)(puStack_68c[2] - (int)allocation & 0xfffffffeU)) && (allocation != (void *)0x0))
    {
      Memory_FreeIfNonNull(allocation);
    }
  }
  if (puVar5 != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(puVar5);
  }
  return uStack_6a0;
}

