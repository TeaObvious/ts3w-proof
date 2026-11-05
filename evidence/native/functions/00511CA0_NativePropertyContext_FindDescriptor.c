/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual property context,3stackwords/RET0C: output
   context pointer, UInt32 property ID, allocator/context pointer. Descriptor rows are20bytes;
   low12-bit tag1 invokes actual inherited-row address callback and recursively searches that
   returned context. Other rows compare ID at+8. Found row returns its address EAX and copies actual
   context3words; missing returns0. This is ordered descriptor inheritance, not a four-family CLR
   map. Full nested callback semantics remain their own producers. */

void * __thiscall
NativePropertyContext_FindDescriptor(void *this,void *outContext,uint propertyId,void *allocator)

{
  char cVar1;
  void *pvVar2;
  void *pvVar3;
  int iVar4;
  undefined1 local_c [12];
  
  pvVar3 = *(void **)(*(int *)this + 0xc);
  iVar4 = *(int *)(*(int *)this + 0x10);
  do {
    if (iVar4 == 0) {
      return (void *)0x0;
    }
    if ((*(ushort *)((int)pvVar3 + 0xc) & 0xfff) == 1) {
      cVar1 = (**(code **)(*(int *)((int)pvVar3 + 4) + 8))(local_c,this,pvVar3,allocator);
      if ((cVar1 != '\0') &&
         (pvVar2 = NativePropertyContext_FindDescriptor(local_c,outContext,propertyId,allocator),
         pvVar2 != (void *)0x0)) {
        return pvVar2;
      }
    }
    else if (*(uint *)((int)pvVar3 + 8) == propertyId) {
      *(undefined4 *)outContext = *(undefined4 *)this;
      *(undefined4 *)((int)outContext + 8) = *(undefined4 *)((int)this + 8);
      *(undefined4 *)((int)outContext + 4) = *(undefined4 *)((int)this + 4);
      return pvVar3;
    }
    iVar4 = iVar4 + -1;
    pvVar3 = (void *)((int)pvVar3 + 0x14);
  } while( true );
}

