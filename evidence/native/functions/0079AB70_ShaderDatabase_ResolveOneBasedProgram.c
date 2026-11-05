/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original shader LINK resolution. Physical ECX shader database plus one DWORD stack
   ID, RET04; EAX returns selected object or null. ID0 returns null. Original SUB EAX,1 converts the
   one-based file ID to a zero-based vector index; unsigned JNC rejects index>=count, with count
   from SAR((end-begin),2). Selected slot is dereferenced without a null-slot guard. Virtual+8 low
   ALtrue returns selected object. Otherwise virtual+0C receives stack literal0; its low ALtrue also
   returns selected object, false returns null. Child readiness/preparation semantics and pointer
   retention are not inferred. PASS resolver79EBD0 calls this for its stored vertex/pixel IDs.
   Together with database reader79AD00 storing ordinal(index+1), this establishes StandingWater PASS
   VS7187/PS7206 selecting LINK array slots7186/7205. No original bytes, ABI, prototype,
   parameter/local types or control flow changed. */

int * __thiscall ShaderDatabase_ResolveOneBasedProgram(void *this,int param_1)

{
  int *piVar1;
  char cVar2;
  
  if (param_1 != 0) {
    if (param_1 - 1U < (uint)(*(int *)((int)this + 4) - *(int *)this >> 2)) {
      piVar1 = *(int **)(*(int *)this + (param_1 - 1U) * 4);
      cVar2 = (**(code **)(*piVar1 + 8))();
      if (cVar2 == '\0') {
        cVar2 = (**(code **)(*piVar1 + 0xc))(0);
        if (cVar2 == '\0') {
          return (int *)0x0;
        }
      }
      return piVar1;
    }
  }
  return (int *)0x0;
}

