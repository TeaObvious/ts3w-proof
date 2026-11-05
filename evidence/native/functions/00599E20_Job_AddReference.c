/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Public handle-8 maps to atomic refcount internal+30; LOCK
   XADD+1 returns new count. No null safety or overflow guard. Used by scheduler/cancellation; does
   not retain context data pointed to by callback userData. */

int __thiscall Job_AddReference(void *this)

{
  int *piVar1;
  int iVar2;
  
  if (this == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)this + -8;
  }
  piVar1 = (int *)(iVar2 + 0x30);
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  return iVar2 + 1;
}

