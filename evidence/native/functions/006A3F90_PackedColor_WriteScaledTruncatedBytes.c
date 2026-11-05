/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX output buffer and four float stack lanes, RET16. Load actual referenced scalar once,
   preserve x87 control and select truncation with OR0xC00 before each FISTP; restore original
   control, compare low32 conversion unsigned against255, choose255 when greater and write low byte
   at output offsets0/1/2/3. The caller6A6270 passes B/G/R/A. Decompiler ROUND is not proof of
   round-to-nearest. Scalar exact bits require separate receipt; arbitrary negative/NaN/out-of-range
   inputs and saved analysis return metadata do not establish a new normalized-color or Boolean
   contract. */

void __thiscall
PackedColor_WriteScaledTruncatedBytes
          (void *this,float param_1,float param_2,float param_3,float param_4)

{
  float fVar1;
  undefined4 local_8;
  
  fVar1 = DAT_00fa4134;
  local_8 = (uint)(longlong)ROUND(param_1 * DAT_00fa4134);
  if (0xff < local_8) {
    local_8 = 0xff;
  }
  *(char *)this = (char)local_8;
  local_8 = (uint)(longlong)ROUND(param_2 * fVar1);
  if (0xff < local_8) {
    local_8 = 0xff;
  }
  *(char *)((int)this + 1) = (char)local_8;
  local_8 = (uint)(longlong)ROUND(param_3 * fVar1);
  if (0xff < local_8) {
    local_8 = 0xff;
  }
  *(char *)((int)this + 2) = (char)local_8;
  local_8 = (uint)(longlong)ROUND(fVar1 * param_4);
  if (0xff < local_8) {
    local_8 = 0xff;
  }
  *(char *)((int)this + 3) = (char)local_8;
  return;
}

