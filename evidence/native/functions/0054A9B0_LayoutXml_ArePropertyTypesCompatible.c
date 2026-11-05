/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Instruction-proven custom register ABI: authored type in
   ECX, descriptor low12-bit type in EAX, no stack words/plain RET, bool result AL. This is NOT
   ordinary one-argument fastcall or ECX/EDX two-argument fastcall. Producer0054B6F6..703 loads EAX
   from row+0C maskedFFF and ECX from saved authored type before CALL; second actual
   producer0054B2F9 follows the same contract. Signed/unsigned8/16/32-bit pairs3/7,4/8,5/9 are
   compatible; authored image/texture/hitmask3FD..3FF match descriptor13hex; remaining selected tags
   compare equality. Exact7target switch is separate original data. Actual function custom storage
   retains ECX/EAX inputs and AL result; display calling-convention label does not override those
   physical locations. */

bool __fastcall LayoutXml_ArePropertyTypesCompatible(uint authoredType,uint descriptorType)

{
  if (0x3ff < authoredType) {
switchD_0054a9c8_caseD_6:
    return authoredType == descriptorType;
  }
  if (0x3fc < authoredType) {
    if (descriptorType != 0x13) {
      return false;
    }
    return true;
  }
  switch(authoredType) {
  case 3:
  case 7:
    if ((descriptorType != 3) && (descriptorType != 7)) {
      return false;
    }
    break;
  case 4:
  case 8:
    if (descriptorType != 4) {
      if (descriptorType != 8) {
        return false;
      }
      return true;
    }
    break;
  case 5:
  case 9:
    if (descriptorType != 5) {
      if (descriptorType != 9) {
        return false;
      }
      return true;
    }
    break;
  default:
    goto switchD_0054a9c8_caseD_6;
  }
  return true;
}

