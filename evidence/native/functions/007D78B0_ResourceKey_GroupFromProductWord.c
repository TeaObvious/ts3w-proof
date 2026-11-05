/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. One stack UInt32 word; caller cleans the
   stack. SHL27 then subtract08000000 returns EAX modulo32. Used as group word in the selected
   weather DDS key producer. Literal product16 yields78000000; product1 yields0. No
   expansion/product enum mapping or package precedence follows. */

int __cdecl ResourceKey_GroupFromProductWord(int param_1)

{
  return param_1 * 0x8000000 + -0x8000000;
}

