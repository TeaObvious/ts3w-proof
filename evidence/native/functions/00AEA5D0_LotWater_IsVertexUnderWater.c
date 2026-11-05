/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX terrain plus x/z
   stack arguments, RET8. No coordinate bounds or nullable-pointer guard is present in this leaf.
   Reads original level-zero floor and x-major water directly; COMISS/JBE rejects water<=floor and
   unordered. Boolean EAX1/0 observed. No nonfinite normalization or array repair. Original managed
   LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical
   ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache
   policy is preserved. */

undefined4 __thiscall LotWater_IsVertexUnderWater(void *this,int param_1,int param_2)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = *(int *)((int)this + 8);
  iVar4 = *(int *)(iVar3 + 0x24);
  fVar2 = *(float *)(*(int *)(*(int *)((int)this + 200) + 0xc) +
                    (*(int *)(*(int *)((int)this + 200) + 8) * param_1 + param_2) * 4);
  pfVar1 = (float *)(*(int *)(iVar4 + 0x10) +
                    (((*(int *)(iVar3 + 0x18) - *(int *)(iVar3 + 0x10)) * *(int *)(iVar4 + 4) +
                     param_1) * *(int *)(iVar4 + 8) + param_2) * 4);
  if (*pfVar1 <= fVar2 && fVar2 != *pfVar1) {
    return 1;
  }
  return 0;
}

