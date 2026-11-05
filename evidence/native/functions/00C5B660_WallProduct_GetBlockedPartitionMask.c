/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: cdecl one resource-key pointer stack word, plain RET, full EAX UInt32. C8FA20
   looks up the parsed catalog definition; read native object field +98, or exact default7 when
   absent. D46E60 iterates type bits0..4 to test an existing coincident partition, emitting79. The
   native object offset is not a fixed serialized CWST byte offset. */

undefined4 __cdecl WallProduct_GetBlockedPartitionMask(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 != 0) {
    return *(undefined4 *)(iVar1 + 0x98);
  }
  return 7;
}

