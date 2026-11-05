/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX lot plus compact
   location pointer and quarter mask, RET8/AL Boolean. Nonzero compact level byte rejects; x/z are
   sign-extended bytes. AEA5D0 executes for all FOUR vertices before mask combinations,
   in00/10/01/11 order. Current Int32/nullable unknown behavior is separate; no short-circuit
   sampling claim. Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains
   its authority. All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain
   unchanged; current resource/cache policy is preserved. */

int __thiscall LotWater_IsQuarterUnderWater(void *this,char *param_1,byte param_2)

{
  uint in_EAX;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint3 uVar5;
  
  if ((*(void **)((int)this + 0x294) == (void *)0x0) || (param_1[2] != '\0')) {
    return in_EAX & 0xffffff00;
  }
  uVar1 = LotWater_IsVertexUnderWater(*(void **)((int)this + 0x294),(int)*param_1,(int)param_1[1]);
  uVar2 = LotWater_IsVertexUnderWater(*(void **)((int)this + 0x294),*param_1 + 1,(int)param_1[1]);
  uVar3 = LotWater_IsVertexUnderWater(*(void **)((int)this + 0x294),(int)*param_1,param_1[1] + 1);
  uVar4 = LotWater_IsVertexUnderWater(*(void **)((int)this + 0x294),*param_1 + 1,param_1[1] + 1);
  uVar5 = (uint3)((uint)uVar4 >> 8);
  if ((((((param_2 & 8) == 0) || ((char)uVar1 == '\0')) || ((char)uVar3 == '\0')) &&
      (((((param_2 & 2) == 0 || ((char)uVar2 == '\0')) || ((char)uVar4 == '\0')) &&
       ((((param_2 & 1) == 0 || ((char)uVar1 == '\0')) || ((char)uVar2 == '\0')))))) &&
     ((((param_2 & 4) == 0 || ((char)uVar3 == '\0')) || ((char)uVar4 == '\0')))) {
    return (uint)uVar5 << 8;
  }
  return CONCAT31(uVar5,1);
}

