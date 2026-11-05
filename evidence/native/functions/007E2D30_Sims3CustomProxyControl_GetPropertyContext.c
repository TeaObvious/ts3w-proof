/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete proxy; one output pointer, RET4. Output
   descriptor=complete+288, receiver=same complete pointer,count1,dynamic class identity=DWORD
   complete+250. EAX output pointer. The flags field at+284 is separate from identity. No eager
   copied CLR layout/session is native evidence. */

void * __thiscall Sims3CustomProxyControl_GetPropertyContext(void *this,void *outContext)

{
  undefined4 uVar1;
  
  *(undefined4 *)((int)outContext + 8) = 1;
  uVar1 = *(undefined4 *)((int)this + 0x250);
  *(void **)((int)outContext + 4) = this;
  *(undefined4 *)((int)outContext + 0xc) = uVar1;
  *(int *)outContext = (int)this + 0x288;
  return outContext;
}

