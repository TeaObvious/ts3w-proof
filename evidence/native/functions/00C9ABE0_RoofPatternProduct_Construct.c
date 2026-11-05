/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof-pattern constructor role): Complete116-byte body C9ABE0 calls base
   C93020, installs vtable107D300, clears its own key/reference slots and returns the input object
   in EAX/plainRET. Factory C8CD90 selects it for typeF1EDBD86; vtable+18 resolves actual
   roof-pattern reader C9AC60. Existing inferred prototype/storage and every original instruction
   are preserved; structural Common projection remains separate from full suffix admission. */

undefined4 * __fastcall RoofPatternProduct_Construct(undefined4 *param_1)

{
  CatalogProduct_ConstructCommonDefaults(param_1);
  *param_1 = &PTR_FUN_0107d300;
  param_1[0x22] = 0;
  param_1[0x23] = 0;
  param_1[0x24] = 0;
  param_1[0x25] = 0;
  param_1[0x26] = 0;
  param_1[0x27] = 0;
  param_1[0x28] = 0;
  param_1[0x29] = 0;
  param_1[0x2a] = 0;
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = 0;
  param_1[0x2f] = 0;
  param_1[0x30] = 0;
  param_1[0x31] = 0;
  return param_1;
}

