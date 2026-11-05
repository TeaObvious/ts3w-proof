/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined4 uVar12;
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
  FUN_004aee40((longlong *)(param_1 + 0x270),(wchar_t *)PTR_u_HouseboatCamera_ini_0117ef4c,0,0,
               (int *)0x0,0);
  uVar5 = DAT_00ff3c00;
  uVar4 = _DAT_00fee3a8;
  uVar12 = DAT_00fbf010;
  uVar3 = DAT_00fa2bac;
  param_1[0x274] = _DAT_00fee3a8;
  param_1[0x276] = uVar4;
  param_1[0x237] = uVar4;
  uVar4 = DAT_0103fd60;
  param_1[0x275] = uVar12;
  uVar6 = DAT_010f6bf4;
  param_1[0x278] = uVar5;
  uVar12 = _DAT_00f9b5b4;
  param_1[0x234] = uVar3;
  uVar5 = _DAT_0106e6ec;
  param_1[0x23d] = uVar4;
  uVar3 = DAT_00f9e51c;
  param_1[0x277] = uVar6;
  param_1[0x279] = uVar12;
  param_1[0x235] = uVar5;
  param_1[0x236] = uVar5;
  param_1[0x238] = uVar6;
  param_1[0x23e] = uVar12;
  *(undefined1 *)(param_1 + 599) = 1;
  param_1[600] = uVar3;
  *(undefined1 *)((int)param_1 + 0x8b5) = 0;
  FUN_00962080((int)local_f0);
  uVar8 = 0;
  do {
    FUN_009620d0(local_f0,uVar8,0,DAT_0103fd88);
    FUN_009620d0(local_f0,uVar8,1,DAT_0103fd88);
    FUN_009620d0(local_f0,uVar8,2,DAT_0103fd88);
    FUN_009620d0(local_f0,uVar8,3,DAT_0103fd88);
    FUN_009620d0(local_f0,uVar8,4,_DAT_01045ebc);
    FUN_009620d0(local_f0,uVar8,5,_DAT_01045ebc);
    FUN_009620f0(local_f0,uVar8,0,DAT_00fcc6f0);
    FUN_009620f0(local_f0,uVar8,1,DAT_00fcc6f0);
    FUN_009620f0(local_f0,uVar8,2,DAT_00fcc6f0);
    FUN_009620f0(local_f0,uVar8,3,DAT_00fcc6f0);
    FUN_009620f0(local_f0,uVar8,4,_DAT_01045eb8);
    FUN_009620f0(local_f0,uVar8,5,_DAT_01045eb8);
    uVar8 = uVar8 + 1;
  } while (uVar8 < 4);
  CameraInput_ApplyGainTables(param_1 + 0x10,local_f0);
  fVar9 = DAT_00ff3b34;
  uVar4 = DAT_00fee458;
  param_1[0x23f] = DAT_00ff3b34;
  uVar5 = DAT_010469f8;
  uVar3 = _DAT_00fe4c28;
  uVar12 = DAT_00fbc934;
  param_1[0x247] = uVar4;
  param_1[0x253] = DAT_00fa2bb8;
  param_1[0x243] = uVar3;
  param_1[0x24b] = uVar12;
  param_1[0x24f] = uVar5;
  param_1[0x240] = 0;
  param_1[0x244] = 0;
  fVar11 = DAT_01046cb0;
  param_1[0x248] = fVar9 * DAT_01046cb0;
  param_1[0x24c] = DAT_01046cf0 * fVar11;
  param_1[0x250] = DAT_01046cec * fVar11;
  param_1[0x254] = DAT_01046ce8 * fVar11;
  fVar9 = DAT_00fcd2c4 * fVar11;
  param_1[0x245] = fVar9;
  param_1[0x249] = DAT_01046ce4 * fVar11;
  param_1[0x24d] = _DAT_00f9b634 * fVar11;
  fVar10 = DAT_00f998f4 * fVar11;
  param_1[0x241] = fVar9;
  param_1[0x255] = fVar10;
  fVar11 = DAT_010469fc * fVar11;
  param_1[0x251] = fVar10;
  param_1[0x242] = fVar11;
  param_1[0x246] = fVar11;
  param_1[0x24a] = fVar11;
  param_1[0x24e] = fVar11;
  param_1[0x256] = fVar11;
  uVar4 = DAT_01046ce0;
  param_1[0x252] = fVar11;
  param_1[0x239] = uVar3;
  param_1[0x23b] = uVar12;
  param_1[0x23a] = uVar5;
  param_1[0x23c] = uVar4;
  *(undefined1 *)(param_1 + 0x206) = 0;
  *(undefined1 *)((int)param_1 + 0x819) = 0;
  puVar2 = (undefined4 *)param_1[0x207];
  if (puVar2 != (undefined4 *)0x0) {
    piVar7 = puVar2 + 1;
    param_1[0x207] = 0;
    LOCK();
    iVar1 = *piVar7;
    *piVar7 = *piVar7 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar7 = 1;
      UNLOCK();
      (**(code **)*puVar2)(1);
      uVar12 = DAT_00fbc934;
    }
  }
  param_1[0x208] = 0;
  param_1[0x209] = 0;
  param_1[0x20a] = 0;
  param_1[0x20b] = 0;
  *(undefined1 *)(param_1 + 0x20c) = 0;
  piVar7 = (int *)param_1[0x20d];
  if (piVar7 != (int *)0x0) {
    param_1[0x20d] = 0;
    (**(code **)(*piVar7 + 4))();
    uVar12 = DAT_00fbc934;
  }
  uVar5 = DAT_00fbc938;
  uVar3 = DAT_00f998f8;
  param_1[0x210] = 0;
  param_1[0x211] = 0;
  param_1[0x212] = 0;
  param_1[0x213] = uVar3;
  uVar4 = _DAT_00fee3a8;
  param_1[0x214] = 0;
  param_1[0x215] = 0;
  param_1[0x216] = 0;
  param_1[0x217] = 0;
  uVar6 = _DAT_01062bc8;
  param_1[0x25a] = uVar4;
  param_1[0x25c] = uVar4;
  uVar4 = DAT_0103fd88;
  param_1[0x25d] = DAT_0103fd88;
  param_1[0x25e] = uVar4;
  param_1[0x260] = _DAT_0106e6ec;
  fVar9 = DAT_00f998f4;
  param_1[0x261] = DAT_00f998f4;
  param_1[0x263] = fVar9;
  param_1[0x264] = DAT_0103fd68;
  param_1[0x265] = DAT_00fcc6f4;
  param_1[0x266] = _DAT_00fb7290;
  uVar4 = DAT_00f9e500;
  param_1[0x267] = DAT_00f9e500;
  param_1[0x268] = uVar4;
  uVar4 = DAT_01046cdc;
  param_1[0x259] = uVar6;
  param_1[0x25b] = uVar6;
  param_1[0x25f] = uVar12;
  param_1[0x262] = uVar5;
  param_1[0x269] = uVar12;
  param_1[0x26a] = uVar4;
  param_1[0x26b] = uVar3;
  param_1[0x26c] = uVar6;
  FUN_00970520();
  piVar7 = (int *)FUN_004afe80();
  if (piVar7 != (int *)0x0) {
    (**(code **)(*piVar7 + 0x24))(1,&LAB_00970650,param_1,param_1 + 0x26e,0);
  }
  return param_1;
}

