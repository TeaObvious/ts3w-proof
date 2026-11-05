/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader, encoded key on stack RET4 despite
   inferred fastcall C. Map lookup at reader+14; found offset+4 adds reader start+C and seeks
   underlying stream. Returns AL accumulated status; missing yieldsAL0, upper EAX incidental. Typed
   callers XOR original property name with their type ID before this call. */

uint __fastcall NativePropertyStream_SeekEncodedEntry(int param_1)

{
  uint local_8 [2];
  
  UInt32PairMap_Find((void *)(param_1 + 0x14),local_8,(uint *)&stack0x00000004);
  if (local_8[0] != *(uint *)(*(int *)(param_1 + 0x18) + *(int *)(param_1 + 0x1c) * 4)) {
    StreamContext_SeekWithSignedAbsoluteGuard
              (*(void **)(param_1 + 8),*(int *)(local_8[0] + 4) + *(int *)(param_1 + 0xc),0);
    return CONCAT31((int3)((uint)*(int *)(param_1 + 8) >> 8),
                    *(undefined1 *)(*(int *)(param_1 + 8) + 0x14));
  }
  return local_8[0] & 0xffffff00;
}

