/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Additional receiver qualification: selected Slot point vtables010450E4/01045108/0104512C/01045150/01045174 place this same body atvirtual+10. There ECX is a point and +10 is its bone identifier, NOT a GPU pointer or Sim-type predicate. Body only tests fullDWORD+10!=0 and returnsAL. Existing ShaderBytecode analyst name is caller-specific, not a recovered universal type. */

/* Analyst: common shader-object check: AL=1 exactly when the GPU interface pointer at object +0x10
   is non-null. */

bool __fastcall ShaderBytecode_HasGpuObject(int param_1)

{
  return *(int *)(param_1 + 0x10) != 0;
}

