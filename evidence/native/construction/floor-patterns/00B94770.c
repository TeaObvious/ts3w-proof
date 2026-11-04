/* Resets the message vtable to base table 00F9B454; if the low flags byte has mask 01h set, returns
   this storage through ADF1A0. RET 4 and EAX is the original pointer; freeing is conditional.
   Analyst-assigned name. */

void * __thiscall DestroyPooledFloorMessage(void *this,byte param_1)

{
  /* 00B94770: Floor message table 01065F8C slot +0 binds here. Atomic release invokes it with argument 1 only on transition to zero; pool return is delegated to ADF1A0. */
  *(undefined ***)this = &PTR_FUN_00f9b454;
  if ((param_1 & 1) != 0) {
    FUN_00adf1a0(this);
  }
  return this;
}
