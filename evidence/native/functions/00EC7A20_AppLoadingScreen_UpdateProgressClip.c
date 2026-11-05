/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC167_STARTUP_00ec7a20. Updates installed progress clip. ECX object, RET. Read clip rectangle,
   convert +0x25C as unsigned32 via signed FILD and +2^32 correction when negative, then x87
   multiply stored binary32 1/19 and authored fill width +0x260, add left and store binary32
   clip-right. No native clamp is present. Host positive 0..19 arithmetic is a narrower projection
   and does not prove x87 intermediate equality. */

void __fastcall AppLoadingScreen_UpdateProgressClip(int param_1)

{
  float fVar1;
  float *pfVar2;
  float fStack_10;
  float fStack_c;
  float fStack_8;
  float fStack_4;
  
  pfVar2 = (float *)(**(code **)(**(int **)(param_1 + 0x264) + 0x34))();
  fStack_10 = *pfVar2;
  fStack_c = pfVar2[1];
  fVar1 = (float)*(int *)(param_1 + 0x25c);
  fStack_4 = pfVar2[3];
  if (*(int *)(param_1 + 0x25c) < 0) {
    fVar1 = fVar1 + FLOAT_00f99948;
  }
  fStack_8 = fVar1 * _DAT_010f5848 * *(float *)(param_1 + 0x260) + fStack_10;
  (**(code **)(**(int **)(param_1 + 0x264) + 100))(&fStack_10);
  return;
}

