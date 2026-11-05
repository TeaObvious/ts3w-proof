/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX descriptor,5 stack DWORDs/RET14; final control is
   tested by low byte only. Enforce count unless descriptor bit8000 admits its dynamic form; set
   actual type/count. Count0 publishes null payload and AL1. Selected ordinary nonstring/nonobject
   scalar with low-byte mode0 and no write override can point directly at signed16 field offset plus
   context receiver. Otherwise allocates size*count through actual allocator and conditionally zeros
   reference/object/struct storage. Parent54B600 passes actual low-byte0; no eager CLR copy or
   universal transactional staging is established. */

bool __thiscall
NativePropertyDescriptor_PrepareValueBuffer
          (void *this,void *outValue,void *context,uint count,void *allocator,uint forceCopyWord)

{
  code *pcVar1;
  char cVar2;
  ushort uVar3;
  void *_Dst;
  int iVar4;
  
  if ((count != *(uint *)((int)this + 0x10)) && (-1 < *(short *)((int)this + 0xc))) {
    return false;
  }
  if ((*(int *)((int)this + 4) == 0) ||
     (pcVar1 = *(code **)(*(int *)((int)this + 4) + 8), pcVar1 == (code *)0x0)) {
    *(undefined4 *)outValue =
         *(undefined4 *)(&DAT_0114f4f8 + (*(ushort *)((int)this + 0xc) & 0xfff) * 4);
  }
  else {
    cVar2 = (*pcVar1)(outValue,context,this,allocator);
    if (cVar2 == '\0') {
      return false;
    }
  }
  *(uint *)((int)outValue + 8) = count;
  if (count != 0) {
    if (((((char)forceCopyWord == '\0') &&
         (uVar3 = *(ushort *)((int)this + 0xc) & 0xfff, uVar3 != 0x13)) && (uVar3 != 0x12)) &&
       ((*(int **)((int)this + 4) == (int *)0x0 || (**(int **)((int)this + 4) == 0)))) {
      iVar4 = (int)*(short *)((int)this + 0xe) + *(int *)((int)context + 4);
      *(int *)((int)outValue + 4) = iVar4;
      return iVar4 != 0;
    }
    _Dst = (void *)(*(code *)**(undefined4 **)allocator)(*(int *)(*(int *)outValue + 8) * count,4);
    *(void **)((int)outValue + 4) = _Dst;
    if (_Dst == (void *)0x0) {
      return false;
    }
    uVar3 = *(ushort *)((int)this + 0xc) & 0xfff;
    if (((uVar3 == 0x13) || (uVar3 == 0x12)) || (uVar3 == 0x14)) {
      memset(_Dst,0,*(int *)(*(int *)outValue + 8) * count);
    }
    return *(int *)((int)outValue + 4) != 0;
  }
  *(undefined4 *)((int)outValue + 4) = 0;
  return true;
}

