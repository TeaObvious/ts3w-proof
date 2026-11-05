/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECXstate, one UInt32seed word, RET4.
   Only0/FFFFFFFF replaced by lowRDTSC; otherwise copy all bits. No draw. A process timestamp seed
   in project is an explicit entropy adaptation. */

void __thiscall TreeVariation_Reseed(void *this,int param_1)

{
  undefined8 uVar1;
  
  if ((param_1 == -1) || (param_1 == 0)) {
    uVar1 = rdtsc();
    param_1 = (int)uVar1;
  }
  *(int *)this = param_1;
  return;
}

