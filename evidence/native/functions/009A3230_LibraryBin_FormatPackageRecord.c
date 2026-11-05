/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Selected complete original bin record formatter:
   filename,category,modified time separated by1D and optional lot/household sections separated
   by19. Uses household metadata formatter009AF4A0 for that section. Original wide-string
   concatenation/varargs require instruction-level widths; no project sanitization, exception or
   locale parity inferred. */

/* Instruction-qualified writer/reader base: at9A323B n=*inputIterator;9A324D derives
   b=n+10. Category read9A32BF is[b+240]=[n+250]; time words9A3319/331F are
   [b+23C]/[b+238]=[n+24C]/[n+248].9A4F40 writer also advances its lookup result
   by10 before field stores. Node-relative versus derived-base offsets are not different
   fields or a recovered C struct layout. Genuine C's opaque pointer locals hide this base. */

void LibraryBin_FormatPackageRecord(int *param_1,void *param_2)

{
  short sVar1;
  undefined4 *puVar2;
  short *psVar3;
  undefined2 *allocation;
  undefined2 *puVar4;
  short *psVar5;
  short *local_40;
  short *local_3c;
  undefined2 *local_38;
  char *local_34;
  undefined2 *local_30;
  undefined2 *local_2c;
  undefined2 *local_28;
  char *local_24;
  undefined2 *local_20;
  undefined2 *local_1c;
  int local_18;
  char *local_14;
  undefined2 *local_10;
  undefined2 *local_c;
  int local_8;
  char *local_4;
  
  puVar2 = (undefined4 *)*param_1;
  local_10 = (undefined2 *)0x0;
  local_c = (undefined2 *)0x0;
  local_8 = 0;
  local_4 = "Scratch/ExportBin/Metadata";
  FUN_0040b590(&local_10,(short *)&DAT_0101c228);
  local_20 = (undefined2 *)0x0;
  local_1c = (undefined2 *)0x0;
  local_18 = 0;
  local_14 = "Scratch/ExportBin/Metadata";
  FUN_0040b590(&local_20,(short *)&DAT_0101c224);
  local_34 = "Scratch/ExportBin/Metadata";
  local_40 = (short *)&DAT_011c8e54;
  local_3c = (short *)&DAT_011c8e54;
  local_38 = &DAT_011c8e56;
  FUN_00408b90(param_2,(undefined2 *)*puVar2,(undefined2 *)puVar2[1]);
  FUN_00408b90(param_2,local_20,local_1c);
  FUN_0040e840(&local_40,(ushort *)&DAT_00fc056c);
  psVar3 = local_40;
  sVar1 = *local_40;
  psVar5 = local_40;
  while (sVar1 != 0) {
    psVar5 = psVar5 + 1;
    sVar1 = *psVar5;
  }
  FUN_00408b90(param_2,local_40,local_40 + ((int)psVar5 - (int)local_40 >> 1));
  FUN_00408b90(param_2,local_20,local_1c);
  if (psVar3 != local_3c) {
    *psVar3 = 0;
    local_3c = psVar3;
  }
  FUN_0040e840(&local_40,(ushort *)L"0x%016I64x");
  FUN_00408b90(param_2,local_40,local_3c);
  puVar4 = local_c;
  local_30 = (undefined2 *)&DAT_011c8e54;
  local_2c = (undefined2 *)&DAT_011c8e54;
  local_24 = "Scratch/ExportBin/Metadata";
  local_28 = &DAT_011c8e56;
  FUN_00408b90(param_2,local_10,local_c);
  if (puVar2[10] != 0 || puVar2[0xb] != 0) {
    FUN_009b1890(&local_30);
    FUN_00408b90(param_2,local_30,local_2c);
  }
  allocation = local_10;
  FUN_00408b90(param_2,local_10,puVar4);
  if (puVar2[0x28] != 0 || puVar2[0x29] != 0) {
    HouseholdMetadata_FormatBinSection(puVar2 + 0x26,&local_30);
    FUN_00408b90(param_2,local_30,local_2c);
  }
  if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(local_30);
  }
  if ((2 < (int)((int)local_38 - (int)local_40 & 0xfffffffeU)) && (local_40 != (short *)0x0)) {
    Memory_FreeIfNonNull(local_40);
  }
  if ((2 < (int)(local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  if ((2 < (int)(local_8 - (int)allocation & 0xfffffffeU)) && (allocation != (undefined2 *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

