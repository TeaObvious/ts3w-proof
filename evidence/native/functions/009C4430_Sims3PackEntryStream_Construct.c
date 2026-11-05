/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX child, four stack args
   entry,parent,payloadBase,mode; RET10. Child position+10=0, absolute
   base+14=entry.offset(+24)+payloadBase, parent+18, length+1C=entry.length(+20). Vtable01050A1C has
   GetAvailable+2C=009C44B0 and Read+30=009C4590. No parent AddRef appears in this body; lifetime
   not established.
   Return ABI: MOV EAX,ECX at009C4434; EAX remains this through RET10. Caller009C48D6 returns that
   constructor result; void inference would falsely create extraout_EAX. */

void * __thiscall
Sims3PackEntryStream_Construct(void *this,void *entry,void *parentStream,uint payloadBase,uint mode)

{
  *(undefined ***)((int)this + 4) = &PTR_FUN_0102bba4;
  *(undefined4 *)((int)this + 8) = 0;
  *(uint *)((int)this + 0xc) = mode;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(void **)((int)this + 0x18) = parentStream;
  *(undefined ***)this = &PTR_FUN_01050a1c;
  *(undefined ***)((int)this + 4) = &PTR_LAB_01050a18;
  *(uint *)((int)this + 0x14) = *(int *)((int)entry + 0x24) + payloadBase;
  *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)((int)entry + 0x20);
  return this;
}

