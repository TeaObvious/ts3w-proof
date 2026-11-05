/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): Analyst role from actual
   sparse level/row/span storage and direct pool caller B668A0, not a recovered C++ symbol. ECX
   shape plus one output pointer, RET4; physical AL status. If dirty byte +34 is set, call C31F80
   boundary normalization/trim then C31580 signed-span recount, clear dirty. Empty level range sets
   cursor level to lastLevel+1 and returns AL0 without output publication. Otherwise traverse
   retained level/row/span containers, store cursor +3C/+3D/+3E/+40 and four bytes
   X,Z,level,span-edge flags to output; AL1. Signed byte cursor and MOVSX outputs are actual
   instructions. This enumerates one retained location, not current detached rectangle
   partitions/perimeter lists, and performs native shape mutation before iteration. Full shape
   producers/row-normalizer semantics remain separate. */

byte __thiscall SpanShape_BeginLocationEnumeration(void *this,char *outLocation4)

{
  char cVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  
  if (*(char *)((int)this + 0x34) != '\0') {
    SpanShape_TrimEmptyLevelBounds(this);
    SpanShape_RecountLocations(this);
    *(undefined1 *)((int)this + 0x34) = 0;
  }
  if (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c)) {
    *(undefined1 *)((int)this + 0x3e) = *(undefined1 *)this;
    *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0xc);
    *(undefined4 *)((int)this + 0x58) = *(undefined4 *)((int)this + 0x10);
    *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)this + 0x14);
    *(undefined4 *)((int)this + 0x60) = *(undefined4 *)((int)this + 0x18);
    iVar5 = *(int *)((int)this + 0x54);
    do {
      if (iVar5 == *(int *)((int)this + 0x1c)) {
        return 0;
      }
      iVar5 = *(int *)((int)this + 0x54);
      if (*(int *)(iVar5 + 8) != *(int *)(iVar5 + 0x18)) {
        uVar6 = *(undefined4 *)(iVar5 + 0x10);
        uVar7 = *(undefined4 *)(iVar5 + 0x14);
        uVar8 = *(undefined4 *)(iVar5 + 0xc);
        *(int *)((int)this + 0x44) = *(int *)(iVar5 + 8);
        *(undefined4 *)((int)this + 0x48) = uVar8;
        *(undefined4 *)((int)this + 0x4c) = uVar6;
        *(undefined4 *)((int)this + 0x50) = uVar7;
        *(undefined1 *)((int)this + 0x3d) = *(undefined1 *)(iVar5 + 0x2c);
        iVar5 = *(int *)(iVar5 + 0x18);
        iVar9 = *(int *)((int)this + 0x44);
        while (iVar9 != iVar5) {
          if (**(int **)((int)this + 0x44) != 0) {
            iVar5 = **(int **)((int)this + 0x44);
            cVar1 = *(char *)((int)this + 0x3d);
            cVar2 = *(char *)((int)this + 0x3e);
            *(int *)((int)this + 0x40) = iVar5;
            cVar3 = *(char *)(iVar5 + 4);
            *(char *)((int)this + 0x3c) = cVar3;
            cVar4 = *(char *)(iVar5 + 6);
            *outLocation4 = cVar3;
            outLocation4[1] = cVar1;
            outLocation4[2] = cVar2;
            outLocation4[3] = cVar4;
            return 1;
          }
          *(int *)((int)this + 0x44) = *(int *)((int)this + 0x44) + 8;
          if (*(int *)((int)this + 0x44) == *(int *)((int)this + 0x4c)) {
            *(int *)((int)this + 0x50) = *(int *)((int)this + 0x50) + 4;
            iVar9 = **(int **)((int)this + 0x50);
            *(int *)((int)this + 0x48) = iVar9;
            *(int *)((int)this + 0x4c) = iVar9 + 0x100;
            *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x48);
          }
          *(char *)((int)this + 0x3d) = *(char *)((int)this + 0x3d) + '\x01';
          iVar9 = *(int *)((int)this + 0x44);
        }
      }
      *(int *)((int)this + 0x54) = *(int *)((int)this + 0x54) + 0x30;
      if (*(int *)((int)this + 0x54) == *(int *)((int)this + 0x5c)) {
        *(int *)((int)this + 0x60) = *(int *)((int)this + 0x60) + 4;
        iVar5 = **(int **)((int)this + 0x60);
        *(int *)((int)this + 0x58) = iVar5;
        *(int *)((int)this + 0x5c) = iVar5 + 0xc0;
        *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x58);
      }
      *(char *)((int)this + 0x3e) = *(char *)((int)this + 0x3e) + '\x01';
      iVar5 = *(int *)((int)this + 0x54);
    } while( true );
  }
  *(char *)((int)this + 0x3e) = *(char *)((int)this + 1) + '\x01';
  return 0;
}

