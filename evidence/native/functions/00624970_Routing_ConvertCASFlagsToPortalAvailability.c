/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Converts uint32 CAS age/gender/species/handedness into
   original uint64 availability mask. High-word flags for boats/houseboats/sharks are real; retain
   EDX:EAX ABI and unsigned masks. */

ulonglong __cdecl Routing_ConvertCASFlagsToPortalAvailability(uint casFlags)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  
  uVar1 = (casFlags >> 0x14 & 3) << 9 | (casFlags >> 0xc & 3) << 7;
  uVar2 = casFlags & 0xcf00;
  uVar3 = 0;
  uVar4 = casFlags & 0x7f;
  if (uVar2 < 0xb01) {
    if (uVar2 == 0xb00) {
      return (ulonglong)(uVar1 | 0x20000000);
    }
    if (uVar2 < 0x601) {
      if (uVar2 == 0x600) {
        return (ulonglong)(uVar1 | 0x1000000);
      }
      if (uVar2 < 0x301) {
        if (uVar2 == 0x300) {
          if (uVar4 == 4) {
            return (ulonglong)(uVar1 | 0x8000);
          }
          if (uVar4 == 0x20) {
            return (ulonglong)(uVar1 | 0x10000);
          }
          if (uVar4 == 0x40) {
            return (ulonglong)(uVar1 | 0x20000);
          }
        }
        else {
          if (uVar2 == 0x100) {
            return (ulonglong)(uVar1 | uVar4);
          }
          if (uVar2 == 0x200) {
            if (uVar4 == 4) {
              return (ulonglong)(uVar1 | 0x1000);
            }
            if (uVar4 == 0x20) {
              return (ulonglong)(uVar1 | 0x2000);
            }
            if (uVar4 == 0x40) {
              return (ulonglong)(uVar1 | 0x4000);
            }
          }
        }
      }
      else if (uVar2 == 0x400) {
        if (uVar4 == 4) {
          return (ulonglong)(uVar1 | 0x40000);
        }
        if (uVar4 == 0x20) {
          return (ulonglong)(uVar1 | 0x80000);
        }
        if (uVar4 == 0x40) {
          return (ulonglong)(uVar1 | 0x100000);
        }
      }
      else if (uVar2 == 0x500) {
        if (uVar4 == 4) {
          return (ulonglong)(uVar1 | 0x200000);
        }
        if (uVar4 == 0x20) {
          return (ulonglong)(uVar1 | 0x400000);
        }
        if (uVar4 == 0x40) {
          return (ulonglong)(uVar1 | 0x800000);
        }
      }
    }
    else if (uVar2 < 0x901) {
      if (uVar2 == 0x900) {
        return (ulonglong)(uVar1 | 0x8000000);
      }
      if (uVar2 == 0x700) {
        return (ulonglong)(uVar1 | 0x2000000);
      }
      if (uVar2 == 0x800) {
        return (ulonglong)(uVar1 | 0x4000000);
      }
    }
    else if (uVar2 == 0xa00) {
      return (ulonglong)(uVar1 | 0x10000000);
    }
  }
  else if (uVar2 < 0x4201) {
    if (uVar2 == 0x4200) {
      return CONCAT44(8,uVar1);
    }
    if (uVar2 < 0xe01) {
      if (uVar2 == 0xe00) {
        return CONCAT44(1,uVar1);
      }
      if (uVar2 == 0xc00) {
        return (ulonglong)(uVar1 | 0x40000000);
      }
      if (uVar2 == 0xd00) {
        return (ulonglong)(uVar1 | 0x80000000);
      }
    }
    else {
      if (uVar2 == 0xf00) {
        return CONCAT44(2,uVar1);
      }
      if (uVar2 == 0x4100) {
        if (uVar4 == 4) {
          return CONCAT44(0x200,uVar1);
        }
        if (uVar4 == 8) {
          return CONCAT44(0x400,uVar1);
        }
        if (uVar4 == 0x40) {
          return CONCAT44(0x800,uVar1);
        }
        return CONCAT44(4,uVar1);
      }
    }
  }
  else if (uVar2 < 0x4501) {
    if (uVar2 == 0x4500) {
      return CONCAT44(0x40,uVar1);
    }
    if (uVar2 == 0x4300) {
      return CONCAT44(0x10,uVar1);
    }
    if (uVar2 == 0x4400) {
      return CONCAT44(0x20,uVar1);
    }
  }
  else if (uVar2 == 0x4600) {
    if (uVar4 == 4) {
      return CONCAT44(0x80,uVar1);
    }
    if (uVar4 == 0x20) {
      uVar3 = 0x100;
    }
  }
  return CONCAT44(uVar3,uVar1);
}

