/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; Button interface complete+250, thiscall one stateDWORD, RET4, no
   specified return. Compare current [interface-1D8]=complete+78 with supplied word; unchanged
   bypasses all work. On change invoke IWindow complete+4 virtual5C (concrete513E10) with supplied
   state. After that synchronous callback chain, reread dirty latch[interface+4]=complete+254; if
   clear, store1 BEFORE calling IWindow virtual74(mask8,value1). The helper does not itself store
   complete+78 and does not assume callee/event callbacks leave it or latch unchanged. Concrete
   state publication and notification are separately annotated at513E10. */

void __thiscall UiButton_ReplaceStateAndMarkDirty(void *this,uint newState)

{
  code *pcVar1;
  
  if (*(uint *)((int)this + -0x1d8) != newState) {
    (**(code **)(*(int *)((int)this + -0x24c) + 0x5c))(newState);
    if (*(char *)((int)this + 4) == '\0') {
      pcVar1 = *(code **)(*(int *)((int)this + -0x24c) + 0x74);
      *(undefined1 *)((int)this + 4) = 1;
      (*pcVar1)(8,1);
    }
  }
  return;
}

