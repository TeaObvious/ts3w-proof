/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX component; ONE physical unused
   activation word RET4; local return AL1. Calls QueueResourceKey with explicit0 then replays
   dimmer+18 only when UCOMISS differs from float1 (UNORDERED NaN also queues). OpcodeB361CC42
   carries header16+float4. Replays RGB3+1C/+20/+24 only if each COMISS value>=0 ordered (negative
   or NaN skips, negative0 accepted); opcode966EC80A carries header16+RGB12. Full UInt64GUID always
   preserved. Optional temporary destructors follow enqueue; AL1 does not acknowledge
   renderer/resource success. No finite/upper clamp here. */

bool __thiscall
LightingComponent_QueueResourceAndReplayControls(void *this,uint unusedActivationWord)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  float local_50;
  undefined4 uStack_4c;
  float fStack_48;
  
  LightingComponent_QueueResourceKey(this,0);
  local_50 = *(float *)((int)this + 0x18);
                    /* LAHF/TEST AH44/JNP skips ordered equality to1; unordered NaN follows enqueue
                       path. */
  if (local_50 != 1.0) {
    local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_60[0] = 0x42;
    local_60[1] = 0xcc;
    local_60[2] = 0x61;
    local_60[3] = 0xb3;
    local_5c = (undefined4 *)0x0;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
                    /* COMISS/JC rejects negative OR unordered NaN; negative zero passes. */
  if (((0.0 <= *(float *)((int)this + 0x1c)) && (0.0 <= *(float *)((int)this + 0x20))) &&
     (fStack_48 = *(float *)((int)this + 0x24), 0.0 <= fStack_48)) {
    local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_50 = *(float *)((int)this + 0x1c);
    uStack_4c = *(undefined4 *)((int)this + 0x20);
    local_60[0] = 10;
    local_60[1] = 200;
    local_60[2] = 0x6e;
    local_60[3] = 0x96;
    local_5c = (undefined4 *)0x0;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
  return true;
}

