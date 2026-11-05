/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: initializes a 0x48-byte option buffer, appends options from a vertex-declaration/context
   structure, computes the SSET presence mask and evaluates the same variant program. The caller
   consumes EAX as the signed variant index.
   
   Analyst PC1.67 original contract. ECX SSET, declaration pointer plus hash-array pointer/count,
   RET0C. Physical EAX is the signed variant index returned by79FE00, including-1. Initialize18
   UInt32 packed-option buffer, append declaration records79FD20, build presence mask79FFB0 and
   evaluate79FE00. Original tree64-word and billboard47-word programs contain no opcode7 packed
   membership test, so declaration packing does not affect these two selector results. */

int __thiscall
ShaderSet_SelectVariantForDeclaration(void *this,void *vertexDeclaration,int *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  uint local_48;
  undefined1 local_44 [68];
  
  local_48 = 0;
  memset(local_44,0,0x44);
  ShaderSet_AppendVertexDeclarationOptions(&local_48,vertexDeclaration);
  uVar1 = ShaderSet_BuildOptionPresenceMask(this,param_2,param_3);
  iVar2 = ShaderSet_EvaluateVariantProgram(this,&local_48,uVar1);
  return iVar2;
}

