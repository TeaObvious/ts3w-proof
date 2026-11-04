/* Writes one 8-byte event-ID/payload record, retains nonnull payload through virtual +4 and returns
   the caller-owned destination in EAX. No allocation or queue ownership transfer occurs in this
   constructor. Analyst-assigned name. */

void * __thiscall InitializeRetainedMessageRecord(void *this,undefined4 param_1,int *param_2)

{
  /* 00C1EC20: Record layout is UInt32 event ID at +0 and payload pointer at +4; this is not the separate 12-byte graph event record. */
  *(undefined4 *)this = param_1;
  *(int **)((int)this + 4) = param_2;
  if (param_2 != (int *)0x0) {
    (**(code **)(*param_2 + 4))();
  }
  return this;
}
