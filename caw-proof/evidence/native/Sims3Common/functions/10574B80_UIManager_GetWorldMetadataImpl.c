/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetWorldMetadataImpl. Export
   ordinal(s): 1118. Entry VA: 0x10574b80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006EF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
UIManager_GetWorldMetadataImpl
          (undefined4 param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
          int *param_5,uint *param_6)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 uStack_10c;
  undefined4 *puStack_108;
  int iStack_104;
  int iStack_100;
  int iStack_fc;
  char *pcStack_f8;
  char *pcStack_f4;
  undefined **appuStack_f0 [2];
  undefined2 uStack_e8;
  undefined2 uStack_e6;
  int aiStack_d0 [4];
  undefined4 auStack_c0 [2];
  undefined4 uStack_b8;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 *puStack_58;
  short *psStack_54;
  undefined4 auStack_20 [8];
  
  uStack_10c = 0;
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    iStack_104 = 0;
    iStack_100 = 0;
    iStack_fc = 0;
    pcStack_f8 = "UI/SaveGameMetadata";
    FUN_1006a620(&iStack_104,psVar2);
    if ((((iStack_100 - iStack_104 >> 1 != 0) && (iVar3 = FUN_1006efc0(), iVar3 != 0)) &&
        ((void *)(iVar3 + -0x14) != (void *)0x0)) &&
       (uVar4 = FUN_100705f0(&iStack_104,&puStack_108), (char)uVar4 != '\0')) {
      FUN_1039c030(auStack_c0);
      uVar5 = FUN_10071130((void *)(iVar3 + -0x14),(int)puStack_108);
      if ((char)uVar5 != '\0') {
        *param_4 = uStack_a0;
        param_4[1] = uStack_9c;
        if (puStack_58 != (undefined4 *)0x0) {
          puVar6 = FUN_105d9240(puStack_58);
          if (puVar6 == (undefined4 *)0x0) {
            *param_3 = 0;
          }
          else {
            puStack_58 = (undefined4 *)0x0;
            (**(code **)*puVar6)();
            piVar7 = (int *)FUN_1055b120();
            uVar4 = (**(code **)(*piVar7 + 200))(puVar6,0x30);
            *param_3 = uVar4;
          }
        }
        *param_2 = uStack_b8;
        iVar3 = FUN_1039c470((int)auStack_c0);
        *param_5 = iVar3;
        uVar5 = FUN_1039c2e0((int)auStack_c0);
        *param_6 = uVar5;
        pcStack_f4 = "UI/SaveGameMetadata";
        puVar6 = FUN_1006aaa0(aiStack_d0,psStack_54,&pcStack_f4);
        puVar6 = FUN_102c0e40(auStack_20,puVar6);
        appuStack_f0[0] = &PTR_FUN_10aca5b4;
        uStack_e8 = 0;
        uStack_e6 = 0;
        FUN_100c4ac0(appuStack_f0,(int)puVar6);
        FUN_10074c30(auStack_20);
        FUN_1001f4e0(aiStack_d0);
        (**(code **)(*piVar1 + 0x50))(appuStack_f0,&uStack_10c);
        FUN_10074c30(appuStack_f0);
      }
      FUN_102a0290(puStack_108);
      FUN_1039c0f0(auStack_c0);
    }
    if ((2 < (int)(iStack_fc - iStack_104 & 0xfffffffeU)) && (iStack_104 != 0)) {
      FUN_10918e90(iStack_104);
    }
  }
  return uStack_10c;
}

