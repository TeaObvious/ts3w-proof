/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 formatted INI wrapper. Physical callers supply INI pointer, UTF16 section, UTF16
   key and UTF16 format as four fixed stack words followed by output-pointer varargs. Calls INI
   virtual+2C with section, key and local text-buffer address. Only lookup EAX=0 skips conversion
   (TEST/JZ at4EF8AD/4EF8AF); nonzero invokes4FDEA0 with local text, format and address of the first
   output-pointer argument. Returns full scanner EAX after conditional local-string cleanup. AB0B60
   selects LotWorth/LotWorthPerUnitLandArea/%f and ignores the return; its scanner path calls
   imported wcstod and stores binary32 without whole-input, finite or nonnegative checks. Actual
   lookup returns-1 on missing/error and0 for found-empty. Current inferred3-input signature is
   incomplete; physical varargs are not a Bool ABI. Lower CRT locale, source decoding and
   destination initialization belong to their own owners. */

int __cdecl
Ini_ReadSectionFormattedValueOnNonzeroLookup(int *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int unaff_ESI;
  int iVar2;
  ushort *inputUtf16;
  undefined1 *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  local_10 = &DAT_011c8e54;
  local_c = &DAT_011c8e54;
  iVar2 = 0;
  local_4 = "Services/UTFFoundation/INI";
  local_8 = &DAT_011c8e56;
  inputUtf16 = (ushort *)param_3;
  iVar1 = (**(code **)(*param_1 + 0x2c))(param_2,param_3,&local_10);
  if (iVar1 != 0) {
    iVar2 = Utf16Scan_ForwardArgumentList(inputUtf16,(ushort *)param_1,(undefined *)&param_2);
  }
  if ((2 < (int)(unaff_ESI - (int)inputUtf16 & 0xfffffffeU)) && (inputUtf16 != (ushort *)0x0)) {
    Memory_FreeIfNonNull(inputUtf16);
  }
  return iVar2;
}

