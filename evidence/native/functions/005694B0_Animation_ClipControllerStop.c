/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. If tail-flush byte+0x5f8 and
   resource+0x5d0 are nonzero, scans through duration+1 with restricted-events=true; always invokes
   base Stop completion afterward. Started is not required for base completion. */

void __fastcall Animation_ClipControllerStop(undefined4 *param_1)

{
  if ((*(char *)(param_1 + 0x17e) != '\0') && (param_1[0x174] != 0)) {
    AnimationClipController_DispatchDueEvents(param_1,(float)param_1[0x17a] + DAT_00f998f8,'\x01');
  }
  Animation_SendCompletedFromStop(param_1);
  return;
}

