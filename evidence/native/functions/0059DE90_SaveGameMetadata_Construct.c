/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX object. Constructor sets format
   version+28 to3 and initializes world+40,home+50,household name+60,bio+70 and version
   strings+80/+90/+A0/+B0. Household and lot identities are UInt64 at+30/+38. Names are analyst
   assignments, not recovered symbols. */

void __fastcall SaveGameMetadata_Construct(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00fb3c14;
  LOCK();
  param_1[1] = 0;
  UNLOCK();
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[7] = 0;
  param_1[6] = 0;
  *param_1 = &PTR_FUN_00fdec70;
  param_1[10] = 3;
  param_1[0x13] = "UI/SaveGameMetadata/WorldFile";
  param_1[0x10] = &DAT_011c8e54;
  param_1[0x11] = &DAT_011c8e54;
  param_1[0x12] = &DAT_011c8e56;
  param_1[0x17] = "UI/SaveGameMetadata/HouseholdName";
  param_1[0x14] = &DAT_011c8e54;
  param_1[0x15] = &DAT_011c8e54;
  param_1[0x16] = &DAT_011c8e56;
  param_1[0x1b] = "UI/SaveGameMetadata/HouseholdName";
  param_1[0x18] = &DAT_011c8e54;
  param_1[0x19] = &DAT_011c8e54;
  param_1[0x1a] = &DAT_011c8e56;
  param_1[0x1f] = "UI/SaveGameMetadata/HouseholdBio";
  param_1[0x1c] = &DAT_011c8e54;
  param_1[0x1d] = &DAT_011c8e54;
  param_1[0x1e] = &DAT_011c8e56;
  param_1[0x23] = "UI/SaveGameMetadata/CodeVersion";
  param_1[0x20] = &DAT_011c8e54;
  param_1[0x21] = &DAT_011c8e54;
  param_1[0x22] = &DAT_011c8e56;
  param_1[0x27] = "UI/SaveGameMetadata/ContentVersion";
  param_1[0x24] = &DAT_011c8e54;
  param_1[0x25] = &DAT_011c8e54;
  param_1[0x26] = &DAT_011c8e56;
  param_1[0x2b] = "UI/SaveGameMetadata/ContentVersion";
  param_1[0x28] = &DAT_011c8e54;
  param_1[0x29] = &DAT_011c8e54;
  param_1[0x2a] = &DAT_011c8e56;
  param_1[0x2f] = "UI/SaveGameMetadata/GameVersion";
  param_1[0x2c] = &DAT_011c8e54;
  param_1[0x2d] = &DAT_011c8e54;
  param_1[0x2e] = &DAT_011c8e56;
  return;
}

