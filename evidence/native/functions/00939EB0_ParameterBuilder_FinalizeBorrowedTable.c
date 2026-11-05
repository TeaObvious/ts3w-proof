/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX builder plus output pointer RET4.
   Sorts16-byte descriptors in place; output words are borrowed descriptor pointer,count=(end-begin)
   SAR4,payload pointer from builder+18. EAX retains/returns tableOut pointer. No ownership
   transfer, copy, deduplication or lifetime extension occurs. Comparator object is a physical DWORD
   initially copied from ECX(this) by PUSH ECX, then only its low byte is zeroed; upper bytes retain
   that copied value. */

uint * __thiscall ParameterBuilder_FinalizeBorrowedTable(void *this,uint *tableOut)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint local_4;
  
  local_4 = (uint)this & 0xffffff00;
  ParameterRecords_SortByUnsignedHash(*(uint **)this,*(uint **)((int)this + 4),local_4);
  uVar1 = *(uint *)this;
  iVar2 = *(int *)((int)this + 4);
  *tableOut = uVar1;
  uVar3 = *(uint *)((int)this + 0x18);
  tableOut[1] = (int)(iVar2 - uVar1) >> 4;
  tableOut[2] = uVar3;
  return tableOut;
}

