package game.framework;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.locks.*;
import java.lang.ref.*;
import com.runtimeverification.rvmonitor.java.rt.*;
import com.runtimeverification.rvmonitor.java.rt.ref.*;
import com.runtimeverification.rvmonitor.java.rt.table.*;
import com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractIndexingTree;
import com.runtimeverification.rvmonitor.java.rt.tablebase.SetEventDelegator;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple2;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TableAdopter.Tuple3;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IDisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.IMonitor;
import com.runtimeverification.rvmonitor.java.rt.tablebase.DisableHolder;
import com.runtimeverification.rvmonitor.java.rt.tablebase.TerminatedMonitorCleaner;
import java.util.concurrent.atomic.AtomicInteger;
import org.aspectj.lang.*;

final class start_endMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<start_endMonitor> {

	start_endMonitor_Set(){
		this.size = 0;
		this.elements = new start_endMonitor[4];
	}
	final void event_game(Game g) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			start_endMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final start_endMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_game(g);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
	final void event_exitGame(Game g, int errorCode) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			start_endMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final start_endMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_exitGame(g, errorCode);
				if(monitorfinalMonitor.Prop_1_Category_fail) {
					monitorfinalMonitor.Prop_1_handler_fail();
				}
			}
		}
		for(int i = numAlive; i < this.size; i++){
			this.elements[i] = null;
		}
		size = numAlive;
	}
}

class start_endMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractAtomicMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject {
	protected Object clone() {
		try {
			start_endMonitor ret = (start_endMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	static final int Prop_1_transition_game[] = {2, 3, 3, 3};;
	static final int Prop_1_transition_exitGame[] = {3, 3, 1, 3};;

	volatile boolean Prop_1_Category_fail = false;

	private final AtomicInteger pairValue;

	start_endMonitor() {
		this.pairValue = new AtomicInteger(this.calculatePairValue(-1, 0) ) ;

	}

	@Override public final int getState() {
		return this.getState(this.pairValue.get() ) ;
	}
	@Override public final int getLastEvent() {
		return this.getLastEvent(this.pairValue.get() ) ;
	}
	private final int getState(int pairValue) {
		return (pairValue & 3) ;
	}
	private final int getLastEvent(int pairValue) {
		return (pairValue >> 2) ;
	}
	private final int calculatePairValue(int lastEvent, int state) {
		return (((lastEvent + 1) << 2) | state) ;
	}

	private final int handleEvent(int eventId, int[] table) {
		int nextstate;
		while (true) {
			int oldpairvalue = this.pairValue.get() ;
			int oldstate = this.getState(oldpairvalue) ;
			nextstate = table [ oldstate ];
			int nextpairvalue = this.calculatePairValue(eventId, nextstate) ;
			if (this.pairValue.compareAndSet(oldpairvalue, nextpairvalue) ) {
				break;
			}
		}
		return nextstate;
	}

	final boolean Prop_1_event_game(Game g) {
		{
			System.out.println("start game");
		}

		int nextstate = this.handleEvent(0, Prop_1_transition_game) ;
		this.Prop_1_Category_fail = nextstate == 3;

		return true;
	}

	final boolean Prop_1_event_exitGame(Game g, int errorCode) {
		{
			System.err.println("ending");
		}

		int nextstate = this.handleEvent(1, Prop_1_transition_exitGame) ;
		this.Prop_1_Category_fail = nextstate == 3;

		return true;
	}

	final void Prop_1_handler_fail (){
		{
			System.err.println("sequence error at " + com.runtimeverification.rvmonitor.java.rt.ViolationRecorder.getLineOfCode() + ". You must call Game, before endGame");
			this.reset();
		}

	}

	final void reset() {
		this.pairValue.set(this.calculatePairValue(-1, 0) ) ;

		Prop_1_Category_fail = false;
	}

	@Override
	protected final void terminateInternal(int idnum) {
		int lastEvent = this.getLastEvent();

		switch(idnum){
		}
		switch(lastEvent) {
			case -1:
			return;
			case 0:
			//game
			return;
			case 1:
			//exitGame
			return;
		}
		return;
	}

	public static int getNumberOfEvents() {
		return 2;
	}

	public static int getNumberOfStates() {
		return 4;
	}

}

class start_endRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager start_endMapManager;
	static {
		start_endMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		start_endMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock start_end_RVMLock = new ReentrantLock();
	static final Condition start_end_RVMLock_cond = start_end_RVMLock.newCondition();

	private static boolean start_end_activated = false;

	// Declarations for Indexing Trees
	private static final start_endMonitor start_end__Map = new start_endMonitor() ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		return collected;
	}

	// Removing terminated monitors from partitioned sets
	static {
		TerminatedMonitorCleaner.start() ;
	}
	// Setting the behavior of the runtime library according to the compile-time option
	static {
		RuntimeOption.enableFineGrainedLock(false) ;
	}

	public static final void gameEvent(Game g) {
		start_end_activated = true;
		while (!start_end_RVMLock.tryLock()) {
			Thread.yield();
		}

		start_endMonitor matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = start_end__Map;
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			// D(X) main:4
			start_endMonitor created = new start_endMonitor() ;
			matchedEntry = created;
		}
		// D(X) main:8--9
		final start_endMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_game(g);
		if(matchedEntryfinalMonitor.Prop_1_Category_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_fail();
		}

		start_end_RVMLock.unlock();
	}

	public static final void exitGameEvent(Game g, int errorCode) {
		start_end_activated = true;
		while (!start_end_RVMLock.tryLock()) {
			Thread.yield();
		}

		start_endMonitor matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = start_end__Map;
		}
		// D(X) main:1
		if ((matchedEntry == null) ) {
			// D(X) main:4
			start_endMonitor created = new start_endMonitor() ;
			matchedEntry = created;
		}
		// D(X) main:8--9
		final start_endMonitor matchedEntryfinalMonitor = matchedEntry;
		matchedEntry.Prop_1_event_exitGame(g, errorCode);
		if(matchedEntryfinalMonitor.Prop_1_Category_fail) {
			matchedEntryfinalMonitor.Prop_1_handler_fail();
		}

		start_end_RVMLock.unlock();
	}

}


aspect BaseAspect {
	pointcut notwithin() :
	!within(sun..*) &&
	!within(java..*) &&
	!within(javax..*) &&
	!within(com.sun..*) &&
	!within(org.dacapo.harness..*) &&
	!within(org.apache.commons..*) &&
	!within(org.apache.geronimo..*) &&
	!within(net.sf.cglib..*) &&
	!within(mop..*) &&
	!within(javamoprt..*) &&
	!within(rvmonitorrt..*) &&
	!within(com.runtimeverification..*);
}

public aspect start_endMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public start_endMonitorAspect(){
	}

	// Declarations for the Lock
	static ReentrantLock start_end_MOPLock = new ReentrantLock();
	static Condition start_end_MOPLock_cond = start_end_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut start_end_game(Game g) : (call(public void Game.game()) && target(g)) && MOP_CommonPointCut();
	before (Game g) : start_end_game(g) {
		start_endRuntimeMonitor.gameEvent(g);
	}

	pointcut start_end_exitGame(Game g, int errorCode) : (call(public static void Game.exitGame(int)) && target(g) && args(errorCode)) && MOP_CommonPointCut();
	after (Game g, int errorCode) : start_end_exitGame(g, errorCode) {
		start_endRuntimeMonitor.exitGameEvent(g, errorCode);
	}

}
