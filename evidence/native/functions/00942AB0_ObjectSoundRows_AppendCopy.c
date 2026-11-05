/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX vector, source row RET4 void. If end
   unsigned<capacity, publishes end+=20 before copying ID+owned name; null destination skips
   payload. Otherwise calls9427A0 insertion/growth with current end/source. No eight-row limit here;
   admission owns that separate rule. Full generic insertion/allocator exceptional containment
   remains unexpanded. */

void __thiscall ObjectSoundRows_AppendCopy(void *this,void *row)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  if (puVar1 < *(undefined4 **)((int)this + 8)) {
    *(undefined4 **)((int)this + 4) = puVar1 + 5;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = *(undefined4 *)row;
      FUN_004059c0(puVar1 + 1,(undefined4 *)((int)row + 4));
      return;
    }
  }
  else {
    FUN_009427a0(this,puVar1,row);
  }
  return;
}

