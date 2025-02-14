/**
 * This class provided to allow non-RESOLVE objects to interact with RESOLVE
 * objects.
 *
 * Author: H. Smith, May 19th, 2009.
 */

package RESOLVE;

public class RTypeWrapper implements RType {
	private Object myContents;

	public RTypeWrapper(Object o) {
		myContents = o;
	}

	public Object getRep() {
		return myContents;
	}

	public void setRep(Object setRep) {
		myContents = setRep;
	}

	public RType initialValue() {
		return new RTypeWrapper("(An empty RTypeWrapper)");
	}
}
