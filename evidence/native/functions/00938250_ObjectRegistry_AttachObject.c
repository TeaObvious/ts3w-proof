/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Retains object atomically, inserts intrusive node, then
   dispatches event4. The insert duplicate flag is ignored here; creation GUID selection prevents
   collisions on the normal path. */

void __thiscall ObjectRegistry_AttachObject(void *this,void *object)

{
  void *object_00;
  undefined1 local_c [12];
  
  object_00 = object;
  LOCK();
  *(int *)((int)object + 4) = *(int *)((int)object + 4) + 1;
  UNLOCK();
  object = (void *)((uint)object & 0xffffff00);
  ObjectHash_InsertGuid((void *)((int)this + 0x10),local_c,object_00,(uint)object);
  ObjectEvents_Dispatch(4,object_00,(void *)0x0);
  return;
}

