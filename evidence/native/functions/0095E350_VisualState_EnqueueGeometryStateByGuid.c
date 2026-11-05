/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState producer contract. Analyst-assigned name; ECX VisualState component,
   NO stack arguments, void plainRET. Construct stack command tag04D18170, temporary destructor
   pointer0, GUID UInt64 from owner(component4)+8/+C and UInt32geometryState from component14 at
   message10. Invoke reviewed RenderCommand_EnqueueIfDispatcherExists693380, then optional temporary
   destructor. This does not directly mutate SceneModel or observe renderer application/resource
   residency/readiness. Delivery/lifetime/thread and absence-of-dispatcher handling are separate
   queue contracts. */

void __thiscall VisualState_EnqueueGeometryStateByGuid(void *this)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50 [19];
  
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_50[0] = *(undefined4 *)((int)this + 0x14);
  local_60[0] = 0x70;
  local_60[1] = 0x81;
  local_60[2] = 0xd1;
  local_60[3] = 4;
  local_5c = (undefined4 *)0x0;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

