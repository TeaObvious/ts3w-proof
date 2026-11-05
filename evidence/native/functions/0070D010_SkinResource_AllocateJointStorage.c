/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 resident-animation source comparison): Analyst role from actual
   Renderer/Skin/JointNameHashes and Renderer/Skin/BindPose strings and complete6D7DA0 consumer. ECX
   skin plus one UInt32 count stack slot; RET4. Both unsigned MUL operations inspect OF and saturate
   overflowed request to FFFFFFFF, not checked arithmetic or signed saturation: count*4 hashes
   through4E4500 with six physical stack words; count*40 hex bind matrices through4E4520 with eight
   words, alignment10 hex. Write hash pointer+2C and matrix pointer+30; only both nonnull store
   count+28. Matrix failure frees newly stored hash then clears+2C, AL0. Hash failure AL0. Success
   AL1. Count field is unchanged on failure, and old arrays are not released before overwriting
   these pointer slots; this is not a proved general safe replacement API. Zero-size allocation
   semantics belong to the actual allocator. Only AL is defined; return bool matches CALL/TEST AL
   at6D7DFD/6D7E02. Existing allocator signatures abbreviate real stack args in actual C; preserve
   foreign functions and annotate rather than cosmetic speculative ABI repair. */

bool __thiscall SkinResource_AllocateJointStorage(void *this,uint param_1)

{
  int iVar1;
  
  iVar1 = FUN_004e4500(-(uint)((int)((ulonglong)param_1 * 4 >> 0x20) != 0) |
                       (uint)((ulonglong)param_1 * 4),"Renderer/Skin/JointNameHashes",0);
  *(int *)((int)this + 0x2c) = iVar1;
  if (iVar1 != 0) {
    iVar1 = FUN_004e4520(-(uint)((int)((ulonglong)param_1 * 0x40 >> 0x20) != 0) |
                         (uint)((ulonglong)param_1 * 0x40),0x10,0,"Renderer/Skin/BindPose",0);
    *(int *)((int)this + 0x30) = iVar1;
    if (iVar1 != 0) {
      *(uint *)((int)this + 0x28) = param_1;
      return true;
    }
    Memory_FreeIfNonNull(*(void **)((int)this + 0x2c));
    *(undefined4 *)((int)this + 0x2c) = 0;
  }
  return false;
}

