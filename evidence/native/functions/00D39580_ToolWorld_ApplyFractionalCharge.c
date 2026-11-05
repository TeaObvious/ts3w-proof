/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallFloat32amountRET4void. ADDSS amount to persistentworldremainder20; storeFloat32; x87FISTP
   int usingCURRENTFPUroundingcontrol. Ifroundedn!=0, NEGint n andCALL7913F0
   withONEphysicalcdeclsignedargument; ignorecallbackreturn, SUBSS float(n)fromremainder.
   Defaultnearest-even canbehostprofile,butactualcontrolwordisnotsethere.
   Nativecallbackreject/errorrollbackisnotestablished. Do notportoldGhidraemptyargumentCALL
   asno-fundsoperation. */

void __thiscall ToolWorld_ApplyFractionalCharge(void *this,float amount)

{
  int iVar1;
  float fVar2;
  
  fVar2 = amount + *(float *)((int)this + 0x20);
  *(float *)((int)this + 0x20) = fVar2;
  iVar1 = (int)ROUND(fVar2);
  if (iVar1 != 0) {
    WorldCallback_FamilyFundsMakeChange(-iVar1);
    *(float *)((int)this + 0x20) = *(float *)((int)this + 0x20) - (float)iVar1;
  }
  return;
}

