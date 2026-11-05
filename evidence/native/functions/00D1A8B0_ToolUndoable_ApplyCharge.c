/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallFloat32amountRET4void. If free14false andtoolworldCnonnull, callsD39580
   ACTUALfractionalhouseholdcharge; otherwiseunchanged. Thus samplecharge is not merelyanundo-entry
   amount orlocalreservation. Managedhouseholdpolicyremains in originalcallbacks,notengine
   reimplementation. */

void __thiscall ToolUndoable_ApplyCharge(void *this,float amount)

{
  if ((*(char *)((int)this + 0x14) == '\0') && (*(void **)((int)this + 0xc) != (void *)0x0)) {
    ToolWorld_ApplyFractionalCharge(*(void **)((int)this + 0xc),amount);
  }
  return;
}

