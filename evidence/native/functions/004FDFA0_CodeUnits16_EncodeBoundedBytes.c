/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl output byte pointer,input16-bit code
   units,outputCapacity,inputUnitLimit; UInt32 required-byte count. Reads MOVZX WORD then1/2/3-byte
   encoding for<80/<800/<10000; does not join surrogates. Four-byte/replacement branches exist in
   ASM but unreachable for zero-extended16-bit input. Stops at NUL or unit limit. Counts required
   bytes even after output capacity blocks writes; output write guard compares cumulative bytes+next
   encoding length STRICTLY<capacity (reserves terminator). On finish, writes NUL only if output
   nonnull AND capacity!=0, even when required count0. No output bounds validation beyond these
   guards and no null input guard for positive input limit. Wrapper passes64/FFFFFFFF; this helper
   is not an arbitrary full UTF-8 scalar codec. */

uint __cdecl
CodeUnits16_EncodeBoundedBytes
          (byte *outputBytes,ushort *inputCodeUnits,uint outputCapacity,uint inputUnitLimit)

{
  ushort uVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint local_4;
  
  local_4 = 0;
  if (inputUnitLimit != 0) {
    uVar7 = 3;
    uVar5 = 4;
    uVar6 = 2;
    uVar8 = 1;
    do {
      uVar1 = *inputCodeUnits;
      uVar4 = (uint)uVar1;
      inputUnitLimit = inputUnitLimit - 1;
      inputCodeUnits = inputCodeUnits + 1;
      bVar3 = (byte)uVar1;
      if (uVar4 < 0x80) {
        if (uVar4 == 0) break;
        if ((outputBytes != (byte *)0x0) && (uVar8 < outputCapacity)) {
          *outputBytes = bVar3;
          outputBytes = outputBytes + 1;
        }
        local_4 = local_4 + 1;
        uVar8 = uVar8 + 1;
        uVar6 = uVar6 + 1;
        uVar5 = uVar5 + 1;
        uVar7 = uVar7 + 1;
      }
      else if (uVar4 < 0x800) {
        if ((outputBytes != (byte *)0x0) && (uVar6 < outputCapacity)) {
          *outputBytes = (byte)(uVar1 >> 6) | 0xc0;
          outputBytes[1] = bVar3 & 0x3f | 0x80;
          outputBytes = outputBytes + 2;
        }
        local_4 = local_4 + 2;
        uVar8 = uVar8 + 2;
        uVar6 = uVar6 + 2;
        uVar5 = uVar5 + 2;
        uVar7 = uVar7 + 2;
      }
      else {
        bVar2 = (byte)(uVar1 >> 8);
        if (uVar4 < 0x10000) {
          if ((outputBytes != (byte *)0x0) && (uVar7 < outputCapacity)) {
            *outputBytes = bVar2 >> 4 | 0xe0;
            outputBytes[1] = (byte)(uVar1 >> 6) & 0x3f | 0x80;
            outputBytes[2] = bVar3 & 0x3f | 0x80;
LAB_004fe107:
            outputBytes = outputBytes + 3;
          }
        }
        else {
          if (uVar4 < 0x200000) {
            if ((outputBytes != (byte *)0x0) && (uVar5 < outputCapacity)) {
              *outputBytes = 0xf0;
              outputBytes[1] = bVar2 >> 4 | 0x80;
              outputBytes[2] = (byte)(uVar1 >> 6) & 0x3f | 0x80;
              outputBytes[3] = bVar3 & 0x3f | 0x80;
              outputBytes = outputBytes + 4;
            }
            local_4 = local_4 + 4;
            uVar8 = uVar8 + 4;
            uVar6 = uVar6 + 4;
            uVar5 = uVar5 + 4;
            uVar7 = uVar7 + 4;
            goto LAB_004fe11b;
          }
          if ((outputBytes != (byte *)0x0) && (uVar7 < outputCapacity)) {
            *outputBytes = 0xef;
            outputBytes[1] = 0xbf;
            outputBytes[2] = 0xbd;
            goto LAB_004fe107;
          }
        }
        local_4 = local_4 + 3;
        uVar8 = uVar8 + 3;
        uVar6 = uVar6 + 3;
        uVar5 = uVar5 + 3;
        uVar7 = uVar7 + 3;
      }
LAB_004fe11b:
    } while (inputUnitLimit != 0);
  }
  if ((outputBytes != (byte *)0x0) && (outputCapacity != 0)) {
    *outputBytes = 0;
  }
  return local_4;
}

