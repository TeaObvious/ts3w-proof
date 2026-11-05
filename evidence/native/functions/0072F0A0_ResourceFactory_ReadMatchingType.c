/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX factory
   RET10(context,resource,arg3Unused,resourceType). Require type==factory+0C; copy16-byte key from
   context+10 into resource+8..+14, dispatch factory virtual+3C(context,resource), keep ALresult.
   Always invoke context virtual+20 at exit. Names of context finalization/refcount slots remain
   inferred by use. */

bool __thiscall
ResourceFactory_ReadMatchingType
          (void *this,void *context,void *resource,uint unusedWord,uint resourceType)

{
  bool bVar1;
  undefined4 *puVar2;
  
  bVar1 = false;
  if (resourceType == *(uint *)((int)this + 0xc)) {
    puVar2 = (**(code **)(*(int *)context + 0x10))(context);
    *(undefined4 *)((int)resource + 8) = *puVar2;
    *(undefined4 *)((int)resource + 0xc) = puVar2[1];
    *(undefined4 *)((int)resource + 0x10) = puVar2[2];
    *(undefined4 *)((int)resource + 0x14) = puVar2[3];
    bVar1 = (**(code **)(*(int *)this + 0x3c))(this,context,resource);
  }
  (**(code **)(*(int *)context + 0x20))(context);
  return bVar1;
}

