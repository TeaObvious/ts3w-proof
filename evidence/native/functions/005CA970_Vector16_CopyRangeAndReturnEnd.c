/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 vector16 copy/output-iterator closure: selected5CFCF0 callers physically push five
   DWORDs and clean14h. This body reads only four words: output-iterator pointer, input begin, input
   end, destination; fifth word ignored/opaque, no guessed semantics or formal/type change. Store
   output=destination at5CA988 even for empty input; otherwise copy aligned16-byte records and
   return final destination through output at5CA9A4. Name refers to the out iterator, not a proven
   EAX return ABI. Allocation failure, invalid ranges/alignment and arbitrary exceptions are not
   converted into safe-false behavior. */

void __cdecl
Vector16_CopyRangeAndReturnEnd
          (undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  *param_1 = param_4;
  if (param_2 != param_3) {
    do {
      if (param_4 != (undefined4 *)0x0) {
        uVar1 = param_2[1];
        uVar2 = param_2[2];
        uVar3 = param_2[3];
        *param_4 = *param_2;
        param_4[1] = uVar1;
        param_4[2] = uVar2;
        param_4[3] = uVar3;
      }
      param_2 = param_2 + 4;
      param_4 = param_4 + 4;
    } while (param_2 != param_3);
    *param_1 = param_4;
  }
  return;
}

