/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX metadata and output string. Original UTF16
   literal0101C224 is1D; empty-name literal0104D6C0 is No name. Identity/export time use0x%016I64x;
   count,funds and per-member flags/ghost use%d.009AF654..662 pushes raw flags DWORD from
   metadata+160 into signed %d literal00FC056C; current UInt32-to-Int64 formatting differs for
   bit31. Variadic argument omission in C must not erase signedness. Text control-character
   replacement is not established by this concatenation. */

void __thiscall HouseholdMetadata_FormatBinSection(void *this,undefined4 *param_1)

{
  short sVar1;
  undefined4 *this_00;
  undefined2 *allocation;
  undefined2 *puVar2;
  short *psVar3;
  undefined4 *puVar4;
  short *psVar5;
  int local_24;
  undefined2 *local_20;
  undefined2 *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined2 *local_10;
  undefined2 *local_c;
  int local_8;
  char *local_4;
  
  this_00 = param_1;
  local_10 = (undefined2 *)0x0;
  local_c = (undefined2 *)0x0;
  local_8 = 0;
  local_4 = "Scratch/DownloadContentHost/Household/HouseholdMetadata/DataString";
  FUN_0040b590(&local_10,(short *)&DAT_0101c224);
  local_20 = (undefined2 *)&DAT_011c8e54;
  local_1c = (undefined2 *)&DAT_011c8e54;
  local_14 = "Scratch/DownloadContentHost/Household/HouseholdMetadata/Scratch";
  local_18 = &DAT_011c8e56;
  FUN_0040e840(param_1,(ushort *)L"0x%016I64x");
  puVar2 = local_c;
  allocation = local_10;
  FUN_00408b90(param_1,local_10,local_c);
  FUN_0040e840(&local_20,(ushort *)L"0x%016I64x");
  FUN_00408b90(param_1,local_20,local_1c);
  FUN_00408b90(param_1,allocation,puVar2);
  psVar5 = *(short **)((int)this + 0x18);
  if (psVar5 == *(short **)((int)this + 0x1c)) {
    psVar5 = &DAT_0104d6c0;
  }
  sVar1 = *psVar5;
  psVar3 = psVar5;
  while (sVar1 != 0) {
    psVar3 = psVar3 + 1;
    sVar1 = *psVar3;
  }
  FUN_00408b90(param_1,psVar5,psVar5 + ((int)psVar3 - (int)psVar5 >> 1));
  FUN_00408b90(param_1,allocation,puVar2);
  FUN_0040e840(&local_20,(ushort *)&DAT_00fc056c);
  FUN_00408b90(param_1,local_20,local_1c);
  FUN_00408b90(param_1,allocation,puVar2);
  FUN_0040e840(&local_20,(ushort *)&DAT_00fc056c);
  FUN_00408b90(param_1,local_20,local_1c);
  FUN_00408b90(param_1,allocation,puVar2);
  FUN_00408b90(param_1,*(undefined2 **)((int)this + 0x28),*(undefined2 **)((int)this + 0x2c));
  param_1 = (undefined4 *)0x0;
  if (0 < *(int *)this) {
    local_24 = 0;
    do {
      FUN_00408b90(this_00,allocation,puVar2);
      puVar4 = (undefined4 *)(*(int *)((int)this + 0x38) + local_24);
      FUN_00408b90(this_00,(undefined2 *)*puVar4,(undefined2 *)puVar4[1]);
      FUN_00408b90(this_00,allocation,puVar2);
      puVar4 = (undefined4 *)(*(int *)((int)this + 0xcc) + local_24);
      FUN_00408b90(this_00,(undefined2 *)*puVar4,(undefined2 *)puVar4[1]);
      FUN_00408b90(this_00,allocation,puVar2);
      FUN_0040e840(&local_20,(ushort *)&DAT_00fc056c);
      FUN_00408b90(this_00,local_20,local_1c);
      FUN_00408b90(this_00,allocation,puVar2);
      FUN_0040e840(&local_20,(ushort *)&DAT_00fc056c);
      FUN_00408b90(this_00,local_20,local_1c);
      local_24 = local_24 + 0x10;
      param_1 = (undefined4 *)((int)param_1 + 1);
    } while ((int)param_1 < *(int *)this);
  }
  if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  if ((2 < (int)(local_8 - (int)allocation & 0xfffffffeU)) && (allocation != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

