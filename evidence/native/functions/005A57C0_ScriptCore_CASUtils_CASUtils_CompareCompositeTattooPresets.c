/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Type propagation algorithm not settling */



/* Verified PC 1.67 registration table at 0x01156780 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_CompareCompositeTattooPresets [assembly=ScriptCore
   token=0x060003A0; pPreset1: System.String, pPreset2: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_CASUtils__CASUtils_CompareCompositeTattooPresets(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined4 unaff_EBX;
  uint uVar8;
  char cVar9;
  undefined1 auStack_222 [2];
  uint uStack_220;
  uint auStack_21c [5];
  float afStack_208 [8];
  int aiStack_1e8 [28];
  undefined4 auStack_178 [24];
  byte *pbStack_118;
  byte *pbStack_114;
  undefined1 *puStack_110;
  byte abStack_108 [256];
  undefined1 auStack_8 [8];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    DesignPreset_InitializeEmpty(aiStack_1e8 + 4);
    DesignPreset_InitializeEmpty(auStack_178);
    FUN_005c0060(aiStack_1e8 + 4,pWVar2);
    FUN_005c0060(auStack_178,pWVar3);
    pbStack_118 = abStack_108;
    puStack_110 = auStack_8;
    aiStack_1e8[0] = 0;
    aiStack_1e8[1] = 0;
    aiStack_1e8[2] = 0;
    aiStack_1e8[3] = 0;
    auStack_21c[1] = 0;
    auStack_21c[2] = 0;
    auStack_21c[3] = 0;
    auStack_21c[4] = 0;
    afStack_208[4] = 0.0;
    afStack_208[5] = 0.0;
    afStack_208[6] = 1.0;
    afStack_208[7] = 1.0;
    afStack_208[0] = 0.0;
    afStack_208[1] = 0.0;
    afStack_208[2] = 1.0;
    afStack_208[3] = 1.0;
    abStack_108[0] = 0;
    pbStack_114 = pbStack_118;
    PresetProperty_ReadWordByName
              (aiStack_1e8 + 4,"ColorAlphaMultiply",(uint *)(auStack_222 + -10),&uStack_220);
    PresetProperty_ReadWordByName
              (auStack_178,"ColorAlphaMultiply",(uint *)(auStack_222 + -10),auStack_21c);
    if (uStack_220 == auStack_21c[0]) {
      uVar8 = 1;
      while( true ) {
        FUN_00930fa0(&pbStack_118,"Layer%dEnabled");
        uVar4 = FUN_005bf000(aiStack_1e8 + 4,pbStack_118,(uint *)(auStack_222 + -10),
                             auStack_222 + -3);
        if ((char)uVar4 == '\0') break;
        uVar4 = FUN_005bf000(auStack_178,pbStack_118,(uint *)(auStack_222 + -10),auStack_222 + -4);
        if (((char)uVar4 == '\0') ||
           (cVar9 = (char)((uint)unaff_EBX >> 0x18), cVar9 != (char)((uint)unaff_EBX >> 0x10)))
        break;
        if (cVar9 != '\0') {
          FUN_00930fa0(&pbStack_118,"Layer%dMask");
          uVar4 = FUN_005bf4c0(aiStack_1e8 + 4,pbStack_118,(uint *)(auStack_222 + -10),aiStack_1e8);
          if ((char)uVar4 == '\0') break;
          uVar4 = FUN_005bf4c0(auStack_178,pbStack_118,(uint *)(auStack_222 + -10),auStack_21c + 1);
          if ((char)uVar4 == '\0') break;
          uVar5 = FUN_0054e0a0(aiStack_1e8,(int *)(auStack_21c + 1));
          if ((char)uVar5 != '\0') break;
          uVar5 = FUN_005f7160(aiStack_1e8 + 4,uVar8,afStack_208 + 4);
          if ((char)uVar5 == '\0') break;
          uVar5 = FUN_005f7160(auStack_178,uVar8,afStack_208);
          if ((char)uVar5 == '\0') break;
          uVar4 = 0;
          do {
            if (DAT_01158d70 <
                ABS(*(float *)((int)afStack_208 + uVar4 + 0x10) -
                    *(float *)((int)afStack_208 + uVar4))) goto LAB_005f7873;
            uVar4 = uVar4 + 4;
          } while (uVar4 < 0x10);
          uVar4 = 0;
          do {
            iVar6 = FUN_005f6c50(aiStack_1e8 + 4,
                                 *(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4));
            iVar7 = FUN_005f6c50(aiStack_1e8 + 4,
                                 *(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4));
            if (iVar6 != iVar7) goto LAB_005f7873;
            uVar4 = uVar4 + 4;
          } while (uVar4 < 0x10);
        }
        uVar8 = uVar8 + 1;
        if (5 < uVar8) {
          FUN_005bfce0(auStack_178);
          uVar5 = FUN_005bfce0(aiStack_1e8 + 4);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
      }
LAB_005f7873:
      FUN_005bfce0(auStack_178);
      uVar8 = FUN_005bfce0(aiStack_1e8 + 4);
      return uVar8 & 0xffffff00;
    }
    FUN_005bfce0(auStack_178);
    pWVar3 = (LPCWSTR)FUN_005bfce0(aiStack_1e8 + 4);
  }
  return (uint)pWVar3 & 0xffffff00;
}

