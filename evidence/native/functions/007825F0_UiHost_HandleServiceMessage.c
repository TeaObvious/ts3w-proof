/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 TS3W.exe physical body; UIHost secondary-interface vtable0100FBB8
   reaches this complete service-message receiver. ECX is opaque adjusted receiver (UIHost+4),
   eventId/payload are two physical DWORDs at entry+4/+8; all returns RET8 and set AL status.
   Event07983246 builds ten 0x20-byte (32-byte) variants from changed-resolution message
   fields+8..+2C (boolean low bytes+14/+24), invokes receiver+2C (UIHost callback+30) through
   managed-host+134 with count10 when nonnull, then cleans variants. Missing managed interface
   returns AL0. Other original service-event cases remain in this same full body. Actual
   marshaller/scheduler child semantics remain external; no guessed receiver/payload structure. */

bool __thiscall UiHost_HandleServiceMessage(undefined *receiver,uint messageId,undefined *payload)

{
  int *piVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined1 uStack_45e;
  undefined1 uStack_45d;
  char *pcStack_45c;
  uint uStack_458;
  uint uStack_454;
  uint uStack_450;
  uint uStack_44c;
  uint uStack_448;
  uint uStack_444;
  uint uStack_440;
  int *piStack_43c;
  uint uStack_438;
  undefined4 uStack_434;
  undefined **appuStack_430 [2];
  undefined2 uStack_428;
  undefined2 uStack_426;
  undefined **appuStack_410 [2];
  undefined2 uStack_408;
  undefined2 uStack_406;
  undefined **appuStack_3f0 [2];
  undefined2 uStack_3e8;
  undefined2 uStack_3e6;
  undefined **appuStack_3d0 [2];
  undefined2 uStack_3c8;
  undefined2 uStack_3c6;
  undefined **appuStack_3b0 [2];
  undefined2 uStack_3a8;
  undefined2 uStack_3a6;
  undefined **appuStack_390 [2];
  undefined2 uStack_388;
  undefined2 uStack_386;
  undefined **appuStack_370 [2];
  undefined2 uStack_368;
  undefined2 uStack_366;
  undefined **appuStack_350 [2];
  undefined2 uStack_348;
  undefined2 uStack_346;
  undefined **appuStack_330 [2];
  undefined2 uStack_328;
  undefined2 uStack_326;
  undefined **appuStack_310 [2];
  undefined2 uStack_308;
  undefined2 uStack_306;
  undefined **appuStack_2f0 [2];
  undefined2 uStack_2e8;
  undefined2 uStack_2e6;
  undefined **appuStack_2d0 [2];
  undefined2 uStack_2c8;
  undefined2 uStack_2c6;
  undefined **appuStack_2b0 [2];
  byte bStack_2a8;
  undefined **appuStack_290 [2];
  byte bStack_288;
  undefined **appuStack_280 [2];
  byte bStack_278;
  undefined1 auStack_270 [32];
  undefined **appuStack_250 [2];
  byte bStack_248;
  undefined **appuStack_230 [2];
  byte bStack_228;
  undefined **appuStack_210 [2];
  byte bStack_208;
  undefined **appuStack_1f0 [2];
  byte bStack_1e8;
  undefined **appuStack_1d0 [2];
  byte bStack_1c8;
  undefined **appuStack_1b0 [2];
  byte bStack_1a8;
  int aiStack_190 [4];
  undefined **appuStack_180 [2];
  byte bStack_178;
  int aiStack_160 [4];
  int aiStack_150 [4];
  undefined **appuStack_140 [2];
  byte bStack_138;
  undefined4 auStack_120 [4];
  undefined4 auStack_110 [4];
  undefined1 auStack_100 [32];
  undefined4 auStack_e0 [8];
  undefined4 auStack_c0 [4];
  undefined4 auStack_b0 [4];
  undefined1 auStack_a0 [32];
  undefined4 auStack_80 [4];
  undefined4 auStack_70 [4];
  undefined1 auStack_60 [32];
  undefined4 auStack_40 [8];
  undefined4 auStack_20 [8];
  
  pcStack_45c = receiver;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return false;
  }
  piStack_43c = piVar1;
  if (messageId < 0xe777fb0e) {
    if (messageId != 0xe777fb0d) {
      if (messageId == 0x7983246) {
        uStack_450 = *(uint *)(payload + 8);
        pvVar2 = Variant_ConstructUInt32(appuStack_250,&uStack_450);
        appuStack_3f0[0] = &PTR_FUN_00fba6f4;
        uStack_3e8 = 0;
        uStack_3e6 = 0;
        FUN_004f64b0(appuStack_3f0,(int)pvVar2);
        appuStack_250[0] = &PTR_FUN_00fba6f4;
        if ((bStack_248 & 4) != 0) {
          FUN_004f5760(appuStack_250,'\0');
        }
        uStack_438 = *(uint *)(payload + 0xc);
        pvVar2 = Variant_ConstructUInt32(appuStack_2b0,&uStack_438);
        appuStack_3d0[0] = &PTR_FUN_00fba6f4;
        uStack_3c8 = 0;
        uStack_3c6 = 0;
        FUN_004f64b0(appuStack_3d0,(int)pvVar2);
        appuStack_2b0[0] = &PTR_FUN_00fba6f4;
        if ((bStack_2a8 & 4) != 0) {
          FUN_004f5760(appuStack_2b0,'\0');
        }
        uStack_448 = *(uint *)(payload + 0x10);
        pvVar2 = Variant_ConstructUInt32(appuStack_140,&uStack_448);
        appuStack_3b0[0] = &PTR_FUN_00fba6f4;
        uStack_3a8 = 0;
        uStack_3a6 = 0;
        FUN_004f64b0(appuStack_3b0,(int)pvVar2);
        appuStack_140[0] = &PTR_FUN_00fba6f4;
        if ((bStack_138 & 4) != 0) {
          FUN_004f5760(appuStack_140,'\0');
        }
        uStack_45d = payload[0x14];
        pvVar2 = FUN_004f6220(appuStack_1f0,&uStack_45d);
        appuStack_390[0] = &PTR_FUN_00fba6f4;
        uStack_388 = 0;
        uStack_386 = 0;
        FUN_004f64b0(appuStack_390,(int)pvVar2);
        appuStack_1f0[0] = &PTR_FUN_00fba6f4;
        if ((bStack_1e8 & 4) != 0) {
          FUN_004f5760(appuStack_1f0,'\0');
        }
        uStack_458 = *(uint *)(payload + 0x18);
        pvVar2 = Variant_ConstructUInt32(appuStack_180,&uStack_458);
        appuStack_370[0] = &PTR_FUN_00fba6f4;
        uStack_368 = 0;
        uStack_366 = 0;
        FUN_004f64b0(appuStack_370,(int)pvVar2);
        appuStack_180[0] = &PTR_FUN_00fba6f4;
        if ((bStack_178 & 4) != 0) {
          FUN_004f5760(appuStack_180,'\0');
        }
        uStack_440 = *(uint *)(payload + 0x1c);
        pvVar2 = Variant_ConstructUInt32(appuStack_1b0,&uStack_440);
        appuStack_350[0] = &PTR_FUN_00fba6f4;
        uStack_348 = 0;
        uStack_346 = 0;
        FUN_004f64b0(appuStack_350,(int)pvVar2);
        appuStack_1b0[0] = &PTR_FUN_00fba6f4;
        if ((bStack_1a8 & 4) != 0) {
          FUN_004f5760(appuStack_1b0,'\0');
        }
        uStack_454 = *(uint *)(payload + 0x20);
        pvVar2 = Variant_ConstructUInt32(appuStack_230,&uStack_454);
        appuStack_330[0] = &PTR_FUN_00fba6f4;
        uStack_328 = 0;
        uStack_326 = 0;
        FUN_004f64b0(appuStack_330,(int)pvVar2);
        appuStack_230[0] = &PTR_FUN_00fba6f4;
        if ((bStack_228 & 4) != 0) {
          FUN_004f5760(appuStack_230,'\0');
        }
        uStack_45e = payload[0x24];
        pvVar2 = FUN_004f6220(appuStack_210,&uStack_45e);
        appuStack_310[0] = &PTR_FUN_00fba6f4;
        uStack_308 = 0;
        uStack_306 = 0;
        FUN_004f64b0(appuStack_310,(int)pvVar2);
        appuStack_210[0] = &PTR_FUN_00fba6f4;
        if ((bStack_208 & 4) != 0) {
          FUN_004f5760(appuStack_210,'\0');
        }
        uStack_44c = *(uint *)(payload + 0x28);
        pvVar2 = Variant_ConstructUInt32(appuStack_1d0,&uStack_44c);
        appuStack_2f0[0] = &PTR_FUN_00fba6f4;
        uStack_2e8 = 0;
        uStack_2e6 = 0;
        FUN_004f64b0(appuStack_2f0,(int)pvVar2);
        appuStack_1d0[0] = &PTR_FUN_00fba6f4;
        if ((bStack_1c8 & 4) != 0) {
          FUN_004f5760(appuStack_1d0,'\0');
        }
        uStack_444 = *(uint *)(payload + 0x2c);
        pvVar2 = Variant_ConstructUInt32(appuStack_290,&uStack_444);
        appuStack_2d0[0] = &PTR_FUN_00fba6f4;
        uStack_2c8 = 0;
        uStack_2c6 = 0;
        FUN_004f64b0(appuStack_2d0,(int)pvVar2);
        appuStack_290[0] = &PTR_FUN_00fba6f4;
        if ((bStack_288 & 4) != 0) {
          FUN_004f5760(appuStack_290,'\0');
        }
        if (*(int *)(pcStack_45c + 0x2c) != 0) {
          (**(code **)(*piStack_43c + 0x134))
                    (auStack_c0,*(int *)(pcStack_45c + 0x2c),appuStack_3f0,10);
          FUN_004f5820(auStack_c0);
        }
        FUN_004466e0(appuStack_3f0,0x20,10,FUN_004f5820);
        return true;
      }
      if (messageId != 0x49afd6a0) {
        return false;
      }
      uStack_434 = *(undefined4 *)(payload + 8);
      pvVar2 = FUN_004f6340(auStack_120,&uStack_434);
      appuStack_430[0] = &PTR_FUN_00fba6f4;
      uStack_428 = 0;
      uStack_426 = 0;
      FUN_004f64b0(appuStack_430,(int)pvVar2);
      FUN_004f5820(auStack_120);
      pcStack_45c = "Scripting/UIHost/var";
      pvVar2 = FUN_0040b880(aiStack_190,*(short **)(payload + 0xc),&pcStack_45c);
      pvVar2 = FUN_004f6630(auStack_20,pvVar2);
      appuStack_410[0] = &PTR_FUN_00fba6f4;
      uStack_408 = 0;
      uStack_406 = 0;
      FUN_004f64b0(appuStack_410,(int)pvVar2);
      FUN_004f5820(auStack_20);
      FUN_004ef8f0(aiStack_190);
      if (*(int *)(receiver + 0x38) != 0) {
        (**(code **)(*piVar1 + 0x134))(auStack_80,*(int *)(receiver + 0x38),appuStack_430,2);
        FUN_004f5820(auStack_80);
      }
      FUN_004466e0(appuStack_430,0x20,2,FUN_004f5820);
      return true;
    }
    if ((*(int *)(receiver + 0x3c) != 0) && (payload != (undefined *)0x0)) {
      pvVar2 = FUN_0077f930(payload,aiStack_160);
      pvVar2 = FUN_004f6630(auStack_40,pvVar2);
      appuStack_430[0] = &PTR_FUN_00fba6f4;
      uStack_428 = 0;
      uStack_426 = 0;
      FUN_004f64b0(appuStack_430,(int)pvVar2);
      FUN_004f5820(auStack_40);
      FUN_004ef8f0(aiStack_160);
      (**(code **)(*piVar1 + 0x134))(auStack_100,*(undefined4 *)(receiver + 0x3c),appuStack_430,1);
      puVar3 = auStack_110;
LAB_00782bb8:
      FUN_004f5820(puVar3);
      FUN_004466e0(&uStack_440,0x20,1,FUN_004f5820);
      return true;
    }
  }
  else if (messageId == 0xf0707d65) {
    if (*(int *)(receiver + 0x28) != 0) {
      (**(code **)(*piVar1 + 0x134))(auStack_270,*(int *)(receiver + 0x28),0,0);
      appuStack_280[0] = &PTR_FUN_00fba6f4;
      if ((bStack_278 & 4) != 0) {
        FUN_004f5760(appuStack_280,'\0');
      }
    }
  }
  else {
    if (messageId != 0xfbc9b988) {
      return false;
    }
    if (*(int *)(receiver + 0x34) != 0) {
      if (payload == (undefined *)0x0) {
        (**(code **)(*piVar1 + 0x134))(auStack_60,*(int *)(receiver + 0x34),0,0);
        FUN_004f5820(auStack_70);
        return true;
      }
      pvVar2 = FUN_0077f930(payload,aiStack_150);
      pvVar2 = FUN_004f6630(auStack_e0,pvVar2);
      appuStack_430[0] = &PTR_FUN_00fba6f4;
      uStack_428 = 0;
      uStack_426 = 0;
      FUN_004f64b0(appuStack_430,(int)pvVar2);
      FUN_004f5820(auStack_e0);
      FUN_004ef8f0(aiStack_150);
      (**(code **)(*piVar1 + 0x134))(auStack_a0,*(undefined4 *)(receiver + 0x34),appuStack_430,1);
      puVar3 = auStack_b0;
      goto LAB_00782bb8;
    }
  }
  return true;
}

