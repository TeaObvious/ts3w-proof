/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 lighting-control contract. Bridge00787020 tail-jumps here. No physical stack
   arguments; RET. Obtains frame service006E8170 and owner006E8220. Present service returns
   owner+100 byte in AL; absent service returns AL=1. Other EAX bits are unspecified, not a
   zero-extended Int32 Boolean. This is update-policy byte retrieval, not completion/readiness.
   Existing prototype retained. */

undefined1 LightingUpdates_ReadEnabledByteOrOne(void)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar1 != (void *)0x0) {
    iVar2 = FUN_006e8220((int)pvVar1);
    return *(undefined1 *)(iVar2 + 0x100);
  }
  return 1;
}

