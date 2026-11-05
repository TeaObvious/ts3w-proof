/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Completed adapter forwards controller identifier/context
   to 0x00805A10. It can run before Started during queue removal. Local source: the reviewed
   original reference TS3W.exe PC1.67 identity recorded centrally
   
   Analyst note (PC1.67 SACS migration contract): ECX listener; physical notification/context stack
   words follow original RET cleanup. Loads controller identity through *notification+20 and context
   from notification+4, forwards both to00805A10; no independent completion lifetime policy.
   Callback can be delivered by controller removal; current projected notification carries only its
   recorded identity. */

void __thiscall SacsListener_ControllerCompletedAdapter(void *this,int *param_1)

{
  SacsListener_RemoveControllerRegistration(this,*(int *)(*param_1 + 0x20),param_1[1]);
  return;
}

