/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 16-instruction/52-byte destructor-shaped operation on the case-6 whole receiver. Reset
   whole+0x10, whole+4 and primary vtable fields in observed order, test low bit of stack byte and
   conditionally call 00505080 with whole receiver, then return whole in EAX and RET 4. The
   conditional child's allocator/free protocol is unread. Interface +8 joins this body through
   00516440's bounded ECX-=0x10 tail; do not substitute that interface slot for the primary +8
   zero-count dispatch. */

void * __thiscall UiEffectKind6_ResetVtablesAndConditionallyDestroy(void *this,byte param_1)

{
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_00fbbc40;
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_00fa2b80;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbc994;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fa2b80;
  *(undefined ***)this = &PTR_LAB_00fa2b80;
  if ((param_1 & 1) != 0) {
    FreeWithAllocatorHeader((int)this);
  }
  return this;
}

