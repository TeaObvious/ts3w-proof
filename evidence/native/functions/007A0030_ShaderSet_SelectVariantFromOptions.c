/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: given an option list and a material-side packed option array, computes a presence mask
   and evaluates the SSET variant program. Its returned integer is the variant index or -1 failure;
   the decompiler currently declares void, but the caller consumes EAX.
   
   Analyst PC1.67 original contract. Physical EAX returns the signed variant index from79FE00,
   including-1. Shared material route with already-packed option array; EAX is the original signed
   return value. Distinct from name/declaration flora route7A0060. */

int __thiscall ShaderSet_SelectVariantFromOptions(void *this,uint *param_1,int *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = ShaderSet_BuildOptionPresenceMask(this,param_2,param_3);
  iVar2 = ShaderSet_EvaluateVariantProgram(this,param_1,uVar1);
  return iVar2;
}

