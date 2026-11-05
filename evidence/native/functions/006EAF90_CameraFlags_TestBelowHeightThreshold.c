/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, full101B/30 instructions checked against pristine PE. ECX receiver; returns EAX1 only
   when byte+520 nonzero, bytes+515/+270 zero, pointer+24 nonnull and camera float+64 strictly below
   receiver float+554. COMISS/JBE rejects unordered comparison. Other paths return EAX0; plain RET.
   Upstream flag identities remain unexpanded. No ABI/type change. */

undefined4 __fastcall CameraFlags_TestBelowHeightThreshold(int param_1)

{
  if ((((*(char *)(param_1 + 0x520) != '\0') && (*(char *)(param_1 + 0x515) == '\0')) &&
      (*(char *)(param_1 + 0x270) == '\0')) && (*(int *)(param_1 + 0x24) != 0)) {
    if (*(float *)(*(int *)(param_1 + 0x24) + 100) < *(float *)(param_1 + 0x554)) {
      return 1;
    }
  }
  return 0;
}

