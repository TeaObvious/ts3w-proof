/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=GUID map; output iterator and pointer to GUID64; RET 8,
   returns the output iterator pointer in EAX. Unsigned low DWORD modulo 0x409 (1033) selects a
   bucket. Equality compares BOTH GUID DWORDs at node+8/+C; node+0 is next. Missing key yields {head
   at map+1024, address of that sentinel bucket}. Writes two iterator DWORDs and performs no retain.
   Parent manager uses map at +4, hence sentinel head at manager+1028. */

void * __thiscall RenderGuidMap_FindIterator(void *this,void *outputIterator,byte *guidWords)

{
  int *local_8;
  undefined4 *local_4;
  
  local_8 = *(int **)((int)this + (*(uint *)guidWords % 0x409) * 4);
  local_4 = (undefined4 *)((int)this + (*(uint *)guidWords % 0x409) * 4);
  if (local_8 != (int *)0x0) {
    do {
      if ((*(int *)guidWords == local_8[2]) && (*(int *)(guidWords + 4) == local_8[3]))
      goto LAB_006fdda3;
      local_8 = (int *)*local_8;
    } while (local_8 != (int *)0x0);
  }
  local_4 = (undefined4 *)((int)this + 0x1024);
  local_8 = (int *)*local_4;
LAB_006fdda3:
  *(int **)outputIterator = local_8;
  *(undefined4 **)((int)outputIterator + 4) = local_4;
  return outputIterator;
}

