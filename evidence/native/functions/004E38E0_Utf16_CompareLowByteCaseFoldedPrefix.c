/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_004e38e0. Caller-clean stack inputs: two UTF16 pointers and comparison
   count; full EAX -1/0/+1, plain RET. Compare exactly count code units. Each value below256 is
   passed through original C tolower on low byte; code units>=256 remain unchanged. Return0 for zero
   count or equality, otherwise ordered sign. This is not general Unicode case folding. LoadingText
   caller additionally checks equal string lengths and supplies their minimum nonnegative count. */

int __cdecl Utf16_CompareLowByteCaseFoldedPrefix(ushort *param_1,ushort *param_2,int param_3)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  
  while( true ) {
    if (param_3 == 0) {
      return 0;
    }
    uVar1 = *param_1;
    if (uVar1 < 0x100) {
      iVar3 = tolower(uVar1 & 0xff);
      uVar1 = (ushort)iVar3;
    }
    uVar2 = *param_2;
    if (uVar2 < 0x100) {
      iVar3 = tolower(uVar2 & 0xff);
      uVar2 = (ushort)iVar3;
    }
    if (uVar1 != uVar2) break;
    param_1 = param_1 + 1;
    param_2 = param_2 + 1;
    param_3 = param_3 + -1;
  }
  return (-(uint)(uVar1 < uVar2) & 0xfffffffe) + 1;
}

