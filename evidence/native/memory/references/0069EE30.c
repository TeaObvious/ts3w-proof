/* Atomically subtracts 1 from object+4 and returns the new count. A new zero count invokes current
   virtual +0 with argument 1. There is no refcount-underflow guard; the object pointer is
   dereferenced before the later null test. Analyst-assigned name. */

int __fastcall ReleaseAtomicReference(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;

  /* 0069EE30: Payload table 01065F8C slot +8 binds here. Balanced queued/local-record references must be proved separately; releasing a zero count wraps instead of safely destroying. */
  piVar1 = param_1 + 1;
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if ((iVar2 + -1 == 0) && (param_1 != (undefined4 *)0x0)) {
    (**(code **)*param_1)(1);
  }
  return iVar2 + -1;
}
