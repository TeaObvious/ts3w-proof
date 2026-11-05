/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX resource-reference context and two stack pointers, UInt16 serialized handle
   and16-byte key output, RET8. MOVZX admits every UInt16 identity including zero. Queries
   handle-to-key map at context+20. Hit copies four DWORD key lanes from node+8/+C/+10/+14 to output
   and returns AL1, including authored all-zero keys. Miss returns AL0 and leaves output unchanged.
   Upper EAX contains residual key/sentinel bits, not a full-width Boolean. Context-width
   reader7D7470 invokes this on its narrow branch and ignores the resolver result; B701E0
   initializes its row key once before the loop. No row-index fallback, zero-handle exclusion, map
   mutation or stream-status update occurs in this body. */

uint __thiscall
ResourceReferences_ResolveNarrowHandle(void *this,ushort *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  uint local_8 [2];
  
  param_1 = (ushort *)(uint)*param_1;
  FUN_009d6c30((void *)((int)this + 0x20),local_8,(uint *)&param_1);
  if (local_8[0] != *(uint *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
    *param_2 = *(undefined4 *)(local_8[0] + 8);
    param_2[1] = *(undefined4 *)(local_8[0] + 0xc);
    param_2[2] = *(undefined4 *)(local_8[0] + 0x10);
    uVar1 = *(undefined4 *)(local_8[0] + 0x14);
    param_2[3] = uVar1;
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return local_8[0] & 0xffffff00;
}

