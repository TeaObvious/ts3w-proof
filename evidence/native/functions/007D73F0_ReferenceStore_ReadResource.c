/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 14h: reader, group, UInt64 instance,
   low-byte regeneration flag. Open 05ED1226h resource, call payload reader, close context and
   return status +14h. The payload Boolean is IGNORED. Successfully reading an unsupported version
   can therefore produce payload false but wrapper true. Wrapper success is not complete format
   validation. */

bool __thiscall
ReferenceStore_ReadResource
          (void *this,void *reader,uint group,ulonglong instance,byte regenerateLocalKeys)

{
  bool bVar1;
  ulonglong local_10;
  undefined4 local_8;
  uint local_4;
  
  local_8 = 0x5ed1226;
  local_4 = group;
  local_10 = instance;
  bVar1 = ResourceStreamContext_OpenRead(reader,&local_10,0);
  if (bVar1) {
    ReferenceStore_ReadPayload(this,reader,regenerateLocalKeys);
                    /* No test of payload reader AL at return; close context then return status
                       byte+14. Invalidversion can returnfalse from payload while
                       wrapperstillreturnstrue. */
    ResourceStreamContext_Close(reader);
    return (bool)*(undefined1 *)((int)reader + 0x14);
  }
  return false;
}

