/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 fresh object ID vector producer. Physical registry ECX and stack4 mutable UInt64
   vector; RET4, no return value. Uses the existing vector length, repeatedly obtains
   registry-generated IDs via9380A0 and inserts into a local ObjectIdSet until each insertion
   succeeds. Replaces the same vector in set bucket/chain traversal order and releases local set
   storage. Input vector values do not seed this loop. No RNG algorithm, output sequence/order,
   hash-policy port or provider-service equivalence is inferred. Owned137 instructions433 bytes span
   three exact ranges; intervening padding is not owned. Explicit custom ECX/stack storage and void
   metadata preserve this physical caller/consumer contract. */

void __thiscall ObjectRegistry_FillFreshIdVector(void *this,void *objectIds)

{
  undefined4 *puVar1;
  int *piVar2;
  uint uVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  ulonglong uVar10;
  undefined8 local_44;
  undefined4 local_3c [2];
  char local_34;
  int local_30;
  undefined4 local_2c;
  char *local_28;
  uint local_24;
  undefined1 local_20 [4];
  int *local_1c;
  uint local_18;
  undefined4 local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  int *local_4;
  
  local_30 = 0;
  local_2c = 0;
  local_14 = 0;
  local_8 = 0;
  iVar7 = *(int *)((int)objectIds + 4);
  iVar8 = *(int *)objectIds;
  local_10 = FLOAT_00f998f8;
  local_28 = "Objects/ObjectIdSet";
  local_24 = 0x3fe;
  local_c = DAT_0103fd88;
  local_4 = &local_30;
  local_18 = 1;
  local_1c = &DAT_0114d900;
  uVar3 = local_18;
  piVar4 = local_1c;
  for (; local_1c = piVar4, local_18 = uVar3, iVar8 != iVar7; iVar8 = iVar8 + 8) {
    do {
      uVar10 = ObjectRegistry_GenerateUnusedGuid(this);
      local_44 = uVar10;
      FUN_00938480(local_20,local_3c,(uint *)&local_44);
    } while (local_34 == '\0');
    uVar3 = local_18;
    piVar4 = local_1c;
  }
  puVar5 = (undefined4 *)*piVar4;
  piVar6 = piVar4;
  if (puVar5 == (undefined4 *)0x0) {
    piVar6 = piVar4 + 1;
    iVar7 = piVar4[1];
    while (iVar7 == 0) {
      piVar6 = piVar6 + 1;
      iVar7 = *piVar6;
    }
    puVar5 = (undefined4 *)*piVar6;
  }
  puVar1 = (undefined4 *)piVar4[uVar3];
  if (puVar5 != puVar1) {
    iVar7 = 0;
    do {
      iVar8 = *(int *)objectIds;
      *(undefined4 *)(iVar7 + iVar8) = *puVar5;
      *(undefined4 *)(iVar7 + 4 + iVar8) = puVar5[1];
      puVar5 = (undefined4 *)puVar5[2];
      while (puVar5 == (undefined4 *)0x0) {
        piVar2 = piVar6 + 1;
        piVar6 = piVar6 + 1;
        puVar5 = (undefined4 *)*piVar2;
      }
      iVar7 = iVar7 + 8;
    } while (puVar5 != puVar1);
  }
  uVar9 = 0;
  if (uVar3 != 0) {
    do {
      piVar6 = (int *)piVar4[uVar9];
      while (piVar6 != (int *)0x0) {
        piVar2 = (int *)piVar6[2];
        *piVar6 = *local_4;
        *local_4 = (int)piVar6;
        piVar6 = piVar2;
      }
      piVar4[uVar9] = 0;
      uVar9 = uVar9 + 1;
    } while (uVar9 < uVar3);
  }
  local_14 = 0;
  if (1 < local_18) {
    if ((local_18 & 0x3fffffff) == 3) {
      *local_1c = *local_4;
      *local_4 = (int)local_1c;
    }
    else {
      FUN_004e5e70(DAT_011cc864,(int)local_1c);
    }
  }
  if (-1 < (int)local_24) {
    PayloadCleanup_NoOperation((byte *)(local_24 & 0x7fffffff));
  }
  FUN_007cd020(&local_30);
  return;
}

