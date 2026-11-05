/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630b8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetSaveGameMetadataImpl [assembly=ScriptCore token=0x06000E52;
   saveFile: System.String, householdThumbnail: System.UInt32&, lotThumbnail: System.UInt32&;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UIManager::UIManager_GetSaveGameMetadataImpl
          (undefined4 param_1,undefined4 *param_2,undefined4 *param_3)

{
  byte bVar1;
  int *piVar2;
  short *psVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  int *piVar7;
  void *pvVar8;
  int *piVar9;
  int *piStack_45c;
  int iStack_458;
  int iStack_454;
  int iStack_450;
  char *pcStack_44c;
  int *piStack_448;
  uint uStack_444;
  undefined4 local_440;
  undefined4 *puStack_43c;
  uint uStack_438;
  void *pvStack_434;
  uint uStack_430;
  uint uStack_42c;
  uint uStack_428;
  uint uStack_424;
  undefined4 uStack_420;
  undefined4 uStack_41c;
  undefined4 uStack_418;
  undefined4 uStack_414;
  undefined4 uStack_410;
  undefined4 uStack_40c;
  undefined4 uStack_408;
  undefined4 uStack_404;
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
  short asStack_398 [80];
  int aiStack_2f8 [74];
  int aiStack_1d0 [74];
  short asStack_a8 [82];
  
  *param_2 = 0;
  local_440 = 0;
  *param_3 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    iStack_458 = 0;
    iStack_454 = 0;
    iStack_450 = 0;
    pcStack_44c = "UI/SaveGameMetadata";
    FUN_0040b590(&iStack_458,psVar3);
    if (iStack_454 - iStack_458 >> 1 != 0) {
      piStack_45c = (int *)0x0;
      iVar4 = FUN_00aa9c70();
      if (((iVar4 != 0) &&
          (pvVar8 = (void *)(iVar4 + -0x14), pvStack_434 = pvVar8, pvVar8 != (void *)0x0)) &&
         (uVar5 = FUN_00aab460(&iStack_458,&puStack_43c), piVar7 = piStack_45c, (char)uVar5 != '\0')
         ) {
        if (piStack_45c != (int *)0x0) {
          piStack_45c = (int *)0x0;
          (**(code **)(*piVar7 + 4))();
        }
        uVar6 = FUN_00aad780(pvVar8,(int)puStack_43c,&piStack_45c);
        pvVar8 = DAT_011eec30;
        if ((char)uVar6 != '\0') {
          if ((DAT_011eec30 != (void *)0x0) &&
             (piVar7 = (int *)FUN_00aad970(pvStack_434,(int)puStack_43c), piVar7 != (int *)0x0)) {
            FUN_00d57cd0(pvVar8,piVar7);
            iStack_3f8 = piStack_45c[0xc];
            iStack_3f4 = piStack_45c[0xd];
            uStack_3f0 = 0xb3a415e;
            uStack_3ec = 0;
            uStack_410 = 0;
            uStack_40c = 0;
            uStack_408 = 0;
            uStack_404 = 0;
            FUN_00d53ef0((int)&iStack_3f8,(undefined8 *)&uStack_410,&iStack_458);
            FUN_00779200(aiStack_2f8,uStack_410,uStack_40c,uStack_408,uStack_404,0,0,0,2,0,0,0,0,
                         0xe1c27cd7,0,0);
            bVar1 = FUN_00d4e5d0(pvVar8,aiStack_2f8);
            if (bVar1 != 0) {
              piVar9 = (int *)0x0;
              piStack_448 = (int *)0x0;
              piVar7 = FUN_0074efa0((int *)&piStack_448);
              FUN_00d5c970(pvVar8,aiStack_2f8,piVar7,piVar9);
              piVar7 = piStack_448;
              if (piStack_448 != (int *)0x0) {
                piStack_448 = (int *)0x0;
                uVar5 = (**(code **)(*piVar2 + 200))(piVar7,0x30);
                *param_2 = uVar5;
                if (piStack_448 != (int *)0x0) {
                  (**(code **)(*piStack_448 + 4))();
                }
              }
            }
            iStack_3e8 = piStack_45c[0xe];
            iStack_3e4 = piStack_45c[0xf];
            uStack_3e0 = 0x436fee4c;
            uStack_3dc = 0;
            uStack_420 = 0;
            uStack_41c = 0;
            uStack_418 = 0;
            uStack_414 = 0;
            FUN_00d53ef0((int)&iStack_3e8,(undefined8 *)&uStack_420,&iStack_458);
            FUN_00779200(aiStack_1d0,uStack_420,uStack_41c,uStack_418,uStack_414,0,0,0,2,0,0,0,0,
                         0xe1c27cd7,0,0);
            bVar1 = FUN_00d4e5d0(pvVar8,aiStack_1d0);
            if (bVar1 != 0) {
              piVar9 = (int *)0x0;
              piStack_448 = (int *)0x0;
              piVar7 = FUN_0074efa0((int *)&piStack_448);
              FUN_00d5c970(pvVar8,aiStack_1d0,piVar7,piVar9);
              piVar7 = piStack_448;
              if (piStack_448 != (int *)0x0) {
                piStack_448 = (int *)0x0;
                uVar5 = (**(code **)(*piVar2 + 200))(piVar7,0x30);
                *param_3 = uVar5;
                if (piStack_448 != (int *)0x0) {
                  (**(code **)(*piStack_448 + 4))();
                }
              }
            }
            FUN_005e6410(aiStack_1d0);
            FUN_005e6410(aiStack_2f8);
          }
          FUN_0059dcd0(piStack_45c,&uStack_42c,&uStack_430,&uStack_3fc,&uStack_438,&uStack_428,
                       &uStack_424);
          FUN_0044afa0(uStack_42c,uStack_430,-1,asStack_398,0x50,0,-1);
          FUN_0044af70(uStack_438,uStack_428,uStack_424,asStack_a8,0x50,0);
          uStack_428 = uStack_424 << 8 | uStack_428;
          uStack_438 = uStack_428 << 8 | uStack_438;
          uStack_42c = uStack_438 << 8 | uStack_42c;
          uStack_444 = (((uStack_428 >> 0x18) << 8 | uStack_438 >> 0x18) << 8 | uStack_42c >> 0x18)
                       << 8 | (uStack_42c << 8 | uStack_430) >> 0x18;
          FUN_00408f50(&iStack_458,(short *)piStack_45c[0x10]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x18]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x1c]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,asStack_398);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,asStack_a8);
          FUN_004f3100((int)asStack_398,(ushort *)L"%I64d");
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,asStack_398);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x20]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x24]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x28]);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x2c]);
          FUN_009aecb0(aiStack_3a8,(LPCWSTR)piStack_45c[0x2c]);
          FUN_00779580(aiStack_3a8);
          FUN_004f3100((int)asStack_398,(ushort *)&DAT_00fc056c);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,asStack_398);
          FUN_004e3950(&iStack_458,&DAT_0100fbb0);
          FUN_004e3950(&iStack_458,(short *)piStack_45c[0x14]);
          pvVar8 = FUN_004f6630(&iStack_3e8,&iStack_458);
          appuStack_3c8[0] = &PTR_FUN_00fba6f4;
          uStack_3c0 = 0;
          uStack_3be = 0;
          FUN_004f64b0(appuStack_3c8,(int)pvVar8);
          FUN_004f5820(&iStack_3e8);
          (**(code **)(*piVar2 + 0x50))(appuStack_3c8,&local_440);
          pvVar8 = pvStack_434;
          FUN_00aaa010((int)pvStack_434);
          FUN_00aaa040((int)pvVar8);
          FUN_004f5820(appuStack_3c8);
        }
        FUN_0050a3b0(puStack_43c);
      }
      if (piStack_45c != (int *)0x0) {
        (**(code **)(*piStack_45c + 4))();
      }
    }
    if ((2 < (int)(iStack_450 - iStack_458 & 0xfffffffeU)) && (iStack_458 != 0)) {
      FUN_004e44e0(iStack_458);
    }
  }
  return local_440;
}

