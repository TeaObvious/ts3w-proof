/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Primary gameplay-camera vtable 01046D00 slot+44. Calls rotation-drag
   transition on controller+40, then input-service capture(enable,enable). Both script SetRotating
   and physical trigger02541005 reach the same drag/capture state transitions. */

void __thiscall MainCamera_SetRotatingAndCapture(void *this,char rotating)

{
  CameraInput_SetRotationDrag((void *)((int)this + 0x40),rotating);
  if (rotating != '\0') {
    InputService_SetMouseCapture('\x01','\x01');
    return;
  }
  InputService_SetMouseCapture('\0','\0');
  return;
}

