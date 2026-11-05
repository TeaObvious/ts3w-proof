/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. ECX routing owner plus lot-ID low/high and point/level
   pointer, RET0C, AL-only result. Creates scoped Routing/PortalCheckCache callback data and
   calls6328F0; null query returnsAL0. Increment query+28 reference count, call66B8D0 and admit
   precisely unsigned statuses0 or1 (CMP2/JC) or13 (CMP0D), otherwiseAL0. Decrement query reference;
   zero invokes original virtual destruction through query+24 with argument1 after restoring count1.
   Destroy scoped cache and free heap storage when count>1. Do not reinterpret these statuses as
   graph-passability without closing the actual query backend. Complete324bytes/98instructions; no
   native metadata/types/bytes edited. */

undefined1 __thiscall
LotRouting_IsPortalLocationAdmitted(void *this,uint param_1,uint param_2,float *param_3)

{
  void *this_00;
  uint uVar1;
  int iVar2;
  undefined **local_64;
  uint local_60 [2];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 *local_40;
  uint local_3c;
  undefined4 local_38;
  float local_34;
  undefined4 local_30;
  undefined4 local_2c;
  char *local_28;
  undefined4 local_20;
  void *local_1c;
  undefined ***local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  local_58 = 0;
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  local_18 = &local_64;
  local_34 = FLOAT_00f998f8;
  local_64 = &PTR_LAB_00fecfd0;
  local_30 = DAT_0103fd88;
  local_28 = "Routing/PortalCheckCache";
  local_3c = 1;
  local_40 = &DAT_0114d900;
  local_38 = 0;
  local_2c = 0;
  local_20 = 0;
  local_14 = 0;
  local_10 = 0x10000;
  local_c = 0;
  local_8 = 0;
  local_1c = this;
  this_00 = FUN_006328f0(this,param_1,param_2,param_3);
  if (this_00 == (void *)0x0) {
    FUN_009d67f0((int)local_40,local_3c);
    local_38 = 0;
    if (1 < local_3c) {
      Memory_FreeIfNonNull(local_40);
    }
    return 0;
  }
  *(int *)((int)this_00 + 0x28) = *(int *)((int)this_00 + 0x28) + 1;
  uVar1 = FUN_0066b8d0(this_00,local_60);
  if ((uVar1 < 2) || (param_3._0_1_ = 0, uVar1 == 0xd)) {
    param_3._0_1_ = 1;
  }
  iVar2 = *(int *)((int)this_00 + 0x28) + -1;
  *(int *)((int)this_00 + 0x28) = iVar2;
  if (iVar2 == 0) {
    *(undefined4 *)((int)this_00 + 0x28) = 1;
    (*(code *)**(undefined4 **)((int)this_00 + 0x24))(1);
  }
  FUN_009d67f0((int)local_40,local_3c);
  local_38 = 0;
  if (1 < local_3c) {
    Memory_FreeIfNonNull(local_40);
  }
  return param_3._0_1_;
}

