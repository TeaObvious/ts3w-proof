/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 initializes manager map with count0, bucketCount1, initial empty bucket114D900, load
   factor1.0f bits3F800000 atF998F8 and growth2.0f bits40000000 at103FD88; lot pointer+24=0 until
   separate bind. Group key hash is uint32identity; collision policy defined byA76430. Shared
   SerializedBucketMap load1/growth2 is applicable, not .NET insertion-order traversal. */

void __fastcall FireplaceGroups_Construct(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_010627cc;
  param_1[5] = 1.0;
  param_1[6] = 0x40000000;
  param_1[8] = "Lot/FireplaceManager/FireplaceHashmap";
  param_1[3] = 1;
  param_1[2] = &DAT_0114d900;
  param_1[4] = 0;
  param_1[7] = 0;
  param_1[9] = 0;
  return;
}

