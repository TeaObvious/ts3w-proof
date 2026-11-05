/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Finds matching hash
   in base primary first; if no match, base secondary. Sets/clears runtime bit 0x4 for all matches
   in selected layer. Supplemental layer is not searched. Changed flags notify routing manager
   0x008330a0 and 0x00791120; resource defaults stay unchanged. */

void __thiscall FootprintComponent_SetNamedEnabledBit(void *this,int param_1,char param_2)

{
  uint *puVar1;
  uint uVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  char cVar6;
  void *this_00;
  int *piVar7;
  undefined4 uVar8;
  uint uVar9;
  uint uVar10;
  int local_c;
  
  uVar10 = 0;
  if ((*(int *)((int)this + 0x28) == 0) && (*(int *)((int)this + 0x30) == 0)) {
    return;
  }
  this_00 = (void *)thunk_FUN_00835d40();
  bVar3 = false;
  bVar5 = false;
  bVar4 = false;
  if (*(int *)((int)this + 0x28) != 0) {
    piVar7 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x28));
    uVar9 = piVar7[1] - *piVar7 >> 6;
    if (uVar9 != 0) {
      local_c = 0;
      do {
        puVar1 = (uint *)(*(int *)((int)this + 0x58) + uVar10 * 4);
        if (param_1 == *(int *)(local_c + *piVar7)) {
          bVar4 = true;
          if ((bVar3) ||
             ((this_00 != (void *)0x0 &&
              (uVar8 = FUN_00829460(this_00,*(void **)((int)this + 4),'\x01','\0'),
              (char)uVar8 != '\0')))) {
            bVar3 = true;
          }
          else {
            bVar3 = false;
          }
          uVar2 = *puVar1;
          if (param_2 == '\0') {
            *puVar1 = uVar2 & 0xfffffffb;
          }
          else {
            *puVar1 = uVar2 | 4;
          }
          if (uVar2 != *puVar1) {
            bVar5 = true;
          }
        }
        local_c = local_c + 0x40;
        uVar10 = uVar10 + 1;
      } while (uVar10 < uVar9);
      if (bVar4) goto LAB_00945daf;
    }
  }
  bVar4 = false;
  uVar10 = 0;
  if (*(int *)((int)this + 0x30) == 0) {
    return;
  }
  piVar7 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
  uVar9 = piVar7[1] - *piVar7 >> 6;
  if (uVar9 == 0) {
    return;
  }
  local_c = 0;
  do {
    puVar1 = (uint *)(*(int *)((int)this + 0x68) + uVar10 * 4);
    if (param_1 == *(int *)(local_c + *piVar7)) {
      bVar4 = true;
      if ((bVar3 == false) &&
         ((this_00 == (void *)0x0 ||
          (uVar8 = FUN_00829460(this_00,*(void **)((int)this + 4),'\x01','\0'), (char)uVar8 == '\0')
          ))) {
        bVar3 = false;
      }
      else {
        bVar3 = true;
      }
      uVar2 = *puVar1;
      if (param_2 == '\0') {
        *puVar1 = uVar2 & 0xfffffffb;
      }
      else {
        *puVar1 = uVar2 | 4;
      }
      if (uVar2 != *puVar1) {
        bVar5 = true;
      }
    }
    local_c = local_c + 0x40;
    uVar10 = uVar10 + 1;
  } while (uVar10 < uVar9);
  if (!bVar4) {
    return;
  }
LAB_00945daf:
  if (bVar5) {
    if (this_00 != (void *)0x0) {
      if (((*(byte *)((int)this + 0x40) & 1) == 0) ||
         (uVar8 = Object_HasSimTransformAncestor(*(void **)((int)this + 4)), (char)uVar8 != '\0')) {
        cVar6 = '\0';
      }
      else {
        cVar6 = '\x01';
      }
      FUN_008330a0(this_00,*(void **)((int)this + 4),cVar6,bVar3,0);
    }
    FUN_00791120();
  }
  return;
}

