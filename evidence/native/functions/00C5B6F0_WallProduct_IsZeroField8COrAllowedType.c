/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Plain RET; C8FA20(global011EE034,key,1). Nonnull accepts field+0x8C==0.
   Null lookup uses key third UInt32:0x0418FE2A rejects,0x9151E6BC accepts,others reject. Boolean
   contract is AL only; do not treat upper EAX as Boolean. Full serialized partition-domain join
   remains open. Descriptive analyst role, not a recovered original symbol. */

undefined4 __cdecl WallProduct_IsZeroField8COrAllowedType(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 != 0) {
    return CONCAT31((int3)((uint)*(int *)(iVar1 + 0x8c) >> 8),*(int *)(iVar1 + 0x8c) == 0);
  }
  if (param_1[2] == 0x418fe2a) {
    return 0;
  }
  iVar1 = -(uint)(param_1[2] != 0x9151e6bc);
  return CONCAT31((int3)((uint)iVar1 >> 8),iVar1 == 0);
}

