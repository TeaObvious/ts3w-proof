/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetSaveGameMetadataImpl. Export
   ordinal(s): 1110. Entry VA: 0x10575860. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006ED. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
UIManager_GetSaveGameMetadataImpl(undefined4 param_1,undefined4 *param_2,undefined4 *param_3)

{
  void *pvVar1;
  byte bVar2;
  int *piVar3;
  short *psVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  int *piVar8;
  undefined4 *puVar9;
  int *piVar10;
  int *piStack_45c;
  int iStack_458;
  int iStack_454;
  int iStack_450;
  char *pcStack_44c;
  int *piStack_448;
  uint uStack_444;
  undefined4 uStack_440;
  undefined4 *puStack_43c;
  uint uStack_438;
  void *pvStack_434;
  uint uStack_430;
  uint uStack_42c;
  uint uStack_428;
  uint uStack_424;
  int iStack_420;
  int iStack_41c;
  int iStack_418;
  int iStack_414;
  int iStack_410;
  int iStack_40c;
  int iStack_408;
  int iStack_404;
  uint uStack_3fc;
  int iStack_3f8;
  int iStack_3f4;
  undefined4 uStack_3f0;
  undefined4 uStack_3ec;
  int iStack_3e8;
  int iStack_3e4;
  undefined4 uStack_3e0;
  undefined4 uStack_3dc;
  undefined **appuStack_3c8 [2];
  undefined2 uStack_3c0;
  undefined2 uStack_3be;
  int aiStack_3a8 [4];
  int aiStack_398 [40];
  int aiStack_2f8 [74];
  int aiStack_1d0 [74];
  int aiStack_a8 [41];
  
  *param_2 = 0;
  uStack_440 = 0;
  *param_3 = 0;
  piVar3 = (int *)FUN_1055b120();
  if (piVar3 != (int *)0x0) {
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_1);
    iStack_458 = 0;
    iStack_454 = 0;
    iStack_450 = 0;
    pcStack_44c = "UI/SaveGameMetadata";
    FUN_1006a620(&iStack_458,psVar4);
    if (iStack_454 - iStack_458 >> 1 != 0) {
      piStack_45c = (int *)0x0;
      iVar5 = FUN_1006efc0();
      if (((iVar5 != 0) &&
          (pvVar1 = (void *)(iVar5 + -0x14), pvStack_434 = pvVar1, pvVar1 != (void *)0x0)) &&
         (uVar6 = FUN_100705f0(&iStack_458,&puStack_43c), piVar8 = piStack_45c, (char)uVar6 != '\0')
         ) {
        if (piStack_45c != (int *)0x0) {
          piStack_45c = (int *)0x0;
          (**(code **)(*piVar8 + 4))();
        }
        uVar7 = FUN_100728e0(pvVar1,(int)puStack_43c,&piStack_45c);
        pvVar1 = DAT_10c71150;
        if ((char)uVar7 != '\0') {
          if ((DAT_10c71150 != (void *)0x0) &&
             (piVar8 = (int *)FUN_10072ad0(pvStack_434,(int)puStack_43c), piVar8 != (int *)0x0)) {
            FUN_10330800(pvVar1,piVar8);
            iStack_3f8 = piStack_45c[0xc];
            iStack_3f4 = piStack_45c[0xd];
            uStack_3f0 = 0xb3a415e;
            uStack_3ec = 0;
            iStack_410 = 0;
            iStack_40c = 0;
            iStack_408 = 0;
            iStack_404 = 0;
            FUN_1032cb80((int)&iStack_3f8,(undefined8 *)&iStack_410,&iStack_458);
            FUN_100ff920(aiStack_2f8,iStack_410,iStack_40c,iStack_408,iStack_404,0,0,0,2,0,0,0,0,
                         -0x1e3d8329,0,0);
            bVar2 = FUN_10326ac0(pvVar1,aiStack_2f8);
            if (bVar2 != 0) {
              piVar10 = (int *)0x0;
              piStack_448 = (int *)0x0;
              piVar8 = FUN_10323e50((int *)&piStack_448);
              FUN_103354a0(pvVar1,aiStack_2f8,piVar8,piVar10);
              piVar8 = piStack_448;
              if (piStack_448 != (int *)0x0) {
                piStack_448 = (int *)0x0;
                uVar6 = (**(code **)(*piVar3 + 200))(piVar8,0x30);
                *param_2 = uVar6;
                if (piStack_448 != (int *)0x0) {
                  (**(code **)(*piStack_448 + 4))();
                }
              }
            }
            iStack_3e8 = piStack_45c[0xe];
            iStack_3e4 = piStack_45c[0xf];
            uStack_3e0 = 0x436fee4c;
            uStack_3dc = 0;
            iStack_420 = 0;
            iStack_41c = 0;
            iStack_418 = 0;
            iStack_414 = 0;
            FUN_1032cb80((int)&iStack_3e8,(undefined8 *)&iStack_420,&iStack_458);
            FUN_100ff920(aiStack_1d0,iStack_420,iStack_41c,iStack_418,iStack_414,0,0,0,2,0,0,0,0,
                         -0x1e3d8329,0,0);
            bVar2 = FUN_10326ac0(pvVar1,aiStack_1d0);
            if (bVar2 != 0) {
              piVar10 = (int *)0x0;
              piStack_448 = (int *)0x0;
              piVar8 = FUN_10323e50((int *)&piStack_448);
              FUN_103354a0(pvVar1,aiStack_1d0,piVar8,piVar10);
              piVar8 = piStack_448;
              if (piStack_448 != (int *)0x0) {
                piStack_448 = (int *)0x0;
                uVar6 = (**(code **)(*piVar3 + 200))(piVar8,0x30);
                *param_3 = uVar6;
                if (piStack_448 != (int *)0x0) {
                  (**(code **)(*piStack_448 + 4))();
                }
              }
            }
            FUN_100faa00(aiStack_1d0);
            FUN_100faa00(aiStack_2f8);
          }
          FUN_10397890(piStack_45c,&uStack_42c,&uStack_430,&uStack_3fc,&uStack_438,&uStack_428,
                       &uStack_424);
          FUN_10882090(uStack_42c,uStack_430,-1,(short *)aiStack_398,0x50,0,-1);
          FUN_10882060(uStack_438,uStack_428,uStack_424,(short *)aiStack_a8,0x50,0);
          uStack_428 = uStack_424 << 8 | uStack_428;
          uStack_438 = uStack_428 << 8 | uStack_438;
          uStack_42c = uStack_438 << 8 | uStack_42c;
          uStack_444 = (((uStack_428 >> 0x18) << 8 | uStack_438 >> 0x18) << 8 | uStack_42c >> 0x18)
                       << 8 | (uStack_42c << 8 | uStack_430) >> 0x18;
          FUN_1006fb50(&iStack_458,(short *)piStack_45c[0x10]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x18]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x1c]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,aiStack_398);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,aiStack_a8);
          FUN_109263f0((int)aiStack_398,(ushort *)L"%I64d");
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,aiStack_398);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x20]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x24]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x28]);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x2c]);
          FUN_1079df30(aiStack_3a8,(LPCWSTR)piStack_45c[0x2c]);
          FUN_1056b480(aiStack_3a8);
          FUN_109263f0((int)aiStack_398,(ushort *)&DAT_10ab4880);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,aiStack_398);
          FUN_1006cf90(&iStack_458,(int *)&DAT_10b218dc);
          FUN_1006cf90(&iStack_458,(int *)piStack_45c[0x14]);
          puVar9 = FUN_102c0e40(&iStack_3e8,&iStack_458);
          appuStack_3c8[0] = &PTR_FUN_10aca5b4;
          uStack_3c0 = 0;
          uStack_3be = 0;
          FUN_100c4ac0(appuStack_3c8,(int)puVar9);
          FUN_10074c30(&iStack_3e8);
          (**(code **)(*piVar3 + 0x50))(appuStack_3c8,&uStack_440);
          pvVar1 = pvStack_434;
          FUN_1006f270((int)pvStack_434);
          FUN_1006f2a0((int)pvVar1);
          FUN_10074c30(appuStack_3c8);
        }
        FUN_102a0290(puStack_43c);
      }
      if (piStack_45c != (int *)0x0) {
        (**(code **)(*piStack_45c + 4))();
      }
    }
    if ((2 < (int)(iStack_450 - iStack_458 & 0xfffffffeU)) && (iStack_458 != 0)) {
      FUN_10918e90(iStack_458);
    }
  }
  return uStack_440;
}

