/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: converts a shader name to its 32-bit hash and forwards hash, mode and fallback flag to
   ShaderLibrary_FindDefinition. The decompiler void return is suspect because callers consume EAX;
   check original calling convention before assigning a return type. */

void __thiscall ShaderLibrary_FindByName(void *this,char *param_1,undefined4 param_2,char param_3)

{
  uint uVar1;
  
  uVar1 = HashLowercasedCStringFNV1(param_1);
  ShaderLibrary_FindDefinition(this,uVar1,param_2,param_3);
  return;
}

