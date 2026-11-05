/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst-assigned name. Constructs primary gameplay-camera vtable01046D00; +4 and+38 interfaces
   use DIFFERENT tables. Input block is controller+40. Defaults initialize rate gainsfields0..3=2,
   fields4..5=.7850000262; impulse-table fields0..3=25, fields4..5=1.5700000525, field6=1 across
   fourbanks. Later95word GameplayCamera_ApplyNativeTuning can override these tables; these
   constructor values are not a claim of active retail mouse sensitivity. */

undefined4 * __fastcall MainCamera_Construct(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint uVar4;
  undefined4 local_f0 [59];
  
  CameraController_ConstructInputSubscription(param_1);
  param_1[0xe] = &PTR_LAB_00fb3ccc;
  *param_1 = &PTR_FUN_01046d00;
  param_1[1] = &PTR_LAB_01046cfc;
  param_1[0xe] = &PTR_LAB_01046cf4;
  param_1[0xf] = 0;
  FUN_00962bf0((int)(param_1 + 0x10));
  CameraPoseLerp_Construct(param_1 + 0x15c);
  FUN_00962aa0(param_1 + 0x17c);
  FUN_00962880(param_1 + 0x1ac);
  param_1[0x207] = 0;
  param_1[0x20d] = 0;
  param_1[0x218] = 0;
  param_1[0x219] = 0;
  *(undefined1 *)((int)param_1 + 0x8b6) = 0;
  *(undefined1 *)(param_1 + 0x22e) = 0;
  *(undefined1 *)((int)param_1 + 0x8ba) = 0;
  *(undefined1 *)((int)param_1 + 0x8bb) = 0;
  *(undefined1 *)(param_1 + 0x22f) = 0;
  *(undefined1 *)((int)param_1 + 0x8bd) = 0;
  *(undefined1 *)(param_1 + 0x233) = 1;
  param_1[0x26d] = 0;
  param_1[0x26e] = &PTR_LAB_01024014;
  param_1[0x270] = 0;
  param_1[0x271] = 0;
  param_1[0x272] = 0;
  param_1[0x273] = 0;
  ResourceKey_ParseWideName
            (param_1 + 0x270,(ushort *)PTR_u_HouseboatCamera_ini_0117ef4c,0,0,(void *)0x0,0);
  param_1[0x274] = 0x42480000;
  param_1[0x276] = 0x42480000;
  param_1[0x237] = 0x42480000;
  param_1[0x275] = 0x42960000;
  param_1[0x278] = 0x40600000;
  param_1[0x234] = 0.02;
  param_1[0x23d] = 0x3fe00000;
  param_1[0x277] = 0x42c80000;
  param_1[0x279] = 0x3f000000;
  param_1[0x235] = 0x3c23d70a;
  param_1[0x236] = 0x3c23d70a;
  param_1[0x238] = 0x42c80000;
  param_1[0x23e] = 0x3f000000;
  *(undefined1 *)(param_1 + 599) = 1;
  param_1[600] = 0x3f4ccccd;
  *(undefined1 *)((int)param_1 + 0x8b5) = 0;
  FUN_00962080((int)local_f0);
  uVar4 = 0;
  do {
    FUN_009620d0(local_f0,uVar4,0,0x40000000);
    FUN_009620d0(local_f0,uVar4,1,0x40000000);
    FUN_009620d0(local_f0,uVar4,2,0x40000000);
    FUN_009620d0(local_f0,uVar4,3,0x40000000);
    FUN_009620d0(local_f0,uVar4,4,0x3f48f5c3);
    FUN_009620d0(local_f0,uVar4,5,0x3f48f5c3);
    FUN_009620f0(local_f0,uVar4,0,0x41c80000);
    FUN_009620f0(local_f0,uVar4,1,0x41c80000);
    FUN_009620f0(local_f0,uVar4,2,0x41c80000);
    FUN_009620f0(local_f0,uVar4,3,0x41c80000);
    FUN_009620f0(local_f0,uVar4,4,0x3fc8f5c3);
    FUN_009620f0(local_f0,uVar4,5,0x3fc8f5c3);
    uVar4 = uVar4 + 1;
  } while (uVar4 < 4);
  CameraInput_ApplyGainTables(param_1 + 0x10,local_f0);
  param_1[0x23f] = 0xc1200000;
  param_1[0x247] = 0x40e00000;
  param_1[0x253] = 0x43c80000;
  param_1[0x243] = 0x40200000;
  param_1[0x24b] = 0x41f00000;
  param_1[0x24f] = 0x43af0000;
  param_1[0x240] = 0;
  param_1[0x244] = 0;
  param_1[0x248] = 0xbe32b8c2;
  param_1[0x24c] = 0xbf060a92;
  param_1[0x250] = 0xbf5f66f3;
  param_1[0x254] = 0xbfb2b8c2;
  param_1[0x245] = 0x3fbde44e;
  param_1[0x249] = 0x3f75be0b;
  param_1[0x24d] = 0x3e860a92;
  param_1[0x241] = 0x3fbde44e;
  param_1[0x255] = 0x3e32b8c2;
  param_1[0x251] = 0x3e32b8c2;
  param_1[0x242] = 0xbfbde44e;
  param_1[0x246] = 0xbfbde44e;
  param_1[0x24a] = 0xbfbde44e;
  param_1[0x24e] = 0xbfbde44e;
  param_1[0x256] = 0xbfbde44e;
  param_1[0x252] = 0xbfbde44e;
  param_1[0x239] = 0x40200000;
  param_1[0x23b] = 0x41f00000;
  param_1[0x23a] = 0x43af0000;
  param_1[0x23c] = 0x3b3c97c2;
  *(undefined1 *)(param_1 + 0x206) = 0;
  *(undefined1 *)((int)param_1 + 0x819) = 0;
  puVar2 = (undefined4 *)param_1[0x207];
  if (puVar2 != (undefined4 *)0x0) {
    piVar3 = puVar2 + 1;
    param_1[0x207] = 0;
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      (**(code **)*puVar2)(1);
    }
  }
  param_1[0x208] = 0;
  param_1[0x209] = 0;
  param_1[0x20a] = 0;
  param_1[0x20b] = 0;
  *(undefined1 *)(param_1 + 0x20c) = 0;
  piVar3 = (int *)param_1[0x20d];
  if (piVar3 != (int *)0x0) {
    param_1[0x20d] = 0;
    (**(code **)(*piVar3 + 4))();
  }
  param_1[0x210] = 0;
  param_1[0x211] = 0;
  param_1[0x212] = 0;
  param_1[0x213] = 1.0;
  param_1[0x214] = 0;
  param_1[0x215] = 0;
  param_1[0x216] = 0;
  param_1[0x217] = 0;
  param_1[0x25a] = 0x42480000;
  param_1[0x25c] = 0x42480000;
  param_1[0x25d] = 0x40000000;
  param_1[0x25e] = 0x40000000;
  param_1[0x260] = 0x3c23d70a;
  param_1[0x261] = 0x41200000;
  param_1[0x263] = 0x41200000;
  param_1[0x264] = 0x3fc00000;
  param_1[0x265] = 0x43160000;
  param_1[0x266] = 0x3ecccccd;
  param_1[0x267] = 0x3f19999a;
  param_1[0x268] = 0x3f19999a;
  param_1[0x259] = 0x40a00000;
  param_1[0x25b] = 0x40a00000;
  param_1[0x25f] = 0x41f00000;
  param_1[0x262] = 0x42200000;
  param_1[0x269] = 0x41f00000;
  param_1[0x26a] = 0xc2340000;
  param_1[0x26b] = 1.0;
  param_1[0x26c] = 0x40a00000;
  FUN_00970520();
  piVar3 = (int *)FUN_004afe80();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x24))(1,&LAB_00970650,param_1,param_1 + 0x26e,0);
  }
  return param_1;
}

