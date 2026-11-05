/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX manager,
   sign-extended16-bit ID and output pointer, RET8. Search existing record span in 0x60 (96-byte)
   strides comparing record+18; match calls B62ED0 and returnsAL1, failure AL0 leaves output
   untouched. Preserve caller output policy and actual prototype. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

uint __thiscall LotPonds_TryWriteInfoForId(void *this,short param_1,void *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  puVar1 = *(undefined4 **)((int)this + 0xc);
  if (puVar1 != *(undefined4 **)((int)this + 0x10)) {
    do {
      if (puVar1[6] == (int)param_1) {
        uVar2 = LotPonds_WriteScriptInfo(this,puVar1,param_2);
        return CONCAT31((int3)((uint)uVar2 >> 8),1);
      }
      puVar1 = puVar1 + 0x18;
    } while (puVar1 != *(undefined4 **)((int)this + 0x10));
  }
  return (uint)puVar1 & 0xffffff00;
}

