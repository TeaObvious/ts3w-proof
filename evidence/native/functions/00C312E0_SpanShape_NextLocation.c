/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): ECX shape plus one four-byte
   output pointer, RET4; physical AL Boolean status only. Signed current-level versus last-level
   check. Advance signed-byte X within current linked span, using span endpoint flag byte at
   endpoint and literal0F in interior; otherwise advance linked spans, row deque and level deque
   with existing cursor mutation. Exhaustion sets current level last+1 and returns AL0 without
   writing a new output location. Success writes X,Z,level,flags then AL1. Preserved unowned
   alignment gaps; inferred upper return bits are artifacts. This is the direct B668A0 location
   consumer protocol, not a native proof of current Int32 tile-to-rectangle or boundary merge
   policy. */

byte __thiscall SpanShape_NextLocation(void *this,char *outLocation4)

{
  char cVar1;
  char cVar2;
  char cVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  char cVar9;
  char local_5;
  
  cVar1 = *(char *)((int)this + 0x3e);
  if (*(char *)((int)this + 1) < cVar1) {
    return 0;
  }
  iVar4 = *(int *)((int)this + 0x40);
  if (*(char *)((int)this + 0x3c) < *(char *)(iVar4 + 5)) {
    cVar9 = *(char *)((int)this + 0x3c) + '\x01';
    *(char *)((int)this + 0x3c) = cVar9;
    if (cVar9 == *(char *)(iVar4 + 5)) {
      local_5 = *(char *)(iVar4 + 7);
    }
    else {
      local_5 = '\x0f';
    }
    cVar2 = *(char *)((int)this + 0x3d);
    *outLocation4 = cVar9;
    outLocation4[1] = cVar2;
    outLocation4[2] = cVar1;
    outLocation4[3] = local_5;
    return 1;
  }
  iVar4 = **(int **)((int)this + 0x40);
  *(int *)((int)this + 0x40) = iVar4;
  if (iVar4 != 0) {
    cVar1 = *(char *)((int)this + 0x3e);
    cVar9 = *(char *)(iVar4 + 4);
    *(char *)((int)this + 0x3c) = cVar9;
    cVar2 = *(char *)(iVar4 + 6);
    outLocation4[1] = *(char *)((int)this + 0x3d);
    outLocation4[3] = cVar2;
    *outLocation4 = cVar9;
    outLocation4[2] = cVar1;
    return 1;
  }
  *(int *)((int)this + 0x44) = *(int *)((int)this + 0x44) + 8;
  if (*(int *)((int)this + 0x44) == *(int *)((int)this + 0x4c)) {
    *(int *)((int)this + 0x50) = *(int *)((int)this + 0x50) + 4;
    iVar4 = **(int **)((int)this + 0x50);
    *(int *)((int)this + 0x48) = iVar4;
    *(int *)((int)this + 0x4c) = iVar4 + 0x100;
    *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x48);
  }
  *(char *)((int)this + 0x3d) = *(char *)((int)this + 0x3d) + '\x01';
  cVar1 = *(char *)((int)this + 0x3d);
  iVar4 = *(int *)(*(int *)((int)this + 0x54) + 0x18);
  iVar5 = *(int *)((int)this + 0x44);
  while (iVar5 != iVar4) {
    if (**(int **)((int)this + 0x44) != 0) {
      iVar4 = **(int **)((int)this + 0x44);
      cVar9 = *(char *)((int)this + 0x3e);
      *(int *)((int)this + 0x40) = iVar4;
      cVar2 = *(char *)(iVar4 + 4);
      *(char *)((int)this + 0x3c) = cVar2;
      cVar3 = *(char *)(iVar4 + 6);
      *outLocation4 = cVar2;
      outLocation4[1] = cVar1;
      outLocation4[2] = cVar9;
      outLocation4[3] = cVar3;
      return 1;
    }
    *(int *)((int)this + 0x44) = *(int *)((int)this + 0x44) + 8;
    if (*(int *)((int)this + 0x44) == *(int *)((int)this + 0x4c)) {
      *(int *)((int)this + 0x50) = *(int *)((int)this + 0x50) + 4;
      iVar5 = **(int **)((int)this + 0x50);
      *(int *)((int)this + 0x48) = iVar5;
      *(int *)((int)this + 0x4c) = iVar5 + 0x100;
      *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x48);
    }
    *(char *)((int)this + 0x3d) = *(char *)((int)this + 0x3d) + '\x01';
    cVar1 = *(char *)((int)this + 0x3d);
    iVar5 = *(int *)((int)this + 0x44);
  }
  *(int *)((int)this + 0x54) = *(int *)((int)this + 0x54) + 0x30;
  if (*(int *)((int)this + 0x54) == *(int *)((int)this + 0x5c)) {
    *(int *)((int)this + 0x60) = *(int *)((int)this + 0x60) + 4;
    iVar4 = **(int **)((int)this + 0x60);
    *(int *)((int)this + 0x58) = iVar4;
    *(int *)((int)this + 0x5c) = iVar4 + 0xc0;
    *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x58);
  }
  *(char *)((int)this + 0x3e) = *(char *)((int)this + 0x3e) + '\x01';
  iVar4 = *(int *)((int)this + 0x54);
  do {
    if (iVar4 == *(int *)((int)this + 0x1c)) {
      *(char *)((int)this + 0x3e) = *(char *)((int)this + 1) + '\x01';
      return 0;
    }
    iVar4 = *(int *)((int)this + 0x54);
    uVar6 = *(undefined4 *)(iVar4 + 0x10);
    uVar7 = *(undefined4 *)(iVar4 + 0xc);
    uVar8 = *(undefined4 *)(iVar4 + 0x14);
    *(undefined4 *)((int)this + 0x44) = *(undefined4 *)(iVar4 + 8);
    *(undefined4 *)((int)this + 0x48) = uVar7;
    *(undefined4 *)((int)this + 0x4c) = uVar6;
    *(undefined4 *)((int)this + 0x50) = uVar8;
    *(undefined1 *)((int)this + 0x3d) = *(undefined1 *)(iVar4 + 0x2c);
    iVar4 = *(int *)(iVar4 + 0x18);
    iVar5 = *(int *)((int)this + 0x44);
    while (iVar5 != iVar4) {
      if (**(int **)((int)this + 0x44) != 0) {
        iVar4 = **(int **)((int)this + 0x44);
        cVar1 = *(char *)((int)this + 0x3e);
        *(int *)((int)this + 0x40) = iVar4;
        cVar9 = *(char *)(iVar4 + 4);
        *(char *)((int)this + 0x3c) = cVar9;
        cVar2 = *(char *)((int)this + 0x3d);
        cVar3 = *(char *)(iVar4 + 6);
        *outLocation4 = cVar9;
        outLocation4[1] = cVar2;
        outLocation4[2] = cVar1;
        outLocation4[3] = cVar3;
        return 1;
      }
      *(int *)((int)this + 0x44) = *(int *)((int)this + 0x44) + 8;
      if (*(int *)((int)this + 0x44) == *(int *)((int)this + 0x4c)) {
        *(int *)((int)this + 0x50) = *(int *)((int)this + 0x50) + 4;
        iVar5 = **(int **)((int)this + 0x50);
        *(int *)((int)this + 0x48) = iVar5;
        *(int *)((int)this + 0x4c) = iVar5 + 0x100;
        *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x48);
      }
      *(char *)((int)this + 0x3d) = *(char *)((int)this + 0x3d) + '\x01';
      iVar5 = *(int *)((int)this + 0x44);
    }
    *(int *)((int)this + 0x54) = *(int *)((int)this + 0x54) + 0x30;
    if (*(int *)((int)this + 0x54) == *(int *)((int)this + 0x5c)) {
      *(int *)((int)this + 0x60) = *(int *)((int)this + 0x60) + 4;
      iVar4 = **(int **)((int)this + 0x60);
      *(int *)((int)this + 0x58) = iVar4;
      *(int *)((int)this + 0x5c) = iVar4 + 0xc0;
      *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x58);
    }
    *(char *)((int)this + 0x3e) = *(char *)((int)this + 0x3e) + '\x01';
    iVar4 = *(int *)((int)this + 0x54);
  } while( true );
}

