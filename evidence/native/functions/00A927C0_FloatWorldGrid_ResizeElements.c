/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 recovered complete8byte float-grid adjustor A927C0..C7. ADD ECX,10hex then tail JMP56DDD0;
   not a distinct vector layout. Physical virtual8 receives exactly one element-count word,
   underlying Word32Vector_Resize RET4. Automatic thunk alias detached solely to assign
   grid-receiver ABI/name; original instructions unchanged. Verified vtable1063DD8+8 and actual
   C6DB66 callsite. */

void __thiscall FloatWorldGrid_ResizeElements(void *this,uint elementCount)

{
  Word32Vector_Resize((void *)((int)this + 0x10),elementCount);
  return;
}

