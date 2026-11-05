/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: installs voice root vtable 0103B948 at object +0 and property-interface vtable
   0102B238 at object +4. The latter is the interface subsequently registered in the handle map. Raw
   instruction proof:
   008AF960_AudioVoice_Construct.asm.
   original PC 1.67 TS3W.exe. */

undefined4 * __fastcall AudioVoice_Construct(undefined4 *param_1)

{
  undefined4 *puVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  *param_1 = &PTR_LAB_00ffd288;
  param_1[1] = &PTR_LAB_01028abc;
  param_1[2] = &PTR_FUN_0102bba4;
  LOCK();
  param_1[3] = 0;
  UNLOCK();
  *param_1 = &PTR_FUN_0103b948;
  param_1[1] = &PTR_LAB_0102b238;
  param_1[2] = &PTR_LAB_0103b944;
  param_1[9] = "Audio/Sound/Name";
  uVar4 = DAT_00fab218;
  uVar3 = DAT_00f998f8;
  param_1[6] = &DAT_011c8e54;
  param_1[7] = &DAT_011c8e54;
  param_1[8] = &DAT_011c8e55;
  param_1[0xd] = "Audio/Sound/SampleName";
  param_1[10] = &DAT_011c8e54;
  param_1[0xb] = &DAT_011c8e54;
  param_1[0xc] = &DAT_011c8e55;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x16] = 0;
  param_1[0x1f] = uVar4;
  param_1[0x20] = DAT_00fbba84;
  uVar4 = DAT_0103b8ec;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = uVar3;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  param_1[0x1c] = uVar3;
  param_1[0x1d] = 0;
  param_1[0x1e] = 0;
  param_1[0x21] = uVar3;
  param_1[0x22] = 0;
  param_1[0x23] = uVar4;
  param_1[0x24] = 0;
  param_1[0x25] = uVar3;
  param_1[0x26] = uVar3;
  param_1[0x27] = uVar3;
  param_1[0x28] = 0;
  param_1[0x29] = 0;
  param_1[0x2a] = 0;
  *(undefined1 *)(param_1 + 0x2b) = 0;
  *(undefined1 *)((int)param_1 + 0xad) = 0;
  *(undefined1 *)((int)param_1 + 0xae) = 0;
  *(undefined1 *)((int)param_1 + 0xaf) = 1;
  *(undefined1 *)(param_1 + 0x2c) = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = DAT_011db08c;
  param_1[0x2f] = DAT_011db090;
  param_1[0x30] = DAT_011db094;
  param_1[0x31] = DAT_011db08c;
  param_1[0x32] = DAT_011db090;
  param_1[0x33] = DAT_011db094;
  *(undefined1 *)(param_1 + 0x34) = 0;
  param_1[0x35] = DAT_011db08c;
  param_1[0x36] = DAT_011db090;
  param_1[0x37] = DAT_011db094;
  param_1[0x38] = uVar3;
  param_1[0x39] = uVar3;
  param_1[0x3a] = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  FUN_0089f750(param_1 + 0x3d);
  FUN_008aec70(param_1 + 0x42);
  param_1[0xba] = 0;
  param_1[0xbb] = 0;
  param_1[0xbf] = "EASTL";
  puVar1 = param_1 + 0xc1;
  param_1[0xc0] = puVar1;
  param_1[0xbd] = puVar1;
  param_1[0xbc] = puVar1;
  param_1[0xbf] = "EASTL fixed_vector";
  param_1[0xbe] = param_1 + 0xcb;
  param_1[0xcb] = 0;
  param_1[0xcc] = 0;
  param_1[0xcd] = 0;
  param_1[0xce] = 0;
  param_1[0xcf] = 2;
  param_1[0xd0] = 0xee8347b0;
  param_1[0xd1] = 0xffffffff;
  FUN_008aec70(param_1 + 0xd2);
  FUN_008aed80(param_1 + 0x14a);
  FUN_008aec70(param_1 + 0x226);
  param_1[0x2a0] = "Audio/Sound/Slaves";
  uVar3 = DAT_00f998f8;
  puVar1 = param_1 + 0x29e;
  *puVar1 = puVar1;
  param_1[0x29f] = puVar1;
  param_1[0x2a1] = 0;
  *(undefined1 *)(param_1 + 0x2a9) = 0;
  param_1[0x2ad] = 0;
  param_1[0x2ae] = 0;
  param_1[0x2a2] = 0;
  param_1[0x2a3] = 0;
  param_1[0x2a4] = 0;
  param_1[0x2a5] = 0;
  param_1[0x2a6] = 0;
  param_1[0x2a7] = 0;
  param_1[0x2ab] = uVar3;
  param_1[0x2ac] = 0;
  param_1[0x2a8] = 0;
  *(undefined8 *)(param_1 + 0x2b0) = 0;
  param_1[0x2b2] = 0;
  *(undefined1 *)(param_1 + 0x2b3) = 0;
  *(undefined1 *)((int)param_1 + 0xacd) = 0;
  param_1[0x2b4] = 0xffffffff;
  param_1[0x2b5] = 0;
  param_1[0x2b6] = 1;
  param_1[0x2b7] = 0;
  AudioCurve_InitIdentity(param_1 + 0x2b8);
  AudioCurve_InitIdentity(param_1 + 0x390);
  AudioCurve_InitIdentity(param_1 + 0x468);
  AudioCurve_InitIdentity(param_1 + 0x540);
  param_1[0x61b] = 6;
  param_1[0x625] = "Audio/Sound/SendName";
  param_1[0x622] = &DAT_011c8e54;
  param_1[0x623] = &DAT_011c8e54;
  param_1[0x624] = &DAT_011c8e55;
  param_1[0x626] = 3;
  param_1[0x2b7] = 0;
  pcVar2 = *(code **)param_1[0x3d];
  param_1[5] = 0;
  param_1[4] = 0;
  (*pcVar2)();
  return param_1;
}

