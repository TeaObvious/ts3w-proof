/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXLocation singlefastcall register input, no stackargs.
   Native ownercomponentmask gates callback. Builds4Variantargs ownerGUID, lotGUID, level androom
   then dispatches registered world event0x11 (17decimal). No local successBoolean or all-or-nothing
   membership rollback; original managedcallback lifetime and reentry are separate from Location
   field writes. */

void __fastcall LocationComponent_NotifyManagedLotUpdate(int param_1)

{
  int iVar1;
  undefined ***pppuVar2;
  int local_a8;
  undefined4 local_a4;
  undefined **local_a0 [2];
  undefined2 local_98;
  undefined2 local_96;
  undefined **local_80 [2];
  undefined2 local_78;
  undefined2 local_76;
  undefined **local_60 [2];
  undefined2 local_58;
  undefined2 local_56;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  byte local_18;
  undefined ***this;
  
  iVar1 = *(int *)(param_1 + 4);
  if ((*(uint *)(iVar1 + 0x2c) & DAT_011ea0f8) != 0) {
    local_a8 = *(undefined4 *)(iVar1 + 8);
    local_a4 = *(undefined4 *)(iVar1 + 0xc);
    local_a0[0] = &PTR_FUN_00fba6f4;
    local_98 = 0;
    local_96 = 0;
    Variant_AssignUInt64(local_a0,(ulonglong *)&local_a8);
    local_80[0] = &PTR_FUN_00fba6f4;
    local_78 = 0;
    local_76 = 0;
    Variant_AssignUInt64(local_80,(ulonglong *)(param_1 + 8));
    local_60[0] = &PTR_FUN_00fba6f4;
    local_58 = 0;
    local_56 = 0;
    FUN_004f5ea0(local_60,(undefined4 *)(param_1 + 0x18));
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    FUN_004f5ea0(local_40,(undefined4 *)(param_1 + 0x20));
    World_DispatchRegisteredEventCallback(local_20,0x11,local_a0,4);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
    local_a8 = 3;
    pppuVar2 = local_20;
    do {
      this = pppuVar2 + -8;
      *this = &PTR_FUN_00fba6f4;
      if (((uint)pppuVar2[-6] & 4) != 0) {
        FUN_004f5760(this,'\0');
      }
      local_a8 = local_a8 + -1;
      pppuVar2 = this;
    } while (-1 < local_a8);
  }
  return;
}

