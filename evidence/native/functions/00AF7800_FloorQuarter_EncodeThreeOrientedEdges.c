/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   From signed-byte tile X/Z and a quarter selector byte, computes x86(1 << selector) and selects
   masks1/2/4/8. Emits three 16-byte records with integer X/Z/type and a low-byte orientation;
   record padding is not initialized. The selected mask determines one boundary edge and two center
   half-diagonals.
   Physical cdecl input/output pointers; caller cleanup. The x86 shift count masks to five bits, so
   do not replace this with an asserted selector-range check. Unsupported resulting masks return
   without writing the output. AF794C is an eight-entry switch table outside the stored function; no
   arbitrary-int coordinate domain is claimed.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __cdecl FloorQuarter_EncodeThreeOrientedEdges(char *param_1,int *param_2)

{
  char cVar1;
  
  switch(1 << (param_1[2] & 0x1fU)) {
  case 1:
    *param_2 = (int)*param_1;
    param_2[1] = (int)param_1[1];
    param_2[2] = 0;
    *(undefined1 *)(param_2 + 3) = 0;
    param_2[4] = (int)*param_1;
    param_2[5] = (int)param_1[1];
    param_2[6] = 2;
    *(undefined1 *)(param_2 + 7) = 0;
    param_2[8] = (int)*param_1;
    cVar1 = param_1[1];
    *(undefined1 *)(param_2 + 0xb) = 1;
    param_2[10] = 3;
    param_2[9] = (int)cVar1;
    return;
  case 2:
    *param_2 = *param_1 + 1;
    cVar1 = param_1[1];
    param_2[2] = 1;
    *(undefined1 *)(param_2 + 3) = 1;
    param_2[1] = (int)cVar1;
    param_2[4] = (int)*param_1;
    param_2[5] = (int)param_1[1];
    param_2[6] = 3;
    *(undefined1 *)(param_2 + 7) = 0;
    param_2[8] = (int)*param_1;
    cVar1 = param_1[1];
    *(undefined1 *)(param_2 + 0xb) = 1;
    param_2[10] = 4;
    param_2[9] = (int)cVar1;
    return;
  case 3:
  case 5:
  case 6:
  case 7:
    goto switchD_00af781e_default;
  case 4:
    *param_2 = (int)*param_1;
    param_2[1] = param_1[1] + 1;
    *(undefined1 *)(param_2 + 3) = 1;
    param_2[2] = 0;
    param_2[4] = (int)*param_1;
    param_2[5] = (int)param_1[1];
    param_2[6] = 4;
    *(undefined1 *)(param_2 + 7) = 0;
    param_2[8] = (int)*param_1;
    cVar1 = param_1[1];
    *(undefined1 *)(param_2 + 0xb) = 1;
    param_2[10] = 5;
    param_2[9] = (int)cVar1;
    return;
  case 8:
    *param_2 = (int)*param_1;
    param_2[1] = (int)param_1[1];
    param_2[2] = 1;
    *(undefined1 *)(param_2 + 3) = 0;
    param_2[4] = (int)*param_1;
    param_2[5] = (int)param_1[1];
    param_2[6] = 5;
    *(undefined1 *)(param_2 + 7) = 0;
    param_2[8] = (int)*param_1;
    cVar1 = param_1[1];
    param_2[10] = 2;
    *(undefined1 *)(param_2 + 0xb) = 1;
    param_2[9] = (int)cVar1;
switchD_00af781e_default:
    return;
  default:
    return;
  }
}

