/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX entry, no stack arguments/plain RET; only AL is meaningful predicate.
   If material+38 absent, clear entry+68, reject zero or low-two-bit-tagged source+3C, compare four
   actual key words+48/+50/+54/+4C against globals11EC8D0/D8/DC/D4. Equal path rereads output+38 and
   clears it before old virtual+4 release if nonnull, then calls actual
   MaterialDef_AcquireMaterial6CAEC0 with source inECX and stack(&entry+38,FFFFFFFF); other path
   calls C505A0. Present output tests material+30==3 using XOR EAX/SETZ AL; absent/rejected path XOR
   AL only leaves upper residue. Key words are actual32-bit fields; tag test is not a whole64-bit
   sentinel classification. C51720 consumes only AL for its bucket readiness. Complete
   C505A0/material creation/status producers and exact queued execution remain their own owners; no
   native decoder, current texture/hash prewarm, frame-budget or GPU completion parity is asserted.
    */

uint __fastcall WallMaterialEntry_ResolveAndTestReady(int param_1)

{
  void **outputMaterial;
  int *piVar1;
  uint in_EAX;
  uint3 extraout_var;
  
  outputMaterial = (void **)(param_1 + 0x38);
  if (*(int *)(param_1 + 0x38) == 0) {
    *(undefined4 *)(param_1 + 0x68) = 0;
    in_EAX = *(uint *)(param_1 + 0x3c);
                    /* TEST CL,3 tests actual source low tag bits; do not classify a full64-bit
                       resource key/sentinel from this byte test. */
    if ((in_EAX == 0) || ((*(uint *)(param_1 + 0x3c) & 3) != 0)) goto LAB_00c513b8;
    if ((*(int *)(param_1 + 0x48) == DAT_011ec8d0) &&
       (((*(int *)(param_1 + 0x50) == DAT_011ec8d8 && (*(int *)(param_1 + 0x54) == DAT_011ec8dc)) &&
        (*(int *)(param_1 + 0x4c) == DAT_011ec8d4)))) {
      piVar1 = *outputMaterial;
      if (piVar1 != (int *)0x0) {
        *outputMaterial = (void *)0x0;
        (**(code **)(*piVar1 + 4))();
      }
                    /* Actual ECX=source+3C, stack(&entry+38,FFFFFFFF). Existing whole
                       material-acquire owner, no guessed current worker/prewarm or frame-budget
                       role. */
      MaterialDef_AcquireMaterial(*(void **)(param_1 + 0x3c),outputMaterial,0xffffffff);
      in_EAX = (uint)extraout_var << 8;
    }
    else {
      in_EAX = FUN_00c505a0(param_1);
    }
  }
  if (*outputMaterial != (void *)0x0) {
    return (uint)(*(int *)((int)*outputMaterial + 0x30) == 3);
  }
LAB_00c513b8:
                    /* False exit XOR AL only; highEAX residue must not be treated as32-bit boolean.
                       Present material path uses explicit status+30==3. */
  return in_EAX & 0xffffff00;
}

