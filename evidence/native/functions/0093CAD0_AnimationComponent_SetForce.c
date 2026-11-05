/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Stores force byte at full
   component+0x38, emits event id0x0e092878 with owner ObjectGuid and normalized bool force. Flags
   event dispatcher/consumer beyond this sender remain separate contract. */

void __thiscall AnimationComponent_SetForce(void *this,char param_1)

{
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50 [19];
  
  *(char *)((int)this + 0x38) = param_1;
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_50[0] = (uint)(param_1 != '\0');
  local_60 = 0xe092878;
  local_5c = (undefined4 *)0x0;
  FUN_00693380(&local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

