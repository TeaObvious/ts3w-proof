/* Exchanges process dispatcher pointer 011B2378 and returns the previous pointer in EAX. Plain RET,
   one caller-cleaned stack word; no reference increment, lock or destruction in this leaf.
   Analyst-assigned name. */

undefined4 __cdecl ExchangeMessageDispatcher(undefined4 param_1)

{
  undefined4 uVar1;

  /* 0044C504: Read old global pointer before storing the requested replacement. A null replacement clears the same pointer read by 44C4F0; this operation does not own either instance. */
  uVar1 = DAT_011b2378;
  DAT_011b2378 = param_1;
  return uVar1;
}
