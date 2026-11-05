/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Rotation mask is bit2 at input+4E0. BOTH enabling and disabling copy
   current mouse+500 to anchor+4F0 and previous+510 before setting/clearing bit2. This function does
   not clear camera yaw or angular velocity. Pan uses separate mask4. */

void __thiscall CameraInput_SetRotationDrag(void *this,char rotating)

{
  *(undefined4 *)((int)this + 0x510) = *(undefined4 *)((int)this + 0x500);
  *(undefined4 *)((int)this + 0x514) = *(undefined4 *)((int)this + 0x504);
  *(undefined4 *)((int)this + 0x518) = *(undefined4 *)((int)this + 0x508);
  *(undefined4 *)((int)this + 0x51c) = *(undefined4 *)((int)this + 0x50c);
  *(undefined4 *)((int)this + 0x4f0) = *(undefined4 *)((int)this + 0x500);
  *(undefined4 *)((int)this + 0x4f4) = *(undefined4 *)((int)this + 0x504);
  *(undefined4 *)((int)this + 0x4f8) = *(undefined4 *)((int)this + 0x508);
  *(undefined4 *)((int)this + 0x4fc) = *(undefined4 *)((int)this + 0x50c);
  if (rotating != '\0') {
    *(byte *)((int)this + 0x4e0) = *(byte *)((int)this + 0x4e0) | 2;
    return;
  }
  *(byte *)((int)this + 0x4e0) = *(byte *)((int)this + 0x4e0) & 0xfd;
  return;
}

