/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 lighting-control contract. Original bridge00787030 forwards one stack DWORD. This
   helper uses RET4, reads only its low byte atC5F420, obtains frame service006E8170 and
   owner006E8220, and stores exactly that byte at owner+100. No Boolean normalization or immediate
   refresh/wait. Missing frame service returns without write. Incoming ECX is not this helper's
   owner; owner is produced by service lookup. Existing prototype retained; physical stack/return
   instructions take priority. */

void LightingUpdates_StoreEnabledByte(undefined1 param_1)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar1 != (void *)0x0) {
    iVar2 = FUN_006e8220((int)pvVar1);
    *(undefined1 *)(iVar2 + 0x100) = param_1;
  }
  return;
}

