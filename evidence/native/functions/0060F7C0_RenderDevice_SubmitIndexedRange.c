/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 mesh-state instruction contract. thiscall ECXdevice wrapper plusSIX stack
   args;RET18. Increments draw counter+18, device at+C, maps internalprimitive viaFE87FC then COM
   virtual+148. D3D9 ABI: primitive, SIGNED INT baseVertexIndex, UINT
   minVertexIndex,vertexCount,startIndex,primitiveCount; HRESULT EAX forwarded. Arguments passed
   unchanged except primitive mapping. No candidate rebasing or min/max inference here. Signedness
   uses external documented API contract plus exact original argument order. */

int __thiscall
RenderDevice_SubmitIndexedRange
          (void *this,uint primitiveType,int baseVertexIndex,uint minVertexIndex,uint vertexCount,
          uint startIndex,uint primitiveCount)

{
  int iVar1;
  
  *(int *)((int)this + 0x18) = *(int *)((int)this + 0x18) + 1;
  iVar1 = (**(code **)(**(int **)((int)this + 0xc) + 0x148))
                    (*(int **)((int)this + 0xc),*(uint *)(&DAT_00fe87fc + primitiveType * 4),
                     baseVertexIndex,minVertexIndex,vertexCount,startIndex,primitiveCount);
  return iVar1;
}

