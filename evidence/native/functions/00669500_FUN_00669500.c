/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintCell_CollectMaskedRecords.
   Original Ghidra database symbol: FUN_00669500; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669500,006697ff); 0 envelope gap bytes are not owned instructions.
*/

/* For terminal subcell code s, 669507 loads the bit index from FEEEC8[s]. 6695CB..F2 tests low/high halves of each 12-byte record mask. For the social caller, queryRecord+40/+44 are zero, so the per-actor context and returned options are null. Retained candidates still pass virtual+60(0), virtual+28 exclusion and virtual+8(null,recordByte) classification. Kind1F is a per-callback marker, never inserted itself. Class2 references are deferred and inserted only if that same callback saw an eligible kind1F. Other classes are inserted unless 621220 rejects 0,1,0D. Kind14 is forced to class1 without options. Actual null-footprint dereferences remain visible; no malformed-record safety is claimed. */

void __thiscall FootprintCell_CollectMaskedRecords(void *this,int param_1,int param_2,void *param_3,char param_4)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  bool bVar4;
  uint *puVar5;
  char cVar6;
  int iVar7;
  undefined4 uVar8;
  uint uVar9;
  byte bVar10;
  undefined4 *puVar11;
  uint *puVar12;
  uint *puVar13;
  undefined8 uVar14;
  void *local_64;
  uint *local_60;
  undefined4 local_58 [2];
  uint *local_50;
  uint *local_4c;
  uint local_3c [15];
  
  uVar2 = *(uint *)(&DAT_00feeec8 + param_2 * 4);
  puVar1 = (uint *)((int)this + 8);
  if (((~*(byte *)((int)this + 8) & 1) != 0) || (*(int *)((int)this + 0xc) != 0)) {
    if (param_1 == 0) {
      puVar11 = (undefined4 *)0x0;
    }
    else {
      puVar11 = *(undefined4 **)(param_1 + 0x40);
    }
    iVar7 = thunk_FUN_00835d40();
    if (iVar7 == 0) {
      local_64 = (void *)0x0;
    }
    else {
      local_64 = (void *)RoutingRecord_GetOptionsField28OrNull((int)puVar11);
    }
    bVar4 = false;
    if ((~*(byte *)puVar1 & 1) == 0) {
      puVar12 = (uint *)(*puVar1 & 0xfffffffe);
    }
    else {
      puVar12 = puVar1;
    }
    puVar13 = local_3c;
    puVar5 = local_3c;
    if ((~*(byte *)puVar1 & 1) == 0) {
      local_60 = (uint *)((*puVar1 & 0xfffffffe) + *(int *)((int)this + 0xc) * 0xc);
    }
    else {
      local_60 = (uint *)((int)this + 0x14);
    }
    for (; local_50 = puVar13, local_4c = puVar5, puVar12 != local_60; puVar12 = puVar12 + 3) {
      uVar9 = *puVar12;
      if (uVar9 != 0) {
        bVar10 = (byte)uVar2;
        if (uVar2 < 0x20) {
          uVar3 = puVar12[1] & 1 << (bVar10 & 0x1f);
        }
        else {
          uVar3 = puVar12[2] & 1 << (bVar10 - 0x20 & 0x1f);
        }
        if (uVar3 != 0) {
          puVar1 = (uint *)(uVar9 + 8);
          if (*(int **)(uVar9 + 8) != (int *)0x0) {
            if (local_64 != (void *)0x0) {
              uVar14 = (**(code **)(**(int **)(uVar9 + 8) + 0x84))();
              uVar8 = FUN_0081c5c0(local_64,(int)uVar14,(int)((ulonglong)uVar14 >> 0x20));
              if ((char)uVar8 != '\0') goto LAB_00669762;
            }
            if (puVar11 == (undefined4 *)0x0) {
              uVar8 = 0;
            }
            else {
              uVar8 = *puVar11;
            }
            cVar6 = (**(code **)(*(int *)*puVar1 + 0x60))(uVar8);
            if (cVar6 == '\0') goto LAB_00669762;
          }
          if (((int *)*puVar1 == (int *)0x0) ||
             (cVar6 = (**(code **)(*(int *)*puVar1 + 0x28))(), cVar6 == '\0')) {
            uVar9 = (**(code **)(*(int *)*puVar1 + 8))(puVar11,*(undefined1 *)(uVar9 + 0x10));
            if ((puVar11 != (undefined4 *)0x0) && ((int *)*puVar1 != (int *)0x0)) {
              uVar14 = (**(code **)(*(int *)*puVar1 + 0x84))();
              if (((int)uVar14 == puVar11[2]) && ((int)((ulonglong)uVar14 >> 0x20) == puVar11[3]))
              goto LAB_00669762;
              if (((*(uint *)(param_1 + 0x50) & 0x80000) != 0) &&
                 ((iVar7 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar7 == 0x13 ||
                  (iVar7 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar7 == 0x18)))) {
                uVar9 = 0xc;
              }
            }
            if ((int *)*puVar1 == (int *)0x0) {
LAB_006696ed:
              if ((((int *)*puVar1 != (int *)0x0) &&
                  (iVar7 = (**(code **)(*(int *)*puVar1 + 0xc))(), iVar7 == 0x14)) &&
                 ((local_64 == (void *)0x0 ||
                  (uVar8 = RoutingOptions_TestMask(local_64,0x1004,0,'\0'), (char)uVar8 == '\0'))))
              {
                uVar9 = 1;
              }
              if (param_4 == '\0') {
LAB_0066974b:
                if (*puVar1 != 0) {
                  FootprintSet_InsertUniquePointerForwarder(param_3,local_58,puVar1);
                }
              }
              else if ((uVar9 == 2) && (*puVar1 != 0)) {
                FootprintGather_AppendDeferredReference(&local_50,(int *)puVar1);
              }
              else {
                uVar8 = FootprintGather_IsDiscardedClassification(uVar9);
                if ((char)uVar8 == '\0') goto LAB_0066974b;
              }
            }
            else {
              iVar7 = (**(code **)(*(int *)*puVar1 + 0xc))();
              if (iVar7 == 0x1f) {
                bVar4 = true;
              }
              else if (((param_1 == 0) || ((*(uint *)(param_1 + 0x50) & 0x2000000) == 0)) ||
                      (iVar7 != 0x1e)) goto LAB_006696ed;
            }
          }
        }
      }
LAB_00669762:
      puVar13 = local_50;
      puVar5 = local_4c;
    }
    puVar1 = puVar13;
    puVar12 = puVar5;
    if (((param_4 != '\0') && (puVar13 != puVar5)) && (bVar4)) {
      do {
        FootprintSet_InsertUniquePointer(param_3,local_58,puVar13);
        puVar13 = puVar13 + 1;
        puVar1 = local_50;
        puVar12 = local_4c;
      } while (puVar13 != puVar5);
    }
    for (; puVar13 = local_4c, puVar1 < local_4c; puVar1 = puVar1 + 1) {
      local_4c = puVar12;
      if ((int *)*puVar1 != (int *)0x0) {
        (**(code **)(*(int *)*puVar1 + 0x94))();
      }
      puVar12 = local_4c;
      local_4c = puVar13;
    }
    if ((local_50 != (uint *)0x0) && (local_50 != local_3c)) {
      local_4c = puVar12;
      Memory_FreeIfNonNull(local_50);
    }
  }
  return;
}
