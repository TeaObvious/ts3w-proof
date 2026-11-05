/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, pristine PC1.67 instructions. ECX points at event-pointer vector, EAX signed event
   index, plain RET. Cached index+10: -2 means uncomputed; first computation writes -1 and scans
   every pointer in [start,end), skipping null entries, retaining the LAST ordinal whose event
   dword+1C has bit4. Other bits do not suppress bit4. Empty/no qualifying rows returns -1. Later
   calls return cached value without rescanning; invalidation belongs to producers. Controller
   BuildEventPayload00568D40 and Update00569250 compare this index <= last processed cursor using
   signed CMP/SETLE, null clip reports complete. Managed next-event cursor > last required ordinal
   is the equivalent cursor convention, not a demand to wait for the last event of any kind. No
   timing or notification emitted here. */

int __fastcall ClipEventTable_GetLastRequiredEventIndex(int *param_1)

{
  uint uVar1;
  int *piVar2;
  
  if (param_1[4] != -2) {
    return param_1[4];
  }
  piVar2 = (int *)*param_1;
  uVar1 = 0;
  param_1[4] = -1;
  if (param_1[1] - (int)piVar2 >> 2 != 0) {
    do {
      if ((*piVar2 != 0) && (((byte)*(undefined4 *)(*piVar2 + 0x1c) & 4) == 4)) {
        param_1[4] = uVar1;
      }
      uVar1 = uVar1 + 1;
      piVar2 = piVar2 + 1;
    } while (uVar1 < (uint)(param_1[1] - *param_1 >> 2));
  }
  return param_1[4];
}

