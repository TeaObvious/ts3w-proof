/* Builds a 20-byte listener record and passes it with the event ID to virtual +44. Nonnull listener
   required. The low-byte retain flag controls optional listener virtual +8 when dispatcher +B4 is
   enabled. Analyst-assigned name. */

void __thiscall
RegisterMessageListener(void *this,int *param_1,undefined4 param_2,char param_3,undefined4 param_4)

{
  int *local_14;
  undefined4 local_10;
  char local_c;
  undefined4 local_8;
  undefined4 local_4;

  if (param_1 != (int *)0x0) {
    local_10 = param_4;
    local_14 = param_1;
    local_c = param_3;
    local_8 = 0;
    local_4 = 0;
    /* 0044C674: AA0640 supplies retain flag 0, so its floor listener does not acquire a reference in this wrapper, even though the dispatcher defaults +B4=1. */
    if ((*(char *)((int)this + 0xb4) != '\0') && (param_3 != '\0')) {
      (**(code **)(*param_1 + 8))();
    }
    /* 0044C683: Concrete dispatcher vtable 00FA2B00 slot +44 is 44D070. The record stores the listener pointer; actual ID-map insertion and ordering are in that body. */
    (**(code **)(*(int *)this + 0x44))(&local_14,param_2);
  }
  return;
}
