/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 instructions. ECX walker, one physical Boolean word read as low
   byte, RET4. OR incoming dirty with existing walker byte+C, then OR resulting byte with
   driver+146. If driver dirty and manager011D9D40 exists, invoke007FCF80(manager,driver,false),
   which coalesces current revisit/pending driver identities. These stores are ordinary byte writes,
   not locks/atomics or concurrent queue proof. Parent dirty state is not cleared by a false
   incoming value. No immediate graph execution. */

void __thiscall SacsWalker_PropagateDirtyState(void *this,char param_1)

{
  int iVar1;
  char cVar2;
  
  if ((*(char *)((int)this + 0xc) == '\0') && (param_1 == '\0')) {
    cVar2 = '\0';
  }
  else {
    cVar2 = '\x01';
  }
  *(char *)((int)this + 0xc) = cVar2;
  iVar1 = *(int *)((int)this + 4);
  if ((*(char *)(iVar1 + 0x146) == '\0') && (cVar2 == '\0')) {
    cVar2 = '\0';
  }
  else {
    cVar2 = '\x01';
  }
  *(char *)(iVar1 + 0x146) = cVar2;
  if ((cVar2 != '\0') && (DAT_011d9d40 != (void *)0x0)) {
    SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar1,'\0');
  }
  return;
}

