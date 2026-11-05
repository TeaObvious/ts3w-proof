/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: installs emitter vtables, initializes the identity attenuation curve, defaults
   listener index at +3C0 to 0, and sets panner minimum +3E8 to 1.0 and maximum +3EC to 10.0. These
   are constructor defaults, not necessarily final authored values. Raw instruction proof:
   008A1B40_AudioEmitter_Construct.asm.
   original PC 1.67 TS3W.exe. */

undefined4 * __fastcall AudioEmitter_Construct(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  *param_1 = &PTR_LAB_01053bf0;
  param_1[1] = &PTR_LAB_00ffd288;
  param_1[2] = &PTR_FUN_0102bba4;
  LOCK();
  param_1[3] = 0;
  UNLOCK();
  *param_1 = &PTR_FUN_01032570;
  param_1[1] = &PTR_LAB_01032560;
  param_1[2] = &PTR_LAB_0103255c;
  AudioCurve_InitIdentity(param_1 + 4);
  uVar2 = DAT_00f998f8;
  param_1[0xdc] = 0;
  param_1[0xdd] = 0;
  param_1[0xde] = 0;
  uVar1 = DAT_00f998f4;
  *(undefined1 *)(param_1 + 0xdf) = 0;
  param_1[0xe0] = 0;
  param_1[0xe1] = 0;
  param_1[0xe2] = 0;
  param_1[0xe3] = 0;
  param_1[0xe4] = 0;
  param_1[0xe5] = 0;
  param_1[0xe9] = "Audio/EmitterSndPlayer/Filename";
  param_1[0xe8] = &DAT_011c8e56;
  param_1[0xe6] = &DAT_011c8e54;
  param_1[0xe7] = &DAT_011c8e54;
  *(undefined8 *)(param_1 + 0xee) = 0;
  param_1[0xea] = 0;
  param_1[0xf0] = 0;
  *(undefined1 *)(param_1 + 0xf2) = 0;
  *(undefined1 *)((int)param_1 + 0x3c9) = 0;
  param_1[0xf3] = uVar2;
  param_1[0xf4] = uVar2;
  param_1[0xec] = 0x2ea8fb98;
  param_1[0xf1] = 2;
  param_1[0xf5] = 0;
  param_1[0xf6] = 0;
  param_1[0xf7] = 0;
  param_1[0xf8] = 0;
  param_1[0xf9] = uVar2;
  param_1[0xfa] = uVar2;
  param_1[0xfc] = uVar2;
  param_1[0xfd] = uVar2;
  param_1[0xfe] = uVar2;
  uVar2 = DAT_00fab218;
  param_1[0x103] = 0;
  param_1[0x104] = 0;
  param_1[0x105] = 0;
  param_1[0x106] = 0;
  param_1[0x107] = 0;
  param_1[0x108] = 0;
  param_1[0x109] = 0;
  param_1[0xfb] = uVar1;
  param_1[0xff] = 0;
  param_1[0x100] = uVar2;
  param_1[0x101] = uVar2;
  param_1[0x102] = uVar2;
  param_1[0x10a] = 0;
  param_1[0x13a] = 0;
  return param_1;
}

