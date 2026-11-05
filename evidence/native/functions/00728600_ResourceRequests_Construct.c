/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX allocation3A8, no stack args, returns
   receiver. Installs vtableFFE3F0; initializes queue4, lock40, cache/hash region80..37B, free
   requests398 with requestedcount1C6. Constructor string labels ResourceSystem/AsyncLoader/Requests
   etc support role, not scheduling guarantees. Raw+34 tabletarget729D80,+40 target728FD0; full
   later service path reviewed separately. Existing allocation helpers may display narrowed argument
   lists despite six pushed allocator operands. */

void * __thiscall ResourceRequests_Construct(void *this)

{
  int iVar1;
  
  *(undefined ***)this = &PTR_FUN_00ffe3f0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(char **)((int)this + 0x2c) = "ResourceSystem/AsyncLoader/mIOPendingQueue";
  FUN_00727750((undefined4 *)((int)this + 4),0);
  *(undefined4 *)((int)this + 0x38) = 0x1400000;
  FUN_004e1cf0((void *)((int)this + 0x40),(char *)0x0,'\x01');
  *(undefined4 *)((int)this + 0x380) = 0;
  memset((void *)((int)this + 0x80),0,0x2fc);
  *(undefined4 *)((int)this + 0x37c) = 0xffffffff;
  iVar1 = (int)this + 0x38c;
  *(char **)((int)this + 0x394) = "ResourceSystem/AsyncLoader/GenericClientList";
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x390) = iVar1;
  *(undefined4 *)((int)this + 0x398) = 0;
  *(undefined4 *)((int)this + 0x39c) = 0;
  *(char **)((int)this + 0x3a0) = "ResourceSystem/AsyncLoader/Requests";
  *(undefined4 *)((int)this + 0x3a4) = 0x1c6;
  return this;
}

