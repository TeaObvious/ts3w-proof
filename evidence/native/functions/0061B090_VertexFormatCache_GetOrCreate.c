/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall cache,elements,count,outDeclaration;
   RET0C and successonlyAL. Builds elements/count key, lookup returns existing retained declaration;
   otherwise allocates/initializes and calls reviewedVertexDeclaration_CreateFromElements. On
   success retains forcache and output; on create failure releases. Key
   hash/comparator/collision/concurrency and cleanup are not fully established by this wrapper.
   Original four-stack-slot find and three-slot insertion per-call overrides repair prior stack
   aliasing; do not interpret decompiler high return bytes as success. Compiler reuses incoming
   parameter stack bytes for flags/temp pointer after copying elements/count to locals; apparent
   elements&FFFFFF00 does NOT mask the actual elements pointer passed to declaration creation. */

bool __thiscall
VertexFormatCache_GetOrCreate
          (void *this,NativeVertexElement8 *elements,int elementCount,void **outDeclaration)

{
  int *piVar1;
  NativeVertexElement8 *elements_00;
  int signedCount;
  bool bVar2;
  undefined4 *puVar3;
  NativeVertexElement8 *this_00;
  NativeVertexElement8 *local_14;
  int local_10;
  undefined4 *local_c [3];
  
  signedCount = elementCount;
  elements_00 = elements;
  elements = (NativeVertexElement8 *)((uint)elements & 0xffffff00);
  elementCount = elementCount & 0xffffff00;
  local_14 = elements_00;
  local_10 = signedCount;
  FUN_0061ace0(this,local_c,&local_14,'\0','\0');
  if (local_c[0] != *(undefined4 **)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    piVar1 = (int *)*local_c[0];
    (**(code **)(*piVar1 + 4))();
    *outDeclaration = piVar1;
    return true;
  }
  puVar3 = (undefined4 *)FUN_004e4500(0x24,"Services/CachedVertexFormat",0);
  if (puVar3 != (undefined4 *)0x0) {
    this_00 = (NativeVertexElement8 *)FUN_0061a9e0(puVar3);
    if (this_00 != (NativeVertexElement8 *)0x0) {
      elements = this_00;
      (**(code **)(*(int *)this_00 + 4))();
      bVar2 = VertexDeclaration_CreateFromElements(this_00,elements_00,signedCount);
      if (bVar2) {
        (**(code **)(*(int *)this_00 + 4))();
        elementCount = elementCount & 0xffffff00;
        FUN_0061af00(this,local_c,&elements,'\0');
        *outDeclaration = elements;
        return true;
      }
      (**(code **)(*(int *)this_00 + 8))();
    }
  }
  return false;
}

