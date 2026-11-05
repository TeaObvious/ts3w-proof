/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetCustomMusicInfoImpl. Export
   ordinal(s): 1097. Entry VA: 0x10575c80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006F1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetCustomMusicInfoImpl(uint param_1)

{
  int iVar1;
  char *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  wchar_t *pwVar6;
  undefined4 uStack_6a0;
  int iStack_69c;
  undefined4 uStack_698;
  int iStack_694;
  char *pcStack_690;
  int *piStack_68c;
  int *piStack_688;
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
  piStack_67c = (int *)FUN_1055b120();
  if (piStack_67c == (int *)0x0) {
    return uStack_6a0;
  }
  FUN_10574ba0(&piStack_68c,(int *)(DAT_10c7b1f8 + 0x48));
  iVar1 = (int)piStack_688 - (int)piStack_68c >> 0x1f;
  if (((int)piStack_688 - (int)piStack_68c) / 0x90 + iVar1 == iVar1) {
    FUN_1065b2c0((undefined4 *)(DAT_10c7b1f8 + 0x48));
    FUN_10575870(&piStack_68c,(int *)(DAT_10c7b1f8 + 0x48));
  }
  piVar5 = piStack_68c;
  if (param_1 < (uint)(((int)piStack_688 - (int)piStack_68c) / 0x90)) {
    piVar5 = piStack_68c + param_1 * 0x24;
    iStack_69c = 0;
    uStack_698 = 0;
    iStack_694 = 0;
    pcStack_690 = "UI/CustomSongInfo";
    FUN_1006a620(&iStack_69c,(short *)piStack_68c[param_1 * 0x24]);
    pcVar2 = (char *)((int)piVar5 + 0x13);
    iVar3 = 0;
    iVar1 = 1 - (int)pcVar2;
    do {
      pcVar2[(int)&uStack_639 + iVar1] = *pcVar2;
      if (*pcVar2 == '\0') break;
      iVar3 = iVar3 + 1;
      pcVar2 = pcVar2 + 1;
    } while (iVar3 < 0x1e);
    if (iVar3 == 0) {
      FUN_10922390(auStack_410,(ushort *)*piVar5);
      FUN_10922040(auStack_410,auStack_610,0x100);
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
        *puVar4 = DAT_10b218ec;
      }
      pwVar6 = L"|%hs";
    }
    FUN_100722f0(&iStack_69c,(ushort *)pwVar6);
    pcVar2 = (char *)((int)piVar5 + 0x31);
    iVar3 = 0;
    iVar1 = 1 - (int)pcVar2;
    do {
      pcVar2[(int)&uStack_639 + iVar1] = *pcVar2;
      if (*pcVar2 == '\0') break;
      iVar3 = iVar3 + 1;
      pcVar2 = pcVar2 + 1;
    } while (iVar3 < 0x1e);
    if (iVar3 == 0x1e) {
      uStack_61a = 0;
      puVar4 = &uStack_639;
      do {
        pcVar2 = (char *)((int)puVar4 + 1);
        puVar4 = (undefined4 *)((int)puVar4 + 1);
      } while (*pcVar2 != '\0');
      *puVar4 = DAT_10b218ec;
    }
    FUN_100722f0(&iStack_69c,(ushort *)L"|%hs");
    appuStack_678[0] = &PTR_FUN_10aca5b4;
    uStack_670 = 0;
    uStack_66e = 0;
    FUN_10928b90(appuStack_678,0x13,9,&iStack_69c,0x10,1);
    appuStack_658[0] = &PTR_FUN_10aca5b4;
    uStack_650 = 0;
    uStack_64e = 0;
    FUN_100c4ac0(appuStack_658,(int)appuStack_678);
    appuStack_678[0] = &PTR_FUN_10aca5b4;
    if ((uStack_670 & 4) != 0) {
      FUN_10928a90(appuStack_678,'\0');
    }
    (**(code **)(*piStack_67c + 0x50))(appuStack_658,&uStack_6a0);
    appuStack_658[0] = &PTR_FUN_10aca5b4;
    if ((uStack_650 & 4) != 0) {
      FUN_10928a90(appuStack_658,'\0');
    }
    piVar5 = piStack_68c;
    if ((2 < (int)(iStack_694 - iStack_69c & 0xfffffffeU)) && (iStack_69c != 0)) {
      FUN_10918e90(iStack_69c);
      piVar5 = piStack_68c;
    }
  }
  for (; piStack_68c < piStack_688; piStack_68c = piStack_68c + 0x24) {
    iVar1 = *piStack_68c;
    if ((2 < (int)(piStack_68c[2] - iVar1 & 0xfffffffeU)) && (iVar1 != 0)) {
      FUN_10918e90(iVar1);
    }
  }
  if (piVar5 != (int *)0x0) {
    FUN_10918e90((int)piVar5);
  }
  return uStack_6a0;
}

