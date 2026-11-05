/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete2-instruction generic getter: EAX=[ECX+18], RET. Original Animation
   constructor93D010 installs interface vtable01044404 at component+8; its slot+20 points here, so
   SACS component sweep calls read Animation component+20. Existing canonical93EB00 supplies the
   retained queried rig-resource interface at that field; separate93DFB0 uses component+24 for
   ComponentRuntime. Generic getter meaning depends on receiver; do not name this as a universal
   rig/runtime accessor or alter its prototype. */

undefined4 __fastcall ReadDwordOffset18_531F70(int param_1)

{
  return *(undefined4 *)(param_1 + 0x18);
}

