/* Atomically adds 1 to the DWORD at object+4 and returns the incremented value. Only the counter
   update is synchronized; no whole-object lifetime or state lock is implied. Analyst-assigned name.
    */

int __fastcall AddAtomicReference(int param_1)

{
  int iVar1;
  int *piVar2;

  /* 00EC1C10: Payload table 01065F8C slot +4 binds here. Starting floor-message count is 0; ordinary enqueue uses this retain before later delivery/release. */
  piVar2 = (int *)(param_1 + 4);
  LOCK();
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 1;
  UNLOCK();
  return iVar1 + 1;
}
