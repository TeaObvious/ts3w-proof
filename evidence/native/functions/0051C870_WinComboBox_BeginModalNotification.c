/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original combo-control comparison; no execution. ECX control subobject plus one
   stack word; RET4. When not already open, stores the modal window, sets the open byte before
   event4F5527E9 with Arg2=1 and supplies command-ID when nonzero, otherwise control-ID. Event
   dispatch and enclosing modal service remain separate. Current host AuthoredControlId-only event
   adaptation is a documented difference. */

void __thiscall WinComboBox_BeginModalNotification(void *this,undefined4 param_1)

{
  undefined1 local_1c [8];
  undefined4 local_14;
  int local_10;
  undefined4 local_c;
  
  if (*(char *)((int)this + 0x3d) == '\0') {
    *(undefined4 *)((int)this + 0xac) = param_1;
    local_10 = *(int *)((int)this + -0x218);
    *(undefined1 *)((int)this + 0x3d) = 1;
    local_14 = 0x4f5527e9;
    if (local_10 == 0) {
      local_10 = *(int *)((int)this + -0x21c);
    }
    local_c = 1;
    (**(code **)(*(int *)((int)this + -0x250) + 0x118))(local_1c);
  }
  return;
}

