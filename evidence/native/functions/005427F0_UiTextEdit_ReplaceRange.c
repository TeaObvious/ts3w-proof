/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX editor interface complete+250; five stack
   words RET14hex. Original Ghidra pointer-shaped start/removal were integer metadata defects:
   physical unsigned CMP/LEA selection clamps both to UTF16 length; no native pointer input for
   those counts. Reject empty no-op. Growth beyond maximum+70 rejects with TextEditError3;
   shortening an already-over-limit string is permitted, unlike current blanket limit rejection.
   Allocate UndoAction34hex, copy removed/inserted UTF16 spans, derive both next cursor/anchor,
   then5424A0 tentatively applies action BEFORE validation. When complete+29C is0,53FB30 validation
   can veto;542430 rolls action back and541BA0 frees it, AL0. On acceptance maintain/free native
   undo action depending initialized/history state, optionally emit TextChange9B1552D8 with
   custom-or-authored controlID/full caption length/pointer then event23, OR editor flags+0C with7
   and IWindow90 invalidation, AL1. Deeper apply/rollback/history helpers are actual callees not
   guessed managed behavior. Native allocation null branch still dereferences action at5428AE; do
   not invent a safe null-return contract. */

bool __thiscall
UiTextEdit_ReplaceRange
          (void *this,uint start,uint removeCount,void *characters,uint characterCount,bool notify)

{
  void *pvVar1;
  uint uVar2;
  uint uVar3;
  void *pvVar4;
  code *pcVar5;
  bool bVar6;
  uint uVar7;
  uint *puVar8;
  undefined4 *puVar9;
  uint local_20;
  undefined1 local_1c [8];
  undefined4 local_14;
  int local_10;
  int local_8;
  undefined4 local_4;
  
  puVar8 = &local_20;
  local_20 = *(int *)((int)this + -0x1d0) - *(int *)((int)this + -0x1d4) >> 1;
  if (start <= local_20) {
    puVar8 = &start;
  }
  uVar2 = *puVar8;
  start = local_20 - uVar2;
  puVar8 = &start;
  if (removeCount <= local_20 - uVar2) {
    puVar8 = &removeCount;
  }
  uVar3 = *puVar8;
  if ((uVar3 == 0) && (characterCount == 0)) {
    return false;
  }
  uVar7 = (local_20 - uVar3) + characterCount;
  if ((local_20 < uVar7) && (*(uint *)((int)this + 0x70) < uVar7)) {
    UiTextEdit_EmitError((void *)((int)this + -0x250),3);
    return false;
  }
  puVar8 = (uint *)FUN_004e4500(0x34,"UI/UTFWin/WinTextEdit/UndoAction",0);
  if (puVar8 == (uint *)0x0) {
    puVar8 = (uint *)0x0;
  }
  else {
    puVar8[4] = (uint)"UI/UTFWin/Controls/TextEdit/Undo";
    puVar8[1] = (uint)&DAT_011c8e54;
    puVar8[2] = (uint)&DAT_011c8e54;
    puVar8[3] = (uint)&DAT_011c8e56;
    puVar8[8] = (uint)"UI/UTFWin/Controls/TextEdit/Undo";
    puVar8[5] = (uint)&DAT_011c8e54;
    puVar8[6] = (uint)&DAT_011c8e54;
    puVar8[7] = (uint)&DAT_011c8e56;
  }
  *puVar8 = uVar2;
  pvVar1 = (void *)(*(int *)((int)this + -0x1d4) + uVar2 * 2);
  start = (uint)puVar8;
  FUN_00408d60(puVar8 + 1,pvVar1,(undefined2 *)((int)pvVar1 + uVar3 * 2));
  FUN_00408d60(puVar8 + 5,characters,(undefined2 *)((int)characters + characterCount * 2));
  puVar8[9] = *(uint *)((int)this + 0x74);
  puVar8[0xb] = *(uint *)((int)this + 0x78);
  uVar7 = *(uint *)((int)this + 0x74);
  if (uVar7 < uVar2 + uVar3) {
    if (uVar2 <= uVar7) {
      uVar7 = uVar2 + characterCount;
    }
  }
  else {
    uVar7 = (uVar7 - uVar3) + characterCount;
  }
  puVar8[10] = uVar7;
  uVar7 = *(uint *)((int)this + 0x78);
  if (uVar7 < uVar2 + uVar3) {
    if (uVar7 < uVar2) goto LAB_00542918;
    puVar8[0xc] = uVar2 + characterCount;
  }
  else {
    uVar7 = (uVar7 - uVar3) + characterCount;
LAB_00542918:
    puVar8[0xc] = uVar7;
  }
  pvVar1 = (void *)((int)this + -0x250);
  FUN_005424a0(pvVar1,(int *)puVar8);
  if ((*(int *)((int)this + 0x4c) == 0) && (bVar6 = UiTextEdit_ValidateCurrentText(pvVar1), !bVar6))
  {
    FUN_00542430(pvVar1,(int *)puVar8);
    FUN_00541ba0(puVar8,1);
    return false;
  }
  if ((*(char *)((int)this + 4) == '\0') || (*(int *)((int)this + 0x32c) == 0)) {
    pvVar4 = (void *)puVar8[5];
    if ((2 < (int)(puVar8[7] - (int)pvVar4 & 0xfffffffe)) && (pvVar4 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvVar4);
    }
    pvVar4 = (void *)puVar8[1];
    if ((2 < (int)(puVar8[3] - (int)pvVar4 & 0xfffffffe)) && (pvVar4 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvVar4);
    }
    Memory_FreeIfNonNull(puVar8);
  }
  else {
    FUN_00541d20(pvVar1,0);
    if (*(int *)((int)this + 0x338) == *(int *)((int)this + 0x33c)) {
      FUN_00adb230((void *)((int)this + 0x330),&start);
    }
    else {
      puVar9 = (undefined4 *)(*(int *)((int)this + 0x338) + -4);
      *(undefined4 **)((int)this + 0x338) = puVar9;
      if (puVar9 != (undefined4 *)0x0) {
        *puVar9 = puVar8;
        FUN_00541c00(pvVar1,*(uint *)((int)this + 0x32c));
        goto LAB_00542a09;
      }
    }
    FUN_00541c00(pvVar1,*(uint *)((int)this + 0x32c));
  }
LAB_00542a09:
  if (notify != false) {
    local_10 = *(int *)((int)this + -0x214);
    local_14 = 0x9b1552d8;
    if (local_10 == 0) {
      local_10 = *(int *)((int)this + -0x218);
    }
    local_4 = *(undefined4 *)((int)this + -0x1d4);
    local_8 = *(int *)((int)this + -0x1d0) - *(int *)((int)this + -0x1d4) >> 1;
    (**(code **)(*(int *)((int)this + -0x24c) + 0x118))(local_1c);
    FUN_0053fa70((int)pvVar1);
  }
  pcVar5 = *(code **)(*(int *)((int)this + -0x24c) + 0x90);
  *(uint *)((int)this + 0xc) = *(uint *)((int)this + 0xc) | 7;
  (*pcVar5)();
  return true;
}

