/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. object+2c is mask; requested one-bit mask is supplied by
   registered descriptors. If absent returnsNULL; slot=popcount(mask&(requested-1)); packed pointers
   begin+34. SWAR SHR is unsigned. No multibit validation.
   
   PC1.67 component ownership closure: ECXactualobject+oneDWORDrequestedmask RET4
   borrowedcomponentornull; actualobjectcomponentstorage determinesresult. It
   doesnotvalidateanindependenthostroworworldepoch. Existingmask/categorytraversal retained, not a
   managedpolicyduplicate. */

void * __thiscall Object_GetComponentByMask(void *this,uint requestedMask)

{
  uint uVar1;
  
  if ((requestedMask & *(uint *)((int)this + 0x2c)) != 0) {
    uVar1 = requestedMask - 1 & *(uint *)((int)this + 0x2c);
    uVar1 = uVar1 - (uVar1 >> 1 & 0x55555555);
    uVar1 = (uVar1 >> 2 & 0x33333333) + (uVar1 & 0x33333333);
                    /* Analyst: popcount determines packed component slot; arithmetic shifts here
                       are unsigned. */
    return *(void **)((int)this +
                     (((uVar1 >> 4) + uVar1 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
  }
  return (void *)0x0;
}

