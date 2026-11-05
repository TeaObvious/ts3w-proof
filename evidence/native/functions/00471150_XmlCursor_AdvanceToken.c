/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 00471153: Advance the current linked token once when present.
 * 00471185: On exhausted queue reset token head/tail/current before pumping more input.
 * 004711a5: Adopt freshly produced head as current; AL1 is the only defined success result.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_AdvanceToken.
   Physical ABI: ECX cursor; no stack words; AL success only; plain RET. */

bool __thiscall XmlCursor_AdvanceToken(void *this)

{
  int *piVar1;
  bool bVar2;
  
  if (*(undefined4 **)((int)this + 0x48) != (undefined4 *)0x0) {
    *(undefined4 *)((int)this + 0x48) = **(undefined4 **)((int)this + 0x48);
  }
  if (*(int *)((int)this + 0x48) == 0) {
    piVar1 = *(int **)((int)this + 0x50);
    if ((*(int **)((int)this + 0x1c) < piVar1) && (piVar1 < *(int **)((int)this + 0x20))) {
      *(int **)((int)this + 0x24) = piVar1;
      *(int **)((int)this + 0x28) = piVar1;
    }
    else {
      FUN_004e8c20((void *)((int)this + 0x18),piVar1);
    }
    *(undefined4 *)((int)this + 0x48) = 0;
    *(undefined4 *)((int)this + 0x44) = 0;
    *(undefined4 *)((int)this + 0x40) = 0;
    bVar2 = XmlCursor_PumpParser(this);
    if (!bVar2) {
      return false;
    }
    *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x40);
  }
  return true;
}

