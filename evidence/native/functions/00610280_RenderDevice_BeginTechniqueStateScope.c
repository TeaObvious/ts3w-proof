/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Moves previous pass override bits into pending mask by OR and clears overrides;
   analogous sampler masks. Called when technique first pass differs from current pass. Pending
   application subsequently restores baseline for states omitted by next pass. */

void __thiscall RenderDevice_BeginTechniqueStateScope(void *this)

{
  uint *puVar1;
  int iVar2;
  
  *(uint *)((int)this + 0x7b8) = *(uint *)((int)this + 0x7b8) | *(uint *)((int)this + 0x7d4);
  *(uint *)((int)this + 0x7bc) = *(uint *)((int)this + 0x7bc) | *(uint *)((int)this + 0x7d8);
  *(uint *)((int)this + 0x7c0) = *(uint *)((int)this + 0x7c0) | *(uint *)((int)this + 0x7dc);
  *(uint *)((int)this + 0x7c4) = *(uint *)((int)this + 0x7c4) | *(uint *)((int)this + 0x7e0);
  *(uint *)((int)this + 0x7c8) = *(uint *)((int)this + 0x7c8) | *(uint *)((int)this + 0x7e4);
  *(uint *)((int)this + 0x7cc) = *(uint *)((int)this + 0x7cc) | *(uint *)((int)this + 0x7e8);
  *(uint *)((int)this + 2000) = *(uint *)((int)this + 2000) | *(uint *)((int)this + 0x7ec);
  *(undefined4 *)((int)this + 0x7d4) = 0;
  *(undefined4 *)((int)this + 0x7d8) = 0;
  *(undefined4 *)((int)this + 0x7dc) = 0;
  *(undefined4 *)((int)this + 0x7e0) = 0;
  *(undefined4 *)((int)this + 0x7e4) = 0;
  *(undefined4 *)((int)this + 0x7e8) = 0;
  *(undefined4 *)((int)this + 0x7ec) = 0;
  puVar1 = (uint *)((int)this + 0x87c);
  iVar2 = 0x10;
  do {
    puVar1[-1] = puVar1[-1] | *puVar1;
    *puVar1 = 0;
    puVar1 = puVar1 + 0x1d;
    iVar2 = iVar2 + -1;
  } while (iVar2 != 0);
  return;
}

