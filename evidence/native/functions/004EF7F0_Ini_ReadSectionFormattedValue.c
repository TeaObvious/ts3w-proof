/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 physical caller/stack closure: cdecl FOUR fixed words (INI pointer, UTF16 section,
   UTF16 key, UTF16 format), followed by variadic output pointers. AB0B60 pushes FIVE words for
   ToolCosts/CostPerBasementTile: final pointer is tunables+10, fourth points to exact UTF16 %f
   atFA2610. Wrapper obtains text through INI vtable+2C; negative signed EAX skips conversion.
   At4EF840 CALL4FDEA0, a five-byte JMP thunk to4FDB00, passes text, format, and ADDRESS of first
   variadic stack argument. Conversion result retained in ESI/EAX; not Boolean, not three-argument
   float API. Original string cleanup uses local buffer/end pointers. Callee/global text parser
   policy is independent of this binding. Decompiler unaff_ESI/incorrect allocation aliases are
   analysis artifacts if still present.
   
   Physical indirect-call closure: vtable+2C uses ECX INI object and three pushed words
   (section,key,buffer),12byte callee cleanup. The4EF82B call-site prototype records this
   convention; it restores correct local-string/variadic stack tracking without changing
   instructions. */

int __cdecl
Ini_ReadSectionFormattedValue
          (undefined *ini,ushort *sectionUtf16,ushort *entryUtf16,ushort *formatUtf16,...)

{
  int iVar1;
  int iVar2;
  ushort *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  local_10 = (ushort *)&DAT_011c8e54;
  local_c = &DAT_011c8e54;
  iVar2 = 0;
  local_4 = "Services/UTFFoundation/INI";
  local_8 = &DAT_011c8e56;
  iVar1 = (**(code **)(*(int *)ini + 0x2c))(ini,sectionUtf16,entryUtf16,(undefined *)&local_10);
  if (-1 < iVar1) {
    iVar2 = Utf16Scan_ForwardArgumentList(local_10,formatUtf16,&stack0x00000014);
  }
  if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (ushort *)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  return iVar2;
}

