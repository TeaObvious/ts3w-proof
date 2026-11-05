/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: cdecl one16byte resource-key pointer, plain RET, full EAX enum word. Read parsed
   catalog field+8C. Missing definition: key type0418FE2A returns1; type9151E6BC returns0; all other
   key types returnFFFFFFFF through SUB/NEG/SBB. Do not interpret the fallback as Boolean or infer
   this partition type from wallType+88. D46E60 consumes this value separately from the two blocked
   masks. */

int __cdecl WallProduct_GetPartitionType(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 != 0) {
    return *(int *)(iVar1 + 0x8c);
  }
  if (param_1[2] == 0x418fe2a) {
    return 1;
  }
  return -(uint)(param_1[2] != 0x9151e6bc);
}

