/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. Two binary32 stack inputs minimum,maximum,
   RET8. ECX is overwritten by constant handle beforeNextGlobal and has no inputsemantic; stdcall2
   describes actual ABI. AfterNext, x87 FSUB ST1,ST computesmax-min, FMULP andFADDP evaluate
   sample*(max-min)+min, returnST0 withoutfinalfloatstore. No bounds reorder, clamp, finite check or
   FMA. Ambientprecision/controlword and exactportableemulation remain separate. */

float10 TreeRandom_UniformGlobal(float minimum,float maximum)

{
  float10 fVar1;
  
  fVar1 = TreeRandom_NextGlobal();
  return fVar1 * ((float10)maximum - (float10)minimum) + (float10)minimum;
}

