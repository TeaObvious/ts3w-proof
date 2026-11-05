/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. Stores force byte at full
   component+0x38, emits event id0x0e092878 with owner ObjectGuid and normalized bool force. Flags
   event dispatcher/consumer beyond this sender remain separate contract. */

void __thiscall AnimationComponent_SetForce(void *this,char param_1)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50 [19];
  
  *(char *)((int)this + 0x38) = param_1;
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_50[0] = (uint)(param_1 != '\0');
  local_60[0] = 0x78;
  local_60[1] = 0x28;
  local_60[2] = 9;
  local_60[3] = 0xe;
  local_5c = (undefined4 *)0x0;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

