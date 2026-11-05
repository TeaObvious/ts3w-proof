/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX reader, RET8(stream,UInt32 endianFlag), returns
   this. Zero owner/auxiliary fields, status+14=true, cached-end flag+15=false; delegate
   attachment007D8410. */

void * __thiscall StreamReader_Construct(void *this,void *stream,uint endianFlag)

{
  *(uint *)((int)this + 0x10) = endianFlag;
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined1 *)((int)this + 0x15) = 0;
  *(undefined1 *)((int)this + 0x14) = 1;
  StreamReader_Attach(this,stream,endianFlag);
  return this;
}

