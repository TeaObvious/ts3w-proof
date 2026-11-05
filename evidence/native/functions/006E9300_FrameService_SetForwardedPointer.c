/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX frame-service receiver plus one supplied
   pointer word, RET4 path. Stores pointer at+530h; if linked receiver+38h exists, forwards the same
   word via physical E9 tail JMP94FEB0. Retained AE0B10 calls with LoadPump_ReadFrameServiceGlobal
   and lot-renderer+264h or0. This is not a proved Slots constructor/reset or a claim about the
   linked receiver class. */

void __thiscall FrameService_SetForwardedPointer(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0x530) = param_1;
  if (*(void **)((int)this + 0x38) != (void *)0x0) {
    SharedPointerOffset0x64_Store32(*(void **)((int)this + 0x38),param_1);
    return;
  }
  return;
}

