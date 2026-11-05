/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX lot pointer, plain RET; AL reports Boolean and upper EAX is
   unspecified. Null retained lot+0x2A4 grid returns false. Builds an ID list via C8FFF0 with
   literal selectors 2,1,7,8,9; traverses original compressed marker storage through AB3EB0,
   compares each of four UInt32 product words, frees its local list and returns on a first match.
   Full selector/catalog producer and iterator semantics remain child boundaries; no current Level0
   any-nonempty-cell occupancy or 0.65 height equivalence follows. Stored disjoint ranges exclude
   six alignment bytes at AB6BCA..AB6BCF; no body/type/prototype repair proposed. */

uint __fastcall Lot_ContainsFoundationCatalogProduct(int param_1)

{
  void *pvVar1;
  int iVar2;
  char cVar3;
  uint in_EAX;
  undefined4 uVar4;
  uint uVar5;
  uint extraout_EAX;
  uint extraout_EAX_00;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  int local_24;
  void *local_20;
  int local_1c;
  undefined4 local_18;
  char *local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar1 = DAT_011ee034;
  if (*(int *)(param_1 + 0x2a4) == 0) {
    return in_EAX & 0xffffff00;
  }
  local_20 = (void *)0x0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "Lot/DoesFoundationExistOnLot/foundationProductIDs";
  local_24 = param_1;
  FUN_00c8fff0(DAT_011ee034,2,&local_20);
  FUN_00c8fff0(pvVar1,1,&local_20);
  FUN_00c8fff0(pvVar1,7,&local_20);
  FUN_00c8fff0(pvVar1,8,&local_20);
  FUN_00c8fff0(pvVar1,9,&local_20);
  pvVar1 = *(void **)(param_1 + 0x2a4);
  uVar7 = *(int *)((int)pvVar1 + 0x24) * *(int *)((int)pvVar1 + 0x20);
  local_10 = -1;
  local_c = 0xffffffff;
  local_8 = 0xffffffff;
  local_4 = 0xffffffff;
  uVar8 = local_1c - (int)local_20 >> 2;
  local_28 = uVar7;
  uVar4 = FUN_00ab3eb0(pvVar1,&local_10,0,uVar7,&local_3c,(int *)&local_34);
  cVar3 = (char)uVar4;
  do {
    if (cVar3 == '\0') {
      uVar7 = 0;
      if (local_20 != (void *)0x0) {
        Memory_FreeIfNonNull(local_20);
        uVar7 = extraout_EAX;
      }
      return uVar7 & 0xffffff00;
    }
    local_38 = local_34;
    if (local_34 < 0x10) {
      iVar2 = *(int *)(param_1 + 0x2a4);
      local_2c = (uint)*(ushort *)(*(int *)(iVar2 + 0x48) + local_3c * 2);
      local_30 = local_2c & 0x8000;
      do {
        if ((short)local_30 == 0) {
          iVar6 = (local_2c * 0x10 + local_38) * 0x10 + *(int *)(iVar2 + 0x28);
        }
        else {
          iVar6 = local_3c * 0x10 + *(int *)(iVar2 + 0x38);
        }
        uVar7 = 0;
        do {
          uVar5 = 0;
          if (uVar8 != 0) {
            do {
              if (*(int *)(iVar6 + uVar7 * 4) == *(int *)((int)local_20 + uVar5 * 4)) {
                if (local_20 != (void *)0x0) {
                  Memory_FreeIfNonNull(local_20);
                  uVar5 = extraout_EAX_00;
                }
                return CONCAT31((int3)(uVar5 >> 8),1);
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < uVar8);
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < 4);
        local_38 = local_38 + 1;
        param_1 = local_24;
        uVar7 = local_28;
      } while (local_38 < 0x10);
    }
    uVar4 = FUN_00ab3eb0(*(void **)(param_1 + 0x2a4),&local_10,local_3c + 1,uVar7,&local_3c,
                         (int *)&local_34);
    cVar3 = (char)uVar4;
  } while( true );
}

