/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* ECX side owner; directed locator and output64-byte key block stack words. Existing section and
   orientation select UInt16 ordinals through C45040, then resolve pattern/diffuse/specular/preset
   lanes at B49F20/B49F80/B4A040/B49FE0. Missing lookup pointers substitute process globals. No
   unconditional0/FFFF exclusion occurs here; runtime global-key initialization is not established.
    */

void __thiscall WallSide_ReadResourceKeys(void *this,char *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  bool bVar2;
  char *pcVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint uVar7;
  char local_8;
  char local_7;
  char local_6;
  char local_5;
  char local_4;
  char local_3;
  
  pcVar3 = param_1;
  puVar4 = (undefined4 *)WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),param_1);
  if (puVar4 == (undefined4 *)0x0) {
    *param_2 = DAT_011ec8d0;
    param_2[1] = DAT_011ec8d4;
    param_2[2] = DAT_011ec8d8;
    param_2[3] = DAT_011ec8dc;
    param_2[4] = DAT_011ec8d0;
    param_2[5] = DAT_011ec8d4;
    param_2[6] = DAT_011ec8d8;
    param_2[7] = DAT_011ec8dc;
    param_2[8] = DAT_011ec8d0;
    param_2[9] = DAT_011ec8d4;
    param_2[10] = DAT_011ec8d8;
    param_2[0xb] = DAT_011ec8dc;
    param_2[0xc] = DAT_011ec8d0;
    param_2[0xd] = DAT_011ec8d4;
    param_2[0xe] = DAT_011ec8d8;
    param_2[0xf] = DAT_011ec8dc;
    return;
  }
  local_8 = -1;
  local_7 = -1;
  local_5 = -1;
  local_4 = -1;
  local_6 = '\0';
  local_3 = '\0';
  FUN_00b47d40(this,pcVar3,(undefined4 *)&local_8);
  if ((((pcVar3[2] == local_6) && (*pcVar3 == local_8)) && (pcVar3[1] == local_7)) &&
     (((pcVar3[5] == local_3 && (pcVar3[3] == local_5)) && (pcVar3[4] == local_4)))) {
    bVar2 = true;
  }
  else {
    bVar2 = false;
  }
  uVar1 = *puVar4;
  uVar7 = (uint)!bVar2;
  uVar5 = WallSideTable_GetOrdinal(*(void **)((int)this + 0x6c),uVar1,uVar7);
  param_1 = (char *)(uVar5 & 0xffff);
  puVar6 = (undefined4 *)WallPatternSide_ResolveOrdinalKey(this,(ushort *)&param_1);
  puVar4 = param_2;
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = &DAT_011ed1b8;
  }
  *param_2 = *puVar6;
  param_2[1] = puVar6[1];
  param_2[2] = puVar6[2];
  param_2[3] = puVar6[3];
  uVar5 = WallSideTable_GetOrdinal(*(void **)((int)this + 0x74),uVar1,uVar7);
  param_1 = (char *)(uVar5 & 0xffff);
  puVar6 = (undefined4 *)WallDiffuseSide_ResolveOrdinalKey(this,(ushort *)&param_1);
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = &DAT_011ec8d0;
  }
  puVar4[4] = *puVar6;
  puVar4[5] = puVar6[1];
  puVar4[6] = puVar6[2];
  puVar4[7] = puVar6[3];
  uVar5 = WallSideTable_GetOrdinal(*(void **)((int)this + 0x84),uVar1,uVar7);
  param_1 = (char *)(uVar5 & 0xffff);
  puVar6 = (undefined4 *)WallSpecularSide_ResolveOrdinalKey(this,(ushort *)&param_1);
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = &DAT_011ec8d0;
  }
  puVar4[8] = *puVar6;
  puVar4[9] = puVar6[1];
  puVar4[10] = puVar6[2];
  puVar4[0xb] = puVar6[3];
  uVar5 = WallSideTable_GetOrdinal(*(void **)((int)this + 0x7c),uVar1,uVar7);
  param_1 = (char *)(uVar5 & 0xffff);
  puVar6 = (undefined4 *)WallPresetSide_ResolveOrdinalKey(this,(ushort *)&param_1);
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = &DAT_011ec8d0;
  }
  puVar4[0xc] = *puVar6;
  puVar4[0xd] = puVar6[1];
  puVar4[0xe] = puVar6[2];
  puVar4[0xf] = puVar6[3];
  return;
}

