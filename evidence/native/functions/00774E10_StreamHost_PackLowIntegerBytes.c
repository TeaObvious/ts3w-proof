/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[00774e10, 00774e63]]: 84 original owned bytes/30 actual Listing
   instructions. Physical cdecl-style three-word destination/value/width input, plain RET. Width1
   stores low byte;4 stores one word;2 stores low ushort;3 explicitly stores low three little-endian
   bytes. Every other width returns without writing. No bounds/allocation/status policy. WriteInt
   caller performs signed width<=4 validation and passes the original width onward; do not infer
   negative/zero virtual-write behavior or change the preserved inferred prototype. */

void __cdecl StreamHost_PackLowIntegerBytes(undefined4 *param_1,undefined4 param_2,int param_3)

{
  if (param_3 == 1) {
    *(undefined1 *)param_1 = (undefined1)param_2;
    return;
  }
  if (param_3 == 4) {
    *param_1 = param_2;
    return;
  }
  if (param_3 == 2) {
    *(undefined2 *)param_1 = (undefined2)param_2;
    return;
  }
  if (param_3 == 3) {
    *(undefined1 *)param_1 = (undefined1)param_2;
    *(char *)((int)param_1 + 1) = (char)((uint)param_2 >> 8);
    *(char *)((int)param_1 + 2) = (char)((uint)param_2 >> 0x10);
  }
  return;
}

