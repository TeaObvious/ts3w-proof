/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Reads unsigned timeout word:FFFFFFFF is passed directly as
   infinite milliseconds;0 is poll, other values are absolute GetTickCount deadline converted to
   nonnegative remaining duration. WaitForSingleObject consumes wrapper handle+0; mode byte+c
   selects counted wait behavior, with InterlockedDecrement at+4 and rollback on failed wait. Result
   uses raw DWORD sentinelFFFFFFFE/FFFFFFFF for failure/timeout on applicable paths. JobManager
   passes wordFFFFFFFF at00fda7ac and ignores result, rechecking job state. ECX wrapper, one
   stackword, RET4. */

uint __thiscall SyncEvent_WaitUntilDeadline(void *this,void *timeoutWord)

{
  DWORD DVar1;
  LONG LVar2;
  uint uVar3;
  
  DVar1 = *(DWORD *)timeoutWord;
  if ((DVar1 != 0xffffffff) && (DVar1 != 0)) {
    DVar1 = GetTickCount();
    if (DVar1 < *(uint *)timeoutWord) {
      DVar1 = *(uint *)timeoutWord - DVar1;
    }
    else {
      DVar1 = 0;
    }
  }
  if (*(char *)((int)this + 0xc) == '\0') {
    DVar1 = WaitForSingleObject(*(HANDLE *)this,DVar1);
    if (DVar1 != 0) {
      return (DVar1 != 0x102) - 2;
    }
    uVar3 = InterlockedDecrement((LONG *)((int)this + 4));
    return uVar3;
  }
  LVar2 = InterlockedDecrement((LONG *)((int)this + 4));
  if ((LVar2 < 0) && (DVar1 = WaitForSingleObject(*(HANDLE *)this,DVar1), DVar1 != 0)) {
    FUN_004e2b50(this,1);
    return 0xfffffffe;
  }
  uVar3 = *(uint *)((int)this + 4);
  return uVar3 & ((int)uVar3 < 1) - 1;
}

