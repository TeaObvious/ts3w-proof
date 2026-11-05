/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197230 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_SetDebugOption [assembly=ScriptCore token=0x06000258; name:
   System.String, value: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_GameUtils__GameUtils_SetDebugOption(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  short *psVar2;
  wchar_t *pwVar4;
  wchar_t *pwVar3;
  int iVar5;
  void *pvVar6;
  ushort *extraout_EAX;
  ushort *extraout_EAX_00;
  uint uVar7;
  int iVar8;
  int iVar9;
  longlong lVar10;
  undefined4 uVar11;
  int iStack_28;
  int iStack_24;
  ushort *puStack_20;
  undefined1 *puStack_1c;
  undefined2 *puStack_18;
  char *pcStack_14;
  ushort *puStack_10;
  undefined1 *puStack_c;
  undefined2 *puStack_8;
  char *pcStack_4;
  
  pcStack_14 = "Services/GameHost";
  puStack_20 = (ushort *)&DAT_011c8e54;
  puStack_1c = &DAT_011c8e54;
  puStack_18 = &DAT_011c8e56;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
      FUN_00408f50(&puStack_20,psVar2);
      pcStack_4 = "Services/GameHost";
      puStack_10 = (ushort *)&DAT_011c8e54;
      puStack_c = &DAT_011c8e54;
      puStack_8 = &DAT_011c8e56;
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      if (piVar1 != (int *)0x0) {
        psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
        if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
          FUN_00408f50(&puStack_10,psVar2);
          pwVar3 = L"NoRender";
          do {
            pwVar4 = pwVar3;
            pwVar3 = pwVar4 + 1;
          } while (*pwVar3 != L'\0');
          iVar8 = (int)puStack_1c - (int)puStack_20 >> 1;
          iVar9 = ((int)(pwVar4 + -0x879a03) >> 1) * 2 >> 1;
          iStack_24 = iVar8;
          iStack_28 = iVar9;
          piVar1 = &iStack_28;
          if (iVar8 <= iVar9) {
            piVar1 = &iStack_24;
          }
          iVar5 = Utf16_CompareLowByteCaseFoldedPrefix(puStack_20,(ushort *)L"NoRender",*piVar1);
          if (((iVar5 == 0) && (iVar9 <= iVar8)) && (iVar8 <= iVar9)) {
            pvVar6 = LoadPump_ReadFrameServiceGlobal();
            if (pvVar6 != (void *)0x0) {
              iStack_28 = 0;
              iStack_24 = 0;
              FUN_006e8240(pvVar6,&iStack_28,&iStack_24);
              iVar8 = FUN_004e3980(&puStack_10,&DAT_00fc1cd8);
              if (iVar8 == 0) {
                uVar11 = 0;
              }
              else {
                uVar11 = 0x7ffff000;
              }
              FUN_006e8260(pvVar6,iStack_28,uVar11);
              if ((2 < (int)((int)puStack_8 - (int)puStack_10 & 0xfffffffeU)) &&
                 (puStack_10 != (ushort *)0x0)) {
                Memory_FreeIfNonNull(puStack_10);
              }
              if ((2 < (int)((int)puStack_18 - (int)puStack_20 & 0xfffffffeU)) &&
                 (puStack_20 != (ushort *)0x0)) {
                Memory_FreeIfNonNull(puStack_20);
                puStack_20 = extraout_EAX;
              }
              return CONCAT31((int3)((uint)puStack_20 >> 8),1);
            }
          }
          else {
            iVar8 = FUN_004e3980(&puStack_20,(ushort *)L"RenderNoFill");
            if (iVar8 == 0) {
              pvVar6 = LoadPump_ReadFrameServiceGlobal();
              if (pvVar6 == (void *)0x0) {
                FUN_004ef8f0((int *)&puStack_10);
                uVar7 = FUN_004ef8f0((int *)&puStack_20);
                return uVar7 & 0xffffff00;
              }
              iVar8 = FUN_004e3980(&puStack_10,&DAT_00fc1cd8);
              *(bool *)((int)pvVar6 + 0x276) = iVar8 == 0;
              FUN_004ef8f0((int *)&puStack_10);
              uVar11 = FUN_004ef8f0((int *)&puStack_20);
              return CONCAT31((int3)((uint)uVar11 >> 8),1);
            }
            iVar8 = FUN_004e3980(&puStack_20,(ushort *)L"Deterministic");
            if (iVar8 == 0) {
              iVar8 = FUN_004e3980(&puStack_10,&DAT_00fc1cd8);
              if (iVar8 == 0) {
                FUN_00588bf0(1);
              }
              else {
                FUN_00588bf0(0);
              }
            }
            else {
              iVar8 = FUN_004e3980(&puStack_20,(ushort *)L"ScreenCaptureImageQuality");
              if (iVar8 == 0) {
                lVar10 = FUN_007d9c80(puStack_10);
                piVar1 = (int *)FUN_009dff90();
                if (piVar1 != (int *)0x0) {
                  (**(code **)(*piVar1 + 0x18))((int)lVar10);
                }
              }
            }
          }
        }
      }
      if ((2 < (int)((int)puStack_8 - (int)puStack_10 & 0xfffffffeU)) &&
         (puStack_10 != (ushort *)0x0)) {
        Memory_FreeIfNonNull(puStack_10);
      }
      uVar7 = (int)puStack_18 - (int)puStack_20;
      goto LAB_00ec2c4f;
    }
  }
  uVar7 = (int)puStack_18 - (int)puStack_20;
LAB_00ec2c4f:
  if ((2 < (int)(uVar7 & 0xfffffffe)) && (puStack_20 != (ushort *)0x0)) {
    Memory_FreeIfNonNull(puStack_20);
    puStack_20 = extraout_EAX_00;
  }
  return (uint)puStack_20 & 0xffffff00;
}

