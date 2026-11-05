/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX reader RET8(stream,endianFlag). Release old owned
   auxiliary if present, retain supplied stream+8 and flag+10, reset cached flag. Query stream+10
   capability bits; if bit2 clear cache UInt32 length from stream+1C at reader+0C and mark+15. This
   attachment does not AddRef supplied stream or inspect accumulated status. */

void __thiscall StreamReader_Attach(void *this,void *stream,uint endianFlag)

{
  uint uVar1;
  
  if (*(int **)((int)this + 4) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 4) + 0x20))();
    (**(code **)(**(int **)((int)this + 4) + 8))();
    *(undefined4 *)((int)this + 4) = 0;
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined1 *)((int)this + 0x15) = 0;
  }
  *(uint *)((int)this + 0x10) = endianFlag;
  *(void **)((int)this + 8) = stream;
  *(undefined4 *)this = 0;
  *(undefined1 *)((int)this + 0x15) = 0;
  if (stream != (void *)0x0) {
    uVar1 = (**(code **)(*(int *)stream + 0x10))(stream);
    if ((uVar1 & 2) == 0) {
      uVar1 = (**(code **)(**(int **)((int)this + 8) + 0x1c))(*(int **)((int)this + 8));
      *(uint *)((int)this + 0xc) = uVar1;
      *(undefined1 *)((int)this + 0x15) = 1;
    }
  }
  return;
}

