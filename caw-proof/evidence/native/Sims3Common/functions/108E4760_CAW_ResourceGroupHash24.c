/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Ordinary resource-group text passes through the
   original32-bit hash and its24-bit folding rule; explicit recognized numeric groups take a
   separate path. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

uint __cdecl CAW_ResourceGroupHash24(wint_t *param_1,int param_2)

{
  uint uVar1;
  
  uVar1 = CAW_ResourceNameHash32(param_1,param_2);
  return uVar1 & 0xffffff ^ uVar1 >> 0x18;
}

