/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX Model component; UInt32 materialHash, byte routeWord in
   four-byte slot, byte force in four-byte slot, RET0C, void. Equal hash skips unless force nonzero.
   Stores Model+4C BEFORE enqueue. Message0488D99C is
   opcode,dtor,GUIDlow,GUIDhigh,hash,zero-extended route byte. No geometry hash write, model key
   replacement, time conversion or queue-success status. Optional temporary payload destructor
   receives hash storage. Route0 means immediate scene material path; route1 may store a deferred
   record. Other callers can force replay. */

void __thiscall
ModelComponent_SetMaterialHash(void *this,uint materialHash,uchar routeWord,uchar force)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  uint local_4c;
  
  if ((materialHash != *(uint *)((int)this + 0x4c)) || (force != '\0')) {
                    /* Store material hash before enqueue; this is Model+4C, not geometry state. */
    *(uint *)((int)this + 0x4c) = materialHash;
    local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_4c = (uint)routeWord;
    local_60[0] = 0x9c;
    local_60[1] = 0xd9;
    local_60[2] = 0x88;
    local_60[3] = 4;
    local_5c = (undefined4 *)0x0;
    local_50 = materialHash;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
  return;
}

