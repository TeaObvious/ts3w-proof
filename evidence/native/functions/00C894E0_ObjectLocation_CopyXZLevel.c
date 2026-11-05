/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXobjectlocation+threeoutput pointers RET0C. Copies DWORD10/14/18 (lot-local
   floatX,floatZ,signedlevel), no float arithmetic or normalization. CE3809 supplies outputs as
   contiguous12byte location used byD20430/A76AC0. */

void __thiscall
ObjectLocation_CopyXZLevel(void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  *param_1 = *(undefined4 *)((int)this + 0x10);
  *param_2 = *(undefined4 *)((int)this + 0x14);
  *param_3 = *(undefined4 *)((int)this + 0x18);
  return;
}

