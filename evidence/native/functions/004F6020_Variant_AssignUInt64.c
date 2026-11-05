/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. Source pointer is dereferenced as TWO DWORDS
   at+0/+4; ordinary variant stores at+10/+14,type WORD+0A=12. Full64bit GUID preserved. Decompiler
   pointer typing must not reduce this to32bits. */

void * __thiscall Variant_AssignUInt64(void *this,ulonglong *value64)

{
  undefined4 uVar1;
  ushort uVar2;
  
  if ((*(byte *)((int)this + 8) & 4) != 0) {
    (*(code *)PTR_FUN_0114da0c)(1,this,0,0,0,0);
    if ((*(byte *)((int)this + 8) & 2) == 0) {
      *(undefined2 *)((int)this + 10) = 0;
      *(undefined2 *)((int)this + 8) = 0;
    }
  }
  uVar2 = *(ushort *)((int)this + 8) & 2;
  if ((uVar2 != 0) && (*(short *)((int)this + 10) != 0xc)) {
    FUN_004f59c0(this,0xc,0,value64,8,1);
    return this;
  }
  *(int *)((int)this + 0x10) = (int)*value64;
  uVar1 = *(undefined4 *)((int)value64 + 4);
  *(ushort *)((int)this + 8) = uVar2;
  *(undefined4 *)((int)this + 0x14) = uVar1;
  *(undefined2 *)((int)this + 10) = 0xc;
  return this;
}

