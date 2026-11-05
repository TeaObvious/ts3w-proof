/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_DesignPresetMergeTattooTemplates. Export
   ordinal(s): 81. Entry VA: 0x1039f050. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600048A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl
CASUtils_DesignPresetMergeTattooTemplates
          (int param_1,int param_2,int param_3,int param_4,int param_5)

{
  bool bVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  int unaff_EBP;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  undefined *puStack_3ac;
  undefined *puStack_3a8;
  undefined **ppuStack_3a4;
  char *pcStack_3a0;
  undefined **appuStack_39c [2];
  undefined2 uStack_394;
  undefined2 uStack_392;
  undefined4 auStack_384 [2];
  undefined4 auStack_37c [24];
  byte *pbStack_31c;
  byte *pbStack_318;
  int *piStack_314;
  byte abStack_30c [256];
  int aiStack_20c [2];
  undefined4 auStack_204 [24];
  undefined4 auStack_1a4 [26];
  undefined4 auStack_13c [26];
  undefined4 auStack_d4 [26];
  undefined4 auStack_6c [26];
  undefined4 uStack_4;
  
                    /* 0x39f050  81  CASUtils_DesignPresetMergeTattooTemplates */
  piVar2 = (int *)FUN_1055b120();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))();
  if (pWVar3 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar6 = 4;
  puVar4 = auStack_204;
  do {
    FUN_103ba880(puVar4);
    puVar4 = puVar4 + 0x1a;
    iVar6 = iVar6 + -1;
  } while (-1 < iVar6);
  if (param_1 == 0) {
    aiStack_20c[0] = param_1;
  }
  else {
    aiStack_20c[0] = (**(code **)(*piVar2 + 0x58))(param_1);
    if (aiStack_20c[0] != 0) {
      bVar1 = FUN_103eff30(piVar2,auStack_1a4,param_2);
      if (bVar1) {
        bVar1 = FUN_103eff30(piVar2,auStack_13c,param_3);
        if (bVar1) {
          bVar1 = FUN_103eff30(piVar2,auStack_d4,param_4);
          if (bVar1) {
            FUN_103eff30(piVar2,auStack_6c,param_5);
          }
        }
      }
      FUN_103ba880(auStack_37c);
      FUN_103bae20(auStack_37c,pWVar3);
      puVar4 = auStack_204;
      uVar7 = 1;
      do {
        if ((LPCWSTR)puVar4[-2] == (LPCWSTR)0x0) break;
        FUN_103bae20(puVar4,(LPCWSTR)puVar4[-2]);
        FUN_103f05a0("Layer%dMask",3,1,uVar7,puVar4,auStack_37c);
        uVar5 = 0;
        do {
          FUN_103f05a0(*(undefined4 *)((int)&PTR_s_Layer_dColorR_10c27380 + uVar5),2,1,uVar7,puVar4,
                       auStack_37c);
          uVar5 = uVar5 + 4;
        } while (uVar5 < 0x10);
        pbStack_31c = abStack_30c;
        piStack_314 = aiStack_20c;
        abStack_30c[0] = 0;
        pbStack_318 = pbStack_31c;
        FUN_103f0580(&pbStack_31c,"Layer%dEnabled");
        FUN_103ba0b0(auStack_37c,pbStack_31c,7,1,0);
        puVar4 = puVar4 + 0x1a;
        bVar1 = uVar7 < 5;
        uVar7 = uVar7 + 1;
      } while (bVar1);
      pcStack_3a0 = "CAS/Host";
      puStack_3ac = &_Dst_10ca8244;
      puStack_3a8 = &_Dst_10ca8244;
      ppuStack_3a4 = (undefined **)&DAT_10ca8246;
      FUN_103baae0(auStack_37c,&puStack_3ac);
      appuStack_39c[0] = &PTR_FUN_10aca5b4;
      uStack_392 = 0x13;
      uStack_394 = 0xb;
      FUN_10928b90(appuStack_39c,0x13,9,&puStack_3ac,0x10,1);
      (**(code **)(*piVar2 + 0x50))(appuStack_39c,&stack0xfffffc50);
      ppuStack_3a4 = &PTR_FUN_10aca5b4;
      if (((uint)appuStack_39c[0] & 4) != 0) {
        FUN_10928a90(&ppuStack_3a4,'\0');
      }
      if ((2 < (int)((int)puStack_3ac - unaff_EBP & 0xfffffffeU)) && (unaff_EBP != 0)) {
        FUN_10918e90(unaff_EBP);
      }
      FUN_103baaa0(auStack_384);
      iVar6 = 4;
      puVar4 = &uStack_4;
      do {
        puVar4 = puVar4 + -0x1a;
        FUN_103baaa0(puVar4);
        iVar6 = iVar6 + -1;
      } while (-1 < iVar6);
      return param_1;
    }
  }
  FUN_10001000(aiStack_20c,0x68,5,&LAB_103eff70);
  return 0;
}

