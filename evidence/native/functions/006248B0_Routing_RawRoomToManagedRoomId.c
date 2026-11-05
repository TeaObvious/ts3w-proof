/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67 unsigned16input. Rawroom0..16 maps0; rawroom>16 mapsraw-16. These are
   routingroom ids, not worldids or worldtravel. */

int __cdecl Routing_RawRoomToManagedRoomId(ushort rawRoom)

{
  if (rawRoom < 0x11) {
    return 0;
  }
  return rawRoom - 0x10;
}

