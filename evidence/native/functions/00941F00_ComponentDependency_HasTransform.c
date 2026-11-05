/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC 1.67 straight-line leaf; analyst name. Descriptor dependency slot +0x18 for
   Slot (0x0117cab4) and Audio (0x0117c828). Cdecl stack DWORD mask, caller cleans 4 bytes
   (0x00937790). Loads registered Transform mask at 0x011ea158 and returns AL=(componentMask &
   TransformMask)!=0 via SETNE; upper EAX retains unrelated mask bits and is not a Boolean result.
   No memory writes, resource lookup, component creation or recursion. Exact body
   0x00941f00..0x00941f0c (13 bytes). */

bool __cdecl ComponentDependency_HasTransform(uint componentMask)

{
  return (componentMask & DAT_011ea158) != 0;
}

