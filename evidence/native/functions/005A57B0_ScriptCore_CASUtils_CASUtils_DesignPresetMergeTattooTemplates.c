/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x01156770 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_DesignPresetMergeTattooTemplates [assembly=ScriptCore
   token=0x06000396; pBaseTattooPreset: System.String, pTemplatePreset0: System.String,
   pTemplatePreset1: System.String, pTemplatePreset2: System.String, pTemplatePreset3:
   System.String, pTemplatePreset4: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_CASUtils__CASUtils_DesignPresetMergeTattooTemplates
              (int param_1,int param_2,int param_3,int param_4,int param_5)

{
  bool bVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  void *unaff_EBP;
  undefined1 *puVar4;
  uint uVar5;
  undefined4 *puVar6;
  int iVar7;
  uint uVar8;
  undefined1 *puStack_3ac;
  undefined **ppuStack_3a8;
  undefined **ppuStack_3a4;
  char *pcStack_3a0;
  undefined **appuStack_39c [2];
  undefined2 uStack_394;
  undefined2 uStack_392;
  undefined4 auStack_384 [2];
  undefined1 auStack_37c [96];
  byte *pbStack_31c;
  byte *pbStack_318;
  int *piStack_314;
  byte abStack_30c [256];
  int aiStack_20c [2];
  undefined1 auStack_204 [96];
  undefined4 auStack_1a4 [26];
  undefined4 auStack_13c [26];
  undefined4 auStack_d4 [26];
  undefined4 auStack_6c [26];
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))();
  if (pWVar3 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar7 = 4;
  puVar4 = auStack_204;
  do {
    DesignPreset_InitializeEmpty(puVar4);
    puVar4 = puVar4 + 0x68;
    iVar7 = iVar7 + -1;
  } while (-1 < iVar7);
  if (param_1 == 0) {
    aiStack_20c[0] = param_1;
  }
  else {
    aiStack_20c[0] = (**(code **)(*piVar2 + 0x58))(param_1);
    if (aiStack_20c[0] != 0) {
      bVar1 = FUN_005f5b00(piVar2,auStack_1a4,param_2);
      if (bVar1) {
        bVar1 = FUN_005f5b00(piVar2,auStack_13c,param_3);
        if (bVar1) {
          bVar1 = FUN_005f5b00(piVar2,auStack_d4,param_4);
          if (bVar1) {
            FUN_005f5b00(piVar2,auStack_6c,param_5);
          }
        }
      }
      DesignPreset_InitializeEmpty(auStack_37c);
      FUN_005c0060(auStack_37c,pWVar3);
      puVar4 = auStack_204;
      uVar8 = 1;
      do {
        if (*(LPCWSTR *)(puVar4 + -8) == (LPCWSTR)0x0) break;
        FUN_005c0060(puVar4,*(LPCWSTR *)(puVar4 + -8));
        FUN_005f6270("Layer%dMask",3,1,uVar8,puVar4,auStack_37c);
        uVar5 = 0;
        do {
          FUN_005f6270(*(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar5),2,1,uVar8,puVar4,
                       auStack_37c);
          uVar5 = uVar5 + 4;
        } while (uVar5 < 0x10);
        pbStack_31c = abStack_30c;
        piStack_314 = aiStack_20c;
        abStack_30c[0] = 0;
        pbStack_318 = pbStack_31c;
        FormatVariadicIntoTextReceiver(&pbStack_31c,"Layer%dEnabled",uVar8);
        FUN_005bf2f0(auStack_37c,pbStack_31c,7,1,0);
        puVar4 = puVar4 + 0x68;
        bVar1 = uVar8 < 5;
        uVar8 = uVar8 + 1;
      } while (bVar1);
      pcStack_3a0 = "CAS/Host";
      puStack_3ac = &DAT_011c8e54;
      ppuStack_3a8 = (undefined **)&DAT_011c8e54;
      ppuStack_3a4 = (undefined **)&DAT_011c8e56;
      FUN_005bfd20(auStack_37c,&puStack_3ac);
      appuStack_39c[0] = &PTR_FUN_0100886c;
      uStack_392 = 0x13;
      uStack_394 = 0xb;
      FUN_004f59c0(appuStack_39c,0x13,9,&puStack_3ac,0x10,1);
      (**(code **)(*piVar2 + 0x50))(appuStack_39c,appuStack_39c + -5);
      ppuStack_3a4 = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_39c[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_3a4,'\0');
      }
      if ((2 < (int)((int)puStack_3ac - (int)unaff_EBP & 0xfffffffeU)) && (unaff_EBP != (void *)0x0)
         ) {
        Memory_FreeIfNonNull(unaff_EBP);
      }
      FUN_005bfce0(auStack_384);
      iVar7 = 4;
      puVar6 = &uStack_4;
      do {
        puVar6 = puVar6 + -0x1a;
        FUN_005bfce0(puVar6);
        iVar7 = iVar7 + -1;
      } while (-1 < iVar7);
      return param_1;
    }
  }
  FUN_004466e0(aiStack_20c,0x68,5,&LAB_005f5b40);
  return 0;
}

