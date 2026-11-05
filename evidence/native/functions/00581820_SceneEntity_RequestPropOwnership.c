/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX entity,one stack dword RET4,AL result.
   Acquiring requires flag1. With existing GUID, succeeds only if requested bool equals flag2;
   refuses converting an ordinary bound object into owned prop. With zero GUID sets/clears flag2 and
   succeeds. This leaf does not create or destroy an object. */

bool __thiscall SceneEntity_RequestPropOwnership(void *this,char param_1)

{
  if ((param_1 != '\0') && (((byte)*(undefined4 *)((int)this + 0xc) & 1) != 1)) {
    return false;
  }
  if (*(int *)((int)this + 0x10) != 0 || *(int *)((int)this + 0x14) != 0) {
    return (bool)param_1 == (((byte)*(undefined4 *)((int)this + 0xc) & 2) == 2);
  }
  if (param_1 != '\0') {
    *(uint *)((int)this + 0xc) = *(uint *)((int)this + 0xc) | 2;
    return true;
  }
  *(uint *)((int)this + 0xc) = *(uint *)((int)this + 0xc) & 0xfffffffd;
  return true;
}

