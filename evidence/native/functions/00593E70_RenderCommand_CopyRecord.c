/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=destination command, source pointer; RET 4, returns
   destination in EAX. Copies the 16-byte header. Nonnull metadata invokes virtual+4(metadata,
   dest+10, source+10); NULL metadata copies 16 DWORDs (64 payload bytes) with REP MOVSD. Painting
   metadata 117C9AC/vtable1045AF4 selects 95F680, which copies 24 bytes, including one DWORD beyond
   the initialized key16+stage4. Remaining payload and padding are not defined by that callback.
   This is a memory record, not a 20-byte serialized wire contract. */

void * __thiscall RenderCommand_CopyRecord(void *this,byte *sourceCommand)

{
  int *arg0;
  int iVar1;
  byte *pbVar2;
  undefined4 *puVar3;
  
  *(undefined4 *)this = *(undefined4 *)sourceCommand;
  *(undefined4 *)((int)this + 4) = *(undefined4 *)(sourceCommand + 4);
  *(undefined4 *)((int)this + 8) = *(undefined4 *)(sourceCommand + 8);
  arg0 = *(int **)((int)this + 4);
  *(undefined4 *)((int)this + 0xc) = *(undefined4 *)(sourceCommand + 0xc);
  if (arg0 != (int *)0x0) {
    (**(code **)(*arg0 + 4))(arg0,(byte *)((int)this + 0x10),sourceCommand + 0x10);
    return this;
  }
  pbVar2 = sourceCommand + 0x10;
  puVar3 = (undefined4 *)((int)this + 0x10);
  for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = *(undefined4 *)pbVar2;
    pbVar2 = pbVar2 + 4;
    puVar3 = puVar3 + 1;
  }
  return this;
}

