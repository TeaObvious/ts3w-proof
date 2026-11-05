/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Actual ECX object, one stack DWORD output pointer, two physical RET4 exits.
   Nonnull object+38 calls6FA5B0; nonzero EAX becomes ECX for A42F60(output). Both actual paths
   return the supplied output pointer in EAX. Missing source writes exactly four16-byte blocks with
   IEEE binary32 identity diagonal fromF998F8 (1.0), zero elsewhere.6EA610 always consumes
   this64-byte output on its accepted-source path and binds+1E0. Its caller owns the separate
   rejected-source identity and queue-clearing order. Do not infer inverse/world/normal-matrix
   semantics or native current Vulkan input/batch/cache parity from this pointer producer. Full
   owned envelope retained; prototype/body/bytes retained. */

undefined1 (*) [16] __thiscall
SceneObject_CopyMatrixPayloadBOrIdentity(void *this,undefined1 (*param_1) [16])

{
  void *this_00;
  
  if (*(int *)((int)this + 0x38) != 0) {
    this_00 = (void *)FUN_006fa5b0(*(int *)((int)this + 0x38));
    if (this_00 != (void *)0x0) {
      FUN_00a42f60(this_00,param_1);
                    /* Explicit MOV EAX,ESI returns caller output after A42F60, independent of child
                       return. */
      return param_1;
    }
  }
  *(float *)*param_1 = 1.0;
  *(undefined4 *)(*param_1 + 4) = 0;
  *(undefined4 *)(*param_1 + 8) = 0;
  *(undefined4 *)(*param_1 + 0xc) = 0;
  *(undefined4 *)param_1[1] = 0;
  *(float *)(param_1[1] + 4) = 1.0;
  *(undefined4 *)(param_1[1] + 8) = 0;
  *(undefined4 *)(param_1[1] + 0xc) = 0;
  *(undefined4 *)param_1[2] = 0;
  *(undefined4 *)(param_1[2] + 4) = 0;
  *(float *)(param_1[2] + 8) = 1.0;
  *(undefined4 *)(param_1[2] + 0xc) = 0;
  *(undefined4 *)param_1[3] = 0;
  *(undefined4 *)(param_1[3] + 4) = 0;
  *(undefined4 *)(param_1[3] + 8) = 0;
  *(float *)(param_1[3] + 0xc) = 1.0;
  return param_1;
}


