/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX factory, RET8(resourceType,factoryIdentity). Vtable
   base, refcount+4=0; +8=second identity and +C=first resource type. Do not swap these fields when
   resolving factory registration. */

void * __thiscall
ResourceFactory_ConstructIdentity(void *this,uint resourceType,uint factoryIdentity)

{
  *(undefined ***)this = &PTR_LAB_00fb31f4;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_LAB_00ffeb88;
  *(uint *)((int)this + 8) = factoryIdentity;
  *(uint *)((int)this + 0xc) = resourceType;
  return this;
}

