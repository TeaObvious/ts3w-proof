/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). ECX component.
   Returns full UInt32 EAX0/1 from byte [component+0x40]&1. Meaning is inferred from
   geometry/routing admission consumers, not an original symbol.
   
   PC1.67 COMPLETE8-byte scalar read, input ECX component, no stack arguments, plain RET. Original
   instructions are MOVZX EAX,byte ptr [ECX+0x40]; AND EAX,1; RET. MOVZX zero-extends the byte, then
   full-register AND defines every EAX bit: result is FULL UInt32 EAX0/1, not AL-only.
   Frontend78D7A0 tests AL at78D7F9 after the call; that consumer does not narrow the leaf's defined
   full-width result. Earlier MOVAL/ANDAL/upperEAX-undefined annotation was incorrect. Established
   analyst name FootprintComponent_IsRegisteredBit and physical fastcall first ECX parameter are
   preserved for existing canonical callers. Lowbit is the same flag compared/updated by946050
   enabling/disabling; frontend78D7A0 inverts zero into hidden result bit1. Do not equate this
   enabled flag with router-membership receipts or separate per-area enabled mask4. Leaf has no
   null/presence check; frontend checks presence before calling. Analyst roles, not recovered
   original symbols. Metadata correction only; existing8-byte body, Listing, inputs and original
   bytes unchanged. */

uint __fastcall FootprintComponent_IsRegisteredBit(undefined *component)

{
  return (byte)component[0x40] & 1;
}

