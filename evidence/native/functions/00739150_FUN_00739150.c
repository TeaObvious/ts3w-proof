/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void * __thiscall FUN_00739150(void *this,short *param_1,short *param_2,short *param_3)

{
  undefined4 *this_00;
  
  FUN_0059f4c0(this,0x175dcbb,0);
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_00fe2ae4;
  this_00 = (undefined4 *)((int)this + 0x18);
  *(undefined ***)this = &PTR_FUN_00fffb80;
  *(undefined ***)((int)this + 0x10) = &PTR_FUN_00fffb7c;
  *(undefined4 *)((int)this + 0x14) = 5;
  FUN_00736de0(this_00);
  FUN_00738230((int)this);
  FUN_00735ef0(this_00,param_1,param_2);
  if (param_3 != (short *)0x0) {
    FUN_00735b50(this_00,param_3);
  }
  return this;
}

