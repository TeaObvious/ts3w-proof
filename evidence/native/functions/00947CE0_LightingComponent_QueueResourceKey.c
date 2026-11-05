/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX component; ONE physical stack word
   UNUSED, RET4, local return AL1. Enqueues packet opcode1361A133, destructor word0, owner full
   UInt64GUID from owner+8/+C, key16 component+8..14. Packet byte layout
   opcode+0,destructor+4,GUID+8,key+10, total32 bytes. Invokes optional packet destructor on payload
   afterwards; ignores queue success/dispatcher absence. This is a resource-key command producer,
   not complete source initialization or LITE load. */

bool __thiscall LightingComponent_QueueResourceKey(void *this,uint unusedSourceWord)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_4c = *(undefined4 *)((int)this + 0xc);
  local_50 = *(undefined4 *)((int)this + 8);
  local_48 = *(undefined4 *)((int)this + 0x10);
  local_44 = *(undefined4 *)((int)this + 0x14);
  local_60[0] = 0x33;
  local_60[1] = 0xa1;
  local_60[2] = 0x61;
  local_60[3] = 0x13;
  local_5c = (undefined4 *)0x0;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return true;
}

