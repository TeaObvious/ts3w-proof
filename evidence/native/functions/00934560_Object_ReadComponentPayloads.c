/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX object plus reader/context/serialized-mask
   DWORDs, RET0Ch. Repeatedly extracts lowest set mask bit, locates object component by
   populated-mask rank and the same bit context in context+8 array, then synchronously calls
   component virtual+8(reader,context). First low AL0 returns failure; otherwise clears that bit and
   continues, ending literal AL1. No null-component guard or broader valid-caller guarantee
   invented. */

undefined4 __thiscall
Object_ReadComponentPayloads(void *this,undefined4 param_1,int param_2,uint param_3)

{
  uint uVar1;
  int *piVar2;
  uint uVar3;
  
  uVar3 = 0;
  while( true ) {
    if (param_3 == 0) {
      return CONCAT31((int3)(uVar3 >> 8),1);
    }
    uVar3 = -param_3 & param_3;
    if ((uVar3 & *(uint *)((int)this + 0x2c)) == 0) {
      piVar2 = (int *)0x0;
    }
    else {
      uVar1 = uVar3 - 1 & *(uint *)((int)this + 0x2c);
      uVar1 = uVar1 - (uVar1 >> 1 & 0x55555555);
      uVar1 = (uVar1 >> 2 & 0x33333333) + (uVar1 & 0x33333333);
      piVar2 = *(int **)((int)this +
                        (((uVar1 >> 4) + uVar1 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
    }
    uVar3 = (uVar3 - 1) - (uVar3 - 1 >> 1 & 0x55555555);
    uVar3 = (uVar3 >> 2 & 0x33333333) + (uVar3 & 0x33333333);
    uVar3 = (**(code **)(*piVar2 + 8))
                      (param_1,*(undefined4 *)
                                (*(int *)(param_2 + 8) +
                                (((uVar3 >> 4) + uVar3 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4));
    if ((char)uVar3 == '\0') break;
    param_3 = param_3 & param_3 - 1;
  }
  return uVar3 & 0xffffff00;
}

