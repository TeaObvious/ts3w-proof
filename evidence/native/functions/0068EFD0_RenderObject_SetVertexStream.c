/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall streamOrdinal,buffer,byteOffset
   RET0C. Retain new buffer via virtual+4 before releasing old virtual+8; stores buffer
   atowner+4+ordinal*4 and byteOffset+0C+ordinal*4. No ordinal bound or self-assignment guard.
   Offset distinct from signed baseVertexIndex. Caller owns source-buffer admission. */

void __thiscall
RenderObject_SetVertexStream(void *this,int streamOrdinal,void *buffer,uint byteOffset)

{
  int *piVar1;
  
  if (buffer != (void *)0x0) {
    (**(code **)(*(int *)buffer + 4))();
  }
  piVar1 = *(int **)((int)this + streamOrdinal * 4 + 4);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 8))();
    *(void **)((int)this + streamOrdinal * 4 + 4) = buffer;
    *(uint *)((int)this + streamOrdinal * 4 + 0xc) = byteOffset;
    return;
  }
  *(void **)((int)this + streamOrdinal * 4 + 4) = buffer;
  *(uint *)((int)this + streamOrdinal * 4 + 0xc) = byteOffset;
  return;
}

