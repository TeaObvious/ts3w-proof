/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Actual ECX object, one stack DWORD output pointer, two physical RET4 exits.
   Nonnull object+38 calls6FA5B0; nonzero EAX becomes ECX for A42D70(output). Both actual paths
   return the supplied output pointer in EAX, not a child result. Missing source writes exactly
   four16-byte blocks with IEEE binary32 identity diagonal fromF998F8 (1.0), zero elsewhere.6EA610
   consumes this64-byte output only after its actual virtual+10 AL predicate and copies it to+1DC
   payload. This wrapper does not establish world/inverse/normal-matrix semantics or A42D70
   transitive behavior. Full owned envelope retained; prototype/body/bytes retained. */

float * __thiscall SceneObject_CopyMatrixPayloadAOrIdentity(void *this,float *param_1)

{
  void *this_00;
  
  if (*(int *)((int)this + 0x38) != 0) {
    this_00 = (void *)FUN_006fa5b0(*(int *)((int)this + 0x38));
    if (this_00 != (void *)0x0) {
      FUN_00a42d70(this_00,param_1);
                    /* Explicit MOV EAX,ESI returns caller output after A42D70, independent of child
                       return. */
      return param_1;
    }
  }
  *param_1 = 1.0;
  param_1[1] = 0.0;
  param_1[2] = 0.0;
  param_1[3] = 0.0;
  param_1[4] = 0.0;
  param_1[5] = 1.0;
  param_1[6] = 0.0;
  param_1[7] = 0.0;
  param_1[8] = 0.0;
  param_1[9] = 0.0;
  param_1[10] = 1.0;
  param_1[0xb] = 0.0;
  param_1[0xc] = 0.0;
  param_1[0xd] = 0.0;
  param_1[0xe] = 0.0;
  param_1[0xf] = 1.0;
  return param_1;
}


