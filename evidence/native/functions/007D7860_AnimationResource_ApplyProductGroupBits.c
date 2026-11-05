/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67 cdecl two stack arguments; signed product
   value>1 invokes0059DC10, writes (ordinal-1)*08000000 OR old group&0FFFFFFF. Lower28 group bits
   preserved; otherwise group left untouched. Does not by itself verify current enum
   flags-to-ordinal helper, StoreFFFFFFFF handling or script ResourceUtils ownership; keep that
   child mapping explicit. */

void __cdecl AnimationResource_ApplyProductGroupBits(int param_1,uint *param_2)

{
  int iVar1;
  
  if (1 < param_1) {
    iVar1 = ProductFlag_FindOrdinal(param_1);
    *param_2 = (iVar1 + -1) * 0x8000000 | *param_2 & 0xfffffff;
  }
  return;
}

