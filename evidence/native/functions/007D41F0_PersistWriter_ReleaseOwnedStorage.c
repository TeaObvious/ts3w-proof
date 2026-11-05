/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). ECX writer cleanup restores constructor
   vtable, releases its +7Ch/+5Ch/+2Ch containers and associated storage, clears/releases
   pointer/vector storage and tail-calls context cleanup for +4. It does not free the writer object
   allocation; outer DestroyNativeWriter does that separately. */

void __fastcall PersistWriter_ReleaseOwnedStorage(undefined4 *param_1)

{
  *param_1 = &PTR_PersistWriter_IndexNativeObject_0101b290;
  FUN_0073ebe0(param_1[0x20],param_1[0x21]);
  param_1[0x22] = 0;
  if (1 < (uint)param_1[0x21]) {
    Memory_FreeIfNonNull((void *)param_1[0x20]);
  }
  FUN_009d67f0(param_1[0x18],param_1[0x19]);
  param_1[0x1a] = 0;
  if (1 < (uint)param_1[0x19]) {
    Memory_FreeIfNonNull((void *)param_1[0x18]);
  }
  if ((void *)param_1[0x13] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[0x13]);
  }
  FUN_0073ebe0(param_1[0xc],param_1[0xd]);
  param_1[0xe] = 0;
  if (1 < (uint)param_1[0xd]) {
    Memory_FreeIfNonNull((void *)param_1[0xc]);
  }
  FUN_00626e50(param_1 + 7);
  StreamReader_ReleaseAuxiliary(param_1 + 1);
  return;
}

