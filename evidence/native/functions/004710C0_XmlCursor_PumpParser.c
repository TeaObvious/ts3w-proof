/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004710c3: Previously final input sets cursor error+8 to1 and returns AL0.
 * 004710eb: Read at most2000 bytes through stream+30; a short read marks final input.
 * 00471112: Feed parser with backing bytes, returned length and final flag; continue until token-head+40 becomes nonnull.
 * 00471128: Parse failure obtains parser error and maps it into cursor+8; negative stream read instead stores2.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_PumpParser.
   Physical ABI: ECX cursor; no stack words; AL success only, high EAX unspecified; plain RET. */

bool __thiscall XmlCursor_PumpParser(void *this)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (*(char *)((int)this + 4) != '\0') {
    *(undefined4 *)((int)this + 8) = 1;
    return false;
  }
  iVar2 = *(int *)((int)this + 0x40);
  while( true ) {
    if (iVar2 != 0) {
      return true;
    }
    uVar1 = (**(code **)(**(int **)((int)this + 0x3c) + 0x30))
                      (*(undefined4 *)((int)this + 0x4c),0x2000);
    *(uint *)((int)this + 0x54) = uVar1;
    if ((int)uVar1 < 0) break;
    if (uVar1 < 0x2000) {
      *(undefined1 *)((int)this + 4) = 1;
    }
    iVar2 = FUN_004bba00(*(int *)this,*(void **)((int)this + 0x4c),uVar1,
                         (uint)*(byte *)((int)this + 4));
    if (iVar2 == 0) {
      uVar3 = FUN_004b9a60(*(int *)this);
      uVar3 = FUN_00470ce0(uVar3);
      *(undefined4 *)((int)this + 8) = uVar3;
      return false;
    }
    iVar2 = *(int *)((int)this + 0x40);
  }
  *(undefined4 *)((int)this + 8) = 2;
  return false;
}

