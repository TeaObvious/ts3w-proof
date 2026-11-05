// Original PC 1.67 SimIFace.dll. Actual ILSpy C#; paired complete original IL06000BCA.
// Caches the first nonnull ConstructorInfo, invokes zero arguments, returns null while no slot is available.
using System;
using System.Reflection;

namespace Sims3.SimIFace;

internal sealed class EventQueueHost
{
	private static ConstructorInfo sCtorInfo;

	public static IEventQueue CreateEventQueue()
	{
		if ((object)sCtorInfo == null)
		{
			sCtorInfo = (ConstructorInfo)AppDomain.CurrentDomain.GetData("EventQueueCtor");
			if ((object)sCtorInfo == null)
			{
				return null;
			}
		}
		return (IEventQueue)sCtorInfo.Invoke(new object[0]);
	}
}
