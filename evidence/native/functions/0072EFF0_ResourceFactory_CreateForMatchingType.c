/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical ECX factory plus1stackDWORD requested type, RET4,
   EAX pointer/null. If type equals factory+0C, invoke virtual+34 with NO new stackword; this
   dispatch reaches936AC0. Otherwise returnnull. This closes actual no-stack-argument allocation
   ABI; memory ownership belongs resource factory. */

void * __thiscall ResourceFactory_CreateForMatchingType(void *this,dword resourceType)

{
  void *pvVar1;
  
  if (resourceType == *(dword *)((int)this + 0xc)) {
    pvVar1 = (void *)(**(code **)(*(int *)this + 0x34))();
    return pvVar1;
  }
  return (void *)0x0;
}

