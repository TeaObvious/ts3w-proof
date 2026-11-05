/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. Source pointer is dereferenced as one DWORD.
   Ordinary nonreference variant stores at+10,type WORD+0A=10. Existing owned/reference flags take
   cleanup/conversion helpers; don't infer retain policy beyond reviewed instructions. */

void * __thiscall Variant_AssignUInt32(void *this,uint *value32)

{
  uint uVar1;
  ushort uVar2;
  
  if ((*(byte *)((int)this + 8) & 4) != 0) {
    (*(code *)PTR_FUN_0114da0c)(1,this,0,0,0,0);
    if ((*(byte *)((int)this + 8) & 2) == 0) {
      *(undefined2 *)((int)this + 10) = 0;
      *(undefined2 *)((int)this + 8) = 0;
    }
  }
  uVar2 = *(ushort *)((int)this + 8) & 2;
  if ((uVar2 != 0) && (*(short *)((int)this + 10) != 10)) {
    FUN_004f59c0(this,10,0,value32,4,1);
    return this;
  }
  uVar1 = *value32;
  *(ushort *)((int)this + 8) = uVar2;
  *(uint *)((int)this + 0x10) = uVar1;
  *(undefined2 *)((int)this + 10) = 10;
  return this;
}

