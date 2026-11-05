/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Verified original body00962210..00962225. Cdecl
   callback(messageKind,triggerRecord,owner): loads owner from stack+0C and forwards firsttwo
   arguments through owner's primaryvtable+5C. MainCamera_Construct supplies01046D00, hence009747F0.
   No byte modifications. */

void __cdecl
CameraController_ForwardTriggerCallback(uint messageKind,void *triggerRecord,int *controller)

{
  (**(code **)(*controller + 0x5c))(messageKind,triggerRecord);
  return;
}

