/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState producer contract. Analyst-assigned command adapter; ECX component,
   ONE physical UNUSED event payload word, RET4, always AL1. If UInt32component14 !=0, FIRST
   invoke95E350 to enqueue geometry-state message. Then flag8000 invokes unexpanded95F540.
   Flags1E0000 invoke previously reviewed snow-disable publisher95E690(component,false). Finally if
   owner component-mask11E9FC0 present AND componentflags mask00000001 clear, enqueue
   commandE128229B with owner GUID+8/+C and payloadDWORD0, then optional temporary destructor. Zero
   geometry state SKIPS only this initialization command; it is not a universal ban on
   storing/selecting zero. No completion/readiness or failure result is observed. Other event
   producers, child effects and execution thread remain open. */

bool __thiscall VisualState_PublishSelectedObjectCommands(void *this,void *unusedEventPayload)

{
  int iVar1;
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50 [19];
  
                    /* ECX component; one unused stack payload word is callee-popped RET4. AL1 only;
                       initial nonzero state enqueues a command. */
  if (*(int *)((int)this + 0x14) != 0) {
    VisualState_EnqueueGeometryStateByGuid(this);
  }
  if ((*(uint *)((int)this + 8) >> 0xf & 1) != 0) {
    FUN_0095f540((int)this);
  }
  if ((*(uint *)((int)this + 8) & 0x1e0000) != 0) {
    Seasons_PublishObjectSnowDisableState(this,'\0');
  }
  iVar1 = *(int *)((int)this + 4);
  if (((*(uint *)(iVar1 + 0x2c) & DAT_011e9fc0) != 0) && ((*(byte *)((int)this + 8) & 1) == 0)) {
    local_58 = *(undefined4 *)(iVar1 + 8);
    local_54 = *(undefined4 *)(iVar1 + 0xc);
    local_60[0] = 0x9b;
    local_60[1] = 0x22;
    local_60[2] = 0x28;
    local_60[3] = 0xe1;
    local_5c = (undefined4 *)0x0;
    local_50[0] = 0;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(local_50);
    }
  }
  return true;
}

