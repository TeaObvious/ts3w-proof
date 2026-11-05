/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 outside sampling and occlusion instruction contract. ECX receiver, no explicit
   stack words, RET; EAX returns receiver. Writes outside mainvtable0102ADC8, subobject
   tables0102A920/0102AAD0, name-key cache+20=0, counter+24=0, signed divisor+28=1, radius+2C=stored
   binary32 2 (0103FD88), squared-distance threshold+30=stored binary32 10000 (00F998EC). These are
   constructor defaults, not proof that failed resource admission uses them. Vtable+18 getter86E330
   references literal outside; +2C dispatches update86E630. No whole class ownership or factory
   admission claimed. */

void * __thiscall AudioOutside_Construct(void *this)

{
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fa2b8c;
  *(undefined ***)((int)this + 8) = &PTR_FUN_0102bba4;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined1 *)((int)this + 0x10) = 1;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined ***)this = &PTR_FUN_0102adc8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0102a920;
  *(undefined ***)((int)this + 8) = &PTR_LAB_0102aad0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0x40000000;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 1;
  *(undefined4 *)((int)this + 0x30) = 0x461c4000;
  return this;
}

