/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX resource-reference context and two stack pointers, UInt32 handle and16-byte key
   output, RET8. Queries handle-to-key map at context+20 using the full UInt32 identity, including
   zero. Hit copies four DWORD key lanes from node+8/+C/+10/+14 and returns AL1. Miss returns AL0
   and leaves the output key unchanged. Upper EAX is residual data, not a full-width Boolean.
   Context-width dispatch7D7470 invokes this on its nonzero-width branch and does not consume the
   resolver result. No map mutation or stream-status update occurs in this body. */

uint __thiscall ResourceReferences_ResolveWideHandle(void *this,uint *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  uint local_8 [2];
  
  FUN_009d6c30((void *)((int)this + 0x20),local_8,param_1);
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

