/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): ECX vector plus one 12-byte
   input record pointer, RET4; void. If capacity available advance end by12, copy flag byte and
   UInt32 event ID and payload pointer, invoke payload virtual +4 when nonnull. If capacity
   exhausted call existing C51090 insertion/growth helper. The paired virtual +4/+8 call pattern
   indicates retention/release-like interface roles, but concrete virtual implementations remain
   payload-defined; exact helper allocation/failure semantics remain separate. Direct caller C52590
   queues at receiver+30C then releases its local payload virtual +8. This is retained event
   transport, not vertex/channel copying or inferred clone of arbitrary payload data. */

void __thiscall ConstructionEventQueue_AppendRetainedRecord(void *this,void *record12)

{
  undefined1 *puVar1;
  int *piVar2;
  
  puVar1 = *(undefined1 **)((int)this + 4);
  if (puVar1 < *(undefined1 **)((int)this + 8)) {
    *(undefined1 **)((int)this + 4) = puVar1 + 0xc;
    if (puVar1 != (undefined1 *)0x0) {
      *puVar1 = *(undefined1 *)record12;
      *(undefined4 *)(puVar1 + 4) = *(undefined4 *)((int)record12 + 4);
      piVar2 = *(int **)((int)record12 + 8);
      *(int **)(puVar1 + 8) = piVar2;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
        return;
      }
    }
  }
  else {
    FUN_00c51090(this,puVar1,record12);
  }
  return;
}

