/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Physical call correction: ordinary slot-name frontend at76E99B calls959E90 (not959F10 bone frontend), then958D90. Name/offset/occupancy are separate physical words omitted/conflated by inferred C. This bounded864byte canonical window is retained; fresh ownedbody completeness is not claimed. */

/* Verified PC 1.67 registration table at 0x011620d0 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_AttachToSlotWithOffsetImpl [assembly=ScriptCore token=0x06000D3B;
   objectId: System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot:
   System.Boolean, forceBindPose: System.Boolean, trans: Sims3.SimIFace.Vector3&, axis:
   Sims3.SimIFace.Vector3&, angle: System.Single; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore.Slots::Slots_AttachToSlotWithOffsetImpl(void)

{
  int iVar1;
  void *this;
  void *this_00;
  void *pvVar2;
  float *in_stack_00000014;
  char in_stack_0000001c;
  float in_stack_00000028;
  
  fsin((float10)in_stack_00000028);
  fcos((float10)in_stack_00000028);
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_00934260(this,DAT_011ea158);
    if (this_00 != (void *)0x0) {
      pvVar2 = (void *)FUN_00937f80(iVar1);
      if (pvVar2 == (void *)0x0) {
        return false;
      }
      if (in_stack_0000001c != '\0') {
        iVar1 = FUN_00934260(this,DAT_011dd484);
        if (iVar1 != 0) {
          FUN_0093cbf0(iVar1);
        }
      }
      iVar1 = FUN_00959e90(this_00,pvVar2,in_stack_00000014,-0x50);
      return iVar1 == 0;
    }
  }
  return false;
}

