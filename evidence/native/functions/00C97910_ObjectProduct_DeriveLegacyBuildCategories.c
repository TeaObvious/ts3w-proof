/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   no stack parameters. Only build+D0 equal zero or80000000 is derived. Object+98
   bits8,10,20,80,800,1000,2000,4000 OR build2,4,8,20,40,80,200,10 respectively; retain any
   preexisting80000000 sentinel. Nonzero nonsentinel build mask is unchanged. */

void __thiscall ObjectProduct_DeriveLegacyBuildCategories(void *this)

{
  uint uVar1;
  uint uVar2;
  
                    /* Analyst: Only zero/sentinel build flags derive legacy categories. */
  uVar1 = *(uint *)((int)this + 0xd0);
  if ((uVar1 == 0x80000000) || (uVar1 == 0)) {
    uVar2 = *(uint *)((int)this + 0x98);
    if ((uVar2 & 8) != 0) {
      *(uint *)((int)this + 0xd0) = uVar1 | 2;
    }
    if ((uVar2 & 0x10) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 4;
    }
    if ((uVar2 & 0x20) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 8;
    }
    if ((char)uVar2 < '\0') {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 0x20;
    }
    if ((uVar2 & 0x800) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 0x40;
    }
    if ((uVar2 & 0x1000) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 0x80;
    }
    if ((uVar2 & 0x2000) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 0x200;
    }
    if ((uVar2 & 0x4000) != 0) {
      *(uint *)((int)this + 0xd0) = *(uint *)((int)this + 0xd0) | 0x10;
    }
  }
  return;
}

