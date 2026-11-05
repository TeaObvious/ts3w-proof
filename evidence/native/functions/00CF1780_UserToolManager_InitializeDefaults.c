/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX manager, plain RET; returns the initialized pointer. Initializes the manager object
   and embedded state; manager154 normal slot search radius is2, manager158/15C snap distances
   receive original binary32 constants010832D4/00FC2368 (.96 and1.2). These are constructor
   defaults; CEF2B0 exposes the corresponding fields as debug tunables. */

undefined4 * __fastcall UserToolManager_InitializeDefaults(undefined4 *param_1)

{
  undefined4 *puVar1;
  float fVar2;
  undefined4 uVar3;
  
  *param_1 = &PTR_FUN_0102bba4;
  LOCK();
  param_1[1] = 0;
  UNLOCK();
  param_1[2] = &PTR_LAB_00fb3ccc;
  *param_1 = &PTR_FUN_01083828;
  param_1[2] = &PTR_LAB_01083820;
  *(undefined1 *)(param_1 + 3) = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  *(undefined1 *)(param_1 + 9) = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  uVar3 = DAT_010832d4;
  param_1[0xc] = 0xffffffff;
  param_1[0xe] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x10) = 0;
  *(undefined2 *)((int)param_1 + 0x42) = 0;
  param_1[0x16] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x18) = 0;
  *(undefined2 *)((int)param_1 + 0x62) = 0;
  param_1[0x1e] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x20) = 0;
  *(undefined2 *)((int)param_1 + 0x82) = 0;
  param_1[0x26] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x28) = 0;
  *(undefined2 *)((int)param_1 + 0xa2) = 0;
  param_1[0x2e] = 0;
  param_1[0x30] = 0xffffffff;
  param_1[0x32] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x34) = 0;
  *(undefined2 *)((int)param_1 + 0xd2) = 0;
  param_1[0x3a] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x3c) = 0;
  *(undefined2 *)((int)param_1 + 0xf2) = 0;
  param_1[0x42] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x44) = 0;
  *(undefined2 *)((int)param_1 + 0x112) = 0;
  param_1[0x4a] = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 0x4c) = 0;
  *(undefined2 *)((int)param_1 + 0x132) = 0;
  param_1[0x52] = 0;
  param_1[0x56] = uVar3;
  param_1[0x57] = DAT_00fc2368;
  param_1[0x59] = DAT_00fbc934;
  param_1[0x5a] = 0;
  fVar2 = FLOAT_00f998f8;
  param_1[0x54] = 5;
  param_1[0x55] = 2;
  *(undefined1 *)(param_1 + 0x58) = 0;
  *(undefined1 *)((int)param_1 + 0x161) = 0;
  puVar1 = param_1 + 0x60;
  param_1[0x5b] = fVar2;
  param_1[0x5c] = fVar2;
  param_1[0x5d] = fVar2;
  *(undefined1 *)(param_1 + 0x5e) = 0;
  param_1[0x5f] = 0;
  param_1[0x62] = "UserTool/UserToolManager/DelayedToolShutdownList";
  *puVar1 = puVar1;
  param_1[0x61] = puVar1;
  ElapsedClock_ConstructAndOptionallyStart(param_1 + 100,4,'\0');
  FUN_004f38f0(param_1 + 100,0,'\0');
  *(undefined1 *)(param_1 + 0x6c) = 0;
  ElapsedClock_ConstructAndOptionallyStart(param_1 + 0x6e,5,'\0');
  *(undefined1 *)(param_1 + 0x74) = 0;
  UserToolSettings_RegisterDebugTunables((int)(param_1 + 0x54));
  DAT_011ee780 = param_1;
  return param_1;
}

