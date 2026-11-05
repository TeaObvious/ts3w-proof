/* Analyst: original PC 1.67 SimIFace.dll; Sims3.SimIFace.GameUtils.
   Complete original facade. FreezeLotLODs forwards its bool to gGameUtils; unlike World facades it has no null guard.
   Original selected metadata tokens: 0x06000e72.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

public static void FreezeLotLODs(bool enable)
{
	gGameUtils.FreezeLotLODs(enable);
}
