/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). ECX writer constructor installs vtable
   0101B290, constructs stream/context at +4 and initializes ordered vector plus pointer/factory-map
   container fields. Authenticated vtable slots 0 and 4 target 007D4760 and 007D4360; slot Ch
   targets 007D3B80. Constructor allocation is owned by its caller. */

undefined4 * __fastcall PersistWriter_ConstructStorage(undefined4 *param_1)

{
  *param_1 = &PTR_PersistWriter_IndexNativeObject_0101b290;
  FUN_007d7900(param_1 + 1);
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = "Services/PersistWriter";
  param_1[0xf] = 1.0;
  param_1[0x10] = 0x40000000;
  param_1[0x12] = "Services/PersistWriter";
  param_1[0xe] = 0;
  param_1[0x11] = 0;
  param_1[0xd] = 1;
  param_1[0xc] = &DAT_0114d900;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = "Services/PersistWriter";
  param_1[0x1b] = 1.0;
  param_1[0x1c] = 0x40000000;
  param_1[0x1e] = "Services/PersistWriter";
  param_1[0x1a] = 0;
  param_1[0x1d] = 0;
  param_1[0x19] = 1;
  param_1[0x18] = &DAT_0114d900;
  param_1[0x23] = 1.0;
  param_1[0x24] = 0x40000000;
  param_1[0x26] = "Services/PersistWriter";
  param_1[0x22] = 0;
  param_1[0x25] = 0;
  param_1[0x21] = 1;
  param_1[0x20] = &DAT_0114d900;
  return param_1;
}

