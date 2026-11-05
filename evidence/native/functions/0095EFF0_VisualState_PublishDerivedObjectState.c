/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. Reads current VisualState+8; absent
   component defaults differ by channel. Combines(mask0x39==0x39) with bit11, bit2 with notbit12,
   bit6 with bit7/global override, bit3,bit14; calls0095E9F0 and posts messages04878BC4 andE128229B.
   Thus wall mask0x8 (bit3) participates in aggregate gating, not every channel. Message
   schemas/downstream renderer consumption remain open. Producer uses owner object GUID+8/+C;
   null-owner path is not safe despite initial component guard. */

void __cdecl VisualState_PublishDerivedObjectState(void *object)

{
  uint uVar1;
  void *pvVar2;
  byte bVar3;
  char local_c4;
  byte local_c0;
  char local_bc;
  byte local_b8;
  byte local_b4;
  byte local_b0 [4];
  undefined4 *local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  uint local_9c [15];
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50 [19];
  
  bVar3 = 1;
  local_bc = '\x01';
  local_c4 = '\0';
  local_c0 = 0;
  local_b4 = 1;
  local_b8 = 1;
  if (object != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(object,DAT_011ea2a8);
    if (pvVar2 != (void *)0x0) {
      uVar1 = *(uint *)((int)pvVar2 + 8);
      bVar3 = (byte)uVar1;
      if (((bVar3 & 0x39) != 0x39) || (local_bc = '\x01', (uVar1 >> 0xb & 1) == 0)) {
        local_bc = '\0';
      }
      if (((uVar1 >> 2 & 1) == 0) || (local_c4 = '\x01', (~(byte)(uVar1 >> 0xc) & 1) == 0)) {
        local_c4 = '\0';
      }
      if (((char)bVar3 < '\0') || (DAT_0117cc4c == '\0')) {
        local_c0 = (byte)(uVar1 >> 6) & 1;
      }
      else {
        local_c0 = 1;
      }
      bVar3 = bVar3 & 1;
      local_b4 = (byte)(uVar1 >> 3) & 1;
      local_b8 = (byte)(uVar1 >> 0xe) & 1;
    }
  }
  local_a8 = *(undefined4 *)((int)object + 8);
  local_a4 = *(undefined4 *)((int)object + 0xc);
  local_b0[0] = 0xc4;
  local_b0[1] = 0x8b;
  local_b0[2] = 0x87;
  local_b0[3] = 4;
  local_ac = (undefined4 *)0x0;
  FUN_0095e9f0(object,&local_a0,local_9c,local_bc,local_c4,local_c0,local_b4,local_b8);
  RenderCommand_EnqueueIfDispatcherExists(local_b0);
  local_58 = *(undefined4 *)((int)object + 8);
  local_54 = *(undefined4 *)((int)object + 0xc);
  local_50[0] = (uint)bVar3;
  local_60[0] = 0x9b;
  local_60[1] = 0x22;
  local_60[2] = 0x28;
  local_60[3] = 0xe1;
  local_5c = (undefined4 *)0x0;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  if (local_ac != (undefined4 *)0x0) {
    (**(code **)*local_ac)(&local_a0);
  }
  return;
}

