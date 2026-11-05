/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintCell_CollectLeafRecords.
   Original Ghidra database symbol: FUN_00669b20; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669b20,00669d87), [00669d90,00669dff); 9 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* This unmasked leaf collector is a separate generic dispatch branch. 669FA0 selects it only for descriptor tag0 with an ordinary leaf node; the nonempty terminal segment cells use masked collection instead. It shares deferred class2/marker1F behavior and pointer-set insertion. Its configurable self/ignore flags do not establish that the social query supplies a nonnull actor context. The nine-byte owned-range gap is not part of the Listing. */



void __thiscall
FUN_00669b20(void *this,int param_1,void *param_2,char param_3,char param_4,char param_5)

{
  uint *puVar1;
  bool bVar2;
  uint *puVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  uint *puVar8;
  undefined4 *puVar9;
  uint *puVar10;
  undefined8 uVar11;
  void *local_64;
  uint *local_60;
  undefined4 auStack_58 [2];
  uint *local_50;
  uint *local_4c;
  uint local_3c [15];
  
  puVar1 = (uint *)((int)this + 8);
  if (((~*(byte *)((int)this + 8) & 1) != 0) || (*(int *)((int)this + 0xc) != 0)) {
    if (param_1 == 0) {
      puVar9 = (undefined4 *)0x0;
    }
    else {
      puVar9 = *(undefined4 **)(param_1 + 0x40);
    }
    iVar5 = thunk_FUN_00835d40();
    if (iVar5 == 0) {
      local_64 = (void *)0x0;
    }
    else {
      local_64 = (void *)FUN_00828f00((int)puVar9);
    }
    bVar2 = false;
    if ((~*(byte *)puVar1 & 1) == 0) {
      puVar8 = (uint *)(*puVar1 & 0xfffffffe);
    }
    else {
      puVar8 = puVar1;
    }
    puVar10 = local_3c;
    puVar3 = local_3c;
    if ((~*(byte *)puVar1 & 1) == 0) {
      local_60 = (uint *)((*puVar1 & 0xfffffffe) + *(int *)((int)this + 0xc) * 0xc);
    }
    else {
      local_60 = (uint *)((int)this + 0x14);
    }
    for (; local_50 = puVar10, local_4c = puVar3, puVar8 != local_60; puVar8 = puVar8 + 3) {
      uVar7 = *puVar8;
      if (uVar7 != 0) {
        puVar1 = (uint *)(uVar7 + 8);
        if (*(int **)(uVar7 + 8) != (int *)0x0) {
          if ((param_5 == '\0') && (local_64 != (void *)0x0)) {
            uVar11 = (**(code **)(**(int **)(uVar7 + 8) + 0x84))();
            uVar6 = FUN_0081c5c0(local_64,(int)uVar11,(int)((ulonglong)uVar11 >> 0x20));
            if ((char)uVar6 != '\0') goto LAB_00669d59;
          }
          if (puVar9 == (undefined4 *)0x0) {
            uVar6 = 0;
          }
          else {
            uVar6 = *puVar9;
          }
          cVar4 = (**(code **)(*(int *)*puVar1 + 0x60))(uVar6);
          if (cVar4 == '\0') goto LAB_00669d59;
        }
        if (((int *)*puVar1 == (int *)0x0) ||
           (cVar4 = (**(code **)(*(int *)*puVar1 + 0x28))(), cVar4 == '\0')) {
          uVar7 = (**(code **)(*(int *)*puVar1 + 8))(puVar9,*(undefined1 *)(uVar7 + 0x10));
          if ((puVar9 != (undefined4 *)0x0) && ((int *)*puVar1 != (int *)0x0)) {
            uVar11 = (**(code **)(*(int *)*puVar1 + 0x84))();
            if ((((int)uVar11 == puVar9[2]) && ((int)((ulonglong)uVar11 >> 0x20) == puVar9[3])) &&
               (param_4 != '\0')) goto LAB_00669d59;
            if (((*(uint *)(param_1 + 0x50) & 0x80000) != 0) &&
               ((iVar5 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar5 == 0x13 ||
                (iVar5 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar5 == 0x18)))) {
              uVar7 = 0xc;
            }
          }
          if ((int *)*puVar1 == (int *)0x0) {
LAB_00669ce5:
            if ((((int *)*puVar1 != (int *)0x0) &&
                (iVar5 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar5 == 0x14)) &&
               ((local_64 == (void *)0x0 ||
                (uVar6 = RoutingOptions_TestMask(local_64,0x1004,0,'\0'), (char)uVar6 == '\0')))) {
              uVar7 = 1;
            }
            if (param_3 == '\0') {
LAB_00669d3d:
              FUN_00628ca0(param_2,auStack_58,puVar1);
            }
            else if (uVar7 == 2) {
              if (*puVar1 == 0) goto LAB_00669d3d;
              FUN_006694c0(&local_50,(int *)puVar1);
            }
            else if ((1 < uVar7) && (uVar7 != 0xd)) goto LAB_00669d3d;
          }
          else {
            iVar5 = (**(code **)(*(int *)*puVar1 + 0xc))();
            if (iVar5 == 0x1f) {
              bVar2 = true;
            }
            else if (((param_1 == 0) || ((*(uint *)(param_1 + 0x50) & 0x2000000) == 0)) ||
                    (iVar5 != 0x1e)) goto LAB_00669ce5;
          }
        }
      }
LAB_00669d59:
      puVar10 = local_50;
      puVar3 = local_4c;
    }
    puVar1 = puVar10;
    puVar8 = puVar3;
    if (((param_3 != '\0') && (puVar10 != puVar3)) && (bVar2)) {
      do {
        FUN_00628ca0(param_2,auStack_58,puVar10);
        puVar10 = puVar10 + 1;
        puVar1 = local_50;
        puVar8 = local_4c;
      } while (puVar10 != puVar3);
    }
    for (; puVar10 = local_4c, puVar1 < local_4c; puVar1 = puVar1 + 1) {
      local_4c = puVar8;
      if ((int *)*puVar1 != (int *)0x0) {
        (**(code **)(*(int *)*puVar1 + 0x94))();
      }
      puVar8 = local_4c;
      local_4c = puVar10;
    }
    if ((local_50 != (uint *)0x0) && (local_50 != local_3c)) {
      local_4c = puVar8;
      Memory_FreeIfNonNull(local_50);
    }
  }
  return;
}

