/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX descriptor row,3words/RET0C; success defined in AL.
   Prefer actual explicit read callback at callback-table+4, otherwise address callback+8, otherwise
   direct signed16 row+E offset plus context+4 receiver. Direct output is type-table pointer indexed
   by tag low12bits, value address and row count+10. Tag12hex string handling allocates/copies
   pointer values using original4/16byte source/destination strides. Do not confuse scalar
   descriptor offsets with unsigned host keys or claim all callback behavior was recovered. */

bool __thiscall
NativePropertyDescriptor_Read(void *this,void *outValue,void *context,void *allocator)

{
  int iVar1;
  undefined1 uVar2;
  char cVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 *puVar6;
  
  iVar1 = *(int *)((int)this + 4);
  if ((iVar1 != 0) && (*(code **)(iVar1 + 4) != (code *)0x0)) {
    uVar2 = (**(code **)(iVar1 + 4))(outValue,context,this,allocator);
    return (bool)uVar2;
  }
  cVar3 = '\x01';
  if ((iVar1 == 0) || (*(code **)(iVar1 + 8) == (code *)0x0)) {
    *(undefined4 *)((int)outValue + 8) = *(undefined4 *)((int)this + 0x10);
    *(undefined4 *)outValue =
         *(undefined4 *)(&DAT_0114f4f8 + (*(ushort *)((int)this + 0xc) & 0xfff) * 4);
    *(int *)((int)outValue + 4) = (int)*(short *)((int)this + 0xe) + *(int *)((int)context + 4);
  }
  else {
    cVar3 = (**(code **)(iVar1 + 8))(outValue,context,this,allocator);
    if (cVar3 == '\0') {
      return false;
    }
  }
  if ((*(ushort *)((int)this + 0xc) & 0xfff) == 0x12) {
    puVar6 = *(undefined4 **)((int)outValue + 4);
    puVar4 = (undefined4 *)(*(code *)**(undefined4 **)allocator)(*(int *)((int)outValue + 8) * 4,4);
    if (puVar4 == (undefined4 *)0x0) {
      return false;
    }
    *(undefined4 **)((int)outValue + 4) = puVar4;
    if (*(int *)((int)outValue + 8) != 0) {
      uVar5 = 0;
      do {
        *puVar4 = *puVar6;
        uVar5 = uVar5 + 1;
        puVar6 = puVar6 + 4;
        puVar4 = puVar4 + 1;
      } while (uVar5 < *(uint *)((int)outValue + 8));
    }
  }
  return (bool)cVar3;
}

