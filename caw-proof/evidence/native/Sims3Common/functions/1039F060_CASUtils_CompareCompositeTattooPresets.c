/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CompareCompositeTattooPresets. Export
   ordinal(s): 68. Entry VA: 0x1039f060. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000494. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_CompareCompositeTattooPresets(undefined4 param_1)

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
  int iStack_220;
  int aiStack_21c [5];
  float afStack_208 [4];
  float afStack_1f8 [4];
  int aiStack_1e8 [28];
  undefined4 auStack_178 [24];
  byte *pbStack_118;
  byte *pbStack_114;
  undefined1 *puStack_110;
  byte abStack_108 [256];
  undefined1 auStack_8 [8];
  
                    /* 0x39f060  68  CASUtils_CompareCompositeTattooPresets */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    FUN_103ba880(aiStack_1e8 + 4);
    FUN_103ba880(auStack_178);
    FUN_103bae20(aiStack_1e8 + 4,pWVar2);
    FUN_103bae20(auStack_178,pWVar3);
    pbStack_118 = abStack_108;
    puStack_110 = auStack_8;
    aiStack_1e8[0] = 0;
    aiStack_1e8[1] = 0;
    aiStack_1e8[2] = 0;
    aiStack_1e8[3] = 0;
    aiStack_21c[1] = 0;
    aiStack_21c[2] = 0;
    aiStack_21c[3] = 0;
    aiStack_21c[4] = 0;
    afStack_1f8[0] = 0.0;
    afStack_1f8[1] = 0.0;
    afStack_1f8[2] = (float)DAT_10acb0d4;
    afStack_1f8[3] = (float)DAT_10acb0d4;
    afStack_208[0] = 0.0;
    afStack_208[1] = 0.0;
    afStack_208[2] = (float)DAT_10acb0d4;
    afStack_208[3] = (float)DAT_10acb0d4;
    abStack_108[0] = 0;
    pbStack_114 = pbStack_118;
    FUN_103ba230(aiStack_1e8 + 4,(byte *)"ColorAlphaMultiply",(uint *)&stack0xfffffdd4,&iStack_220);
    FUN_103ba230(auStack_178,(byte *)"ColorAlphaMultiply",(uint *)&stack0xfffffdd4,aiStack_21c);
    if (iStack_220 == aiStack_21c[0]) {
      uVar8 = 1;
      while( true ) {
        FUN_1013f320(&pbStack_118,"Layer%dEnabled");
        uVar4 = FUN_103b9e20(aiStack_1e8 + 4,pbStack_118,(uint *)&stack0xfffffdd4,&stack0xfffffddb);
        if ((char)uVar4 == '\0') break;
        uVar4 = FUN_103b9e20(auStack_178,pbStack_118,(uint *)&stack0xfffffdd4,&stack0xfffffdda);
        if (((char)uVar4 == '\0') ||
           (cVar9 = (char)((uint)unaff_EBX >> 0x18), cVar9 != (char)((uint)unaff_EBX >> 0x10)))
        break;
        if (cVar9 != '\0') {
          FUN_1013f320(&pbStack_118,"Layer%dMask");
          uVar4 = FUN_103ba280(aiStack_1e8 + 4,pbStack_118,(uint *)&stack0xfffffdd4,aiStack_1e8);
          if ((char)uVar4 == '\0') break;
          uVar4 = FUN_103ba280(auStack_178,pbStack_118,(uint *)&stack0xfffffdd4,aiStack_21c + 1);
          if ((char)uVar4 == '\0') break;
          uVar5 = FUN_10028670(aiStack_1e8,aiStack_21c + 1);
          if ((char)uVar5 != '\0') break;
          uVar5 = FUN_103f1490(aiStack_1e8 + 4,uVar8,afStack_1f8);
          if ((char)uVar5 == '\0') break;
          uVar5 = FUN_103f1490(auStack_178,uVar8,afStack_208);
          if ((char)uVar5 == '\0') break;
          uVar4 = 0;
          do {
            if (DAT_10c273b0 <
                ABS(*(float *)((int)afStack_1f8 + uVar4) - *(float *)((int)afStack_208 + uVar4)))
            goto LAB_103f1ba3;
            uVar4 = uVar4 + 4;
          } while (uVar4 < 0x10);
          uVar4 = 0;
          do {
            iVar6 = FUN_103f0f80(aiStack_1e8 + 4,
                                 *(undefined4 *)((int)&PTR_s_Layer_dColorR_10c27380 + uVar4));
            iVar7 = FUN_103f0f80(aiStack_1e8 + 4,
                                 *(undefined4 *)((int)&PTR_s_Layer_dColorR_10c27380 + uVar4));
            if (iVar6 != iVar7) goto LAB_103f1ba3;
            uVar4 = uVar4 + 4;
          } while (uVar4 < 0x10);
        }
        uVar8 = uVar8 + 1;
        if (5 < uVar8) {
          FUN_103baaa0(auStack_178);
          uVar5 = FUN_103baaa0(aiStack_1e8 + 4);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
      }
LAB_103f1ba3:
      FUN_103baaa0(auStack_178);
      uVar8 = FUN_103baaa0(aiStack_1e8 + 4);
      return uVar8 & 0xffffff00;
    }
    FUN_103baaa0(auStack_178);
    pWVar3 = (LPCWSTR)FUN_103baaa0(aiStack_1e8 + 4);
  }
  return (uint)pWVar3 & 0xffffff00;
}

