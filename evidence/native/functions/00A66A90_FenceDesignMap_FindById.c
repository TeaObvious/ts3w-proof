/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX design map; RET4
   one UInt32 design ID; EAX pointer result. ID0 returns address this+40, not null. Nonzero lookup
   through ID map at+20 returns entry+8 triple pointer, or null on absent key. The map reader
   restores IDs/refcounts and refreshes this default separately. This getter does not validate post
   payloads or create new designs. */

void * __thiscall FenceDesignMap_FindById(void *this,uint designId)

{
  int local_8 [2];
  
  if (designId == 0) {
    return (void *)((int)this + 0x40);
  }
  FUN_00a668d0((void *)((int)this + 0x20),local_8,&designId);
  if (local_8[0] != *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
    return (void *)(local_8[0] + 8);
  }
  return (void *)0x0;
}

