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

final class game_initializationMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<game_initializationMonitor> {

	game_initializationMonitor_Set(){
		this.size = 0;
		this.elements = new game_initializationMonitor[4];
	}
	final void event_game(Game g) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_initializationMonitor monitorfinalMonitor = monitor;
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
	final void event_update(Game g, GameTime gt) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_initializationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_update(g, gt);
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
	final void event_endProg() {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			game_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final game_initializationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_endProg();
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

interface Igame_initializationMonitor extends IMonitor, IDisableHolder {
}

class game_initializationDisableHolder extends DisableHolder implements Igame_initializationMonitor {
	game_initializationDisableHolder(long tau) {
		super(tau);
	}

	@Override
	public final boolean isTerminated() {
		return false;
	}

	@Override
	public int getLastEvent() {
		return -1;
	}

	@Override
	public int getState() {
		return -1;
	}

}

class game_initializationMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractSynchronizedMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject, Igame_initializationMonitor {
	protected Object clone() {
		try {
			game_initializationMonitor ret = (game_initializationMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	WeakReference Ref_g = null;
	WeakReference Ref_g2d = null;
	WeakReference Ref_gt = null;
	int Prop_1_state;
	static final int Prop_1_transition_game[] = {1, 3, 3, 3};;
	static final int Prop_1_transition_update[] = {3, 2, 3, 3};;
	static final int Prop_1_transition_endProg[] = {3, 3, 3, 3};;

	boolean Prop_1_Category_fail = false;

	game_initializationMonitor(long tau) {
		this.tau = tau;
		Prop_1_state = 0;

	}

	@Override
	public final int getState() {
		return Prop_1_state;
	}

	private final long tau;
	private long disable = -1;

	@Override
	public final long getTau() {
		return this.tau;
	}

	@Override
	public final long getDisable() {
		return this.disable;
	}

	@Override
	public final void setDisable(long value) {
		this.disable = value;
	}

	final boolean Prop_1_event_game(Game g) {
		GameTime gt = null;
		if(Ref_gt != null){
			gt = (GameTime)Ref_gt.get();
		}
		Graphics2D g2d = null;
		if(Ref_g2d != null){
			g2d = (Graphics2D)Ref_g2d.get();
		}
		{
			System.out.println("start game");
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		RVM_lastevent = 0;

		Prop_1_state = Prop_1_transition_game[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final boolean Prop_1_event_update(Game g, GameTime gt) {
		Graphics2D g2d = null;
		if(Ref_g2d != null){
			g2d = (Graphics2D)Ref_g2d.get();
		}
		{
			System.out.println("update");
		}
		if(Ref_g == null){
			Ref_g = new WeakReference(g);
		}
		if(Ref_gt == null){
			Ref_gt = new WeakReference(gt);
		}
		RVM_lastevent = 1;

		Prop_1_state = Prop_1_transition_update[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final boolean Prop_1_event_endProg() {
		Game g = null;
		if(Ref_g != null){
			g = (Game)Ref_g.get();
		}
		GameTime gt = null;
		if(Ref_gt != null){
			gt = (GameTime)Ref_gt.get();
		}
		Graphics2D g2d = null;
		if(Ref_g2d != null){
			g2d = (Graphics2D)Ref_g2d.get();
		}
		{
			System.err.println("End");
		}
		RVM_lastevent = 2;

		Prop_1_state = Prop_1_transition_endProg[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final void Prop_1_handler_fail (){
		{
			System.err.println("sequence error at " + com.runtimeverification.rvmonitor.java.rt.ViolationRecorder.getLineOfCode() + ". You must call Game, PreformanceTiming and then Gametime.");
			this.reset();
		}

	}

	final void reset() {
		RVM_lastevent = -1;
		Prop_1_state = 0;
		Prop_1_Category_fail = false;
	}

	// RVMRef_g was suppressed to reduce memory overhead
	// RVMRef_gt was suppressed to reduce memory overhead
	// RVMRef_g2d was suppressed to reduce memory overhead

	@Override
	protected final void terminateInternal(int idnum) {
		switch(idnum){
			case 0:
			break;
			case 1:
			break;
			case 2:
			break;
		}
		switch(RVM_lastevent) {
			case -1:
			return;
			case 0:
			//game
			return;
			case 1:
			//update
			return;
			case 2:
			//endProg
			return;
		}
		return;
	}

	public static int getNumberOfEvents() {
		return 3;
	}

	public static int getNumberOfStates() {
		return 4;
	}

}

class game_initializationRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager game_initializationMapManager;
	static {
		game_initializationMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		game_initializationMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock game_initialization_RVMLock = new ReentrantLock();
	static final Condition game_initialization_RVMLock_cond = game_initialization_RVMLock.newCondition();

	// Declarations for Timestamps
	private static long game_initialization_timestamp = 1;

	private static boolean game_initialization_activated = false;

	// Declarations for Indexing Trees
	private static Object game_initialization_g_Map_cachekey_g;
	private static Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> game_initialization_g_Map_cachevalue;
	private static Object game_initialization_g_gt_Map_cachekey_g;
	private static Object game_initialization_g_gt_Map_cachekey_gt;
	private static Tuple2<game_initializationMonitor_Set, game_initializationMonitor> game_initialization_g_gt_Map_cachevalue;
	private static final Tuple2<game_initializationMonitor_Set, game_initializationMonitor> game_initialization__Map = new Tuple2<game_initializationMonitor_Set, game_initializationMonitor>(new game_initializationMonitor_Set() , null) ;
	private static final MapOfAll<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> game_initialization_g_gt_Map = new MapOfAll<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>(0) ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		collected += game_initialization_g_gt_Map.cleanUpUnnecessaryMappings();
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
		game_initialization_activated = true;
		while (!game_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_g = null;
		Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((g == game_initialization_g_Map_cachekey_g) ) {
			matchedEntry = game_initialization_g_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>() ;
					game_initialization_g_gt_Map.putNode(wr_g, node_g) ;
					node_g.setValue1(new MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>(1) ) ;
					node_g.setValue2(new game_initializationMonitor_Set() ) ;
				}
				matchedEntry = node_g;
			}
		}
		// D(X) main:1
		game_initializationMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					game_initializationMonitor itmdLeaf = game_initialization__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_initializationMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						game_initializationMonitor created = (game_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						game_initializationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_initializationMonitor_Set targetSet = game_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_initializationMonitor created = new game_initializationMonitor(game_initialization_timestamp++) ;
				matchedEntry.setValue3(created) ;
				game_initializationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_initializationMonitor_Set targetSet = game_initialization__Map.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(game_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		game_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_game(g);

		if ((cachehit == false) ) {
			game_initialization_g_Map_cachekey_g = g;
			game_initialization_g_Map_cachevalue = matchedEntry;
		}

		game_initialization_RVMLock.unlock();
	}

	public static final void updateEvent(Game g, GameTime gt) {
		game_initialization_activated = true;
		while (!game_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_g = null;
		CachedWeakReference wr_gt = null;
		Tuple2<game_initializationMonitor_Set, game_initializationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((g == game_initialization_g_gt_Map_cachekey_g) && (gt == game_initialization_g_gt_Map_cachekey_gt) ) ) {
			matchedEntry = game_initialization_g_gt_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_g = new CachedWeakReference(g) ;
			wr_gt = new CachedWeakReference(gt) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
				if ((node_g == null) ) {
					node_g = new Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>() ;
					game_initialization_g_gt_Map.putNode(wr_g, node_g) ;
					node_g.setValue1(new MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>(1) ) ;
					node_g.setValue2(new game_initializationMonitor_Set() ) ;
				}
				Tuple2<game_initializationMonitor_Set, game_initializationMonitor> node_g_gt = node_g.getValue1() .getNodeEquivalent(wr_gt) ;
				if ((node_g_gt == null) ) {
					node_g_gt = new Tuple2<game_initializationMonitor_Set, game_initializationMonitor>() ;
					node_g.getValue1() .putNode(wr_gt, node_g_gt) ;
					node_g_gt.setValue1(new game_initializationMonitor_Set() ) ;
				}
				matchedEntry = node_g_gt;
			}
		}
		// D(X) main:1
		game_initializationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_g == null) ) {
				wr_g = new CachedWeakReference(g) ;
			}
			if ((wr_gt == null) ) {
				wr_gt = new CachedWeakReference(gt) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <g>
				game_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
					if ((node_g != null) ) {
						game_initializationMonitor itmdLeaf = node_g.getValue3() ;
						sourceLeaf = itmdLeaf;
					}
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g, gt>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple2<game_initializationMonitor_Set, game_initializationMonitor> node_g_gt = node_g.getValue1() .getNodeEquivalent(wr_gt) ;
							if ((node_g_gt != null) ) {
								game_initializationMonitor itmdLeaf = node_g_gt.getValue2() ;
								if ((itmdLeaf != null) ) {
									if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
										definable = false;
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						game_initializationMonitor created = (game_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						game_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_initializationMonitor_Set targetSet = game_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>() ;
								game_initialization_g_gt_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>(1) ) ;
								node_g.setValue2(new game_initializationMonitor_Set() ) ;
							}
							game_initializationMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				game_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					game_initializationMonitor itmdLeaf = game_initialization__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <g>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							game_initializationMonitor itmdLeaf = node_g.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <g, gt>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
						if ((node_g != null) ) {
							Tuple2<game_initializationMonitor_Set, game_initializationMonitor> node_g_gt = node_g.getValue1() .getNodeEquivalent(wr_gt) ;
							if ((node_g_gt != null) ) {
								game_initializationMonitor itmdLeaf = node_g_gt.getValue2() ;
								if ((itmdLeaf != null) ) {
									if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
										definable = false;
									}
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						game_initializationMonitor created = (game_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						game_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							game_initializationMonitor_Set targetSet = game_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <g>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
							if ((node_g == null) ) {
								node_g = new Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>() ;
								game_initialization_g_gt_Map.putNode(wr_g, node_g) ;
								node_g.setValue1(new MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>(1) ) ;
								node_g.setValue2(new game_initializationMonitor_Set() ) ;
							}
							game_initializationMonitor_Set targetSet = node_g.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_initializationMonitor created = new game_initializationMonitor(game_initialization_timestamp++) ;
				matchedEntry.setValue2(created) ;
				game_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					game_initializationMonitor_Set targetSet = game_initialization__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <g>
				{
					// InsertMonitor
					Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor> node_g = game_initialization_g_gt_Map.getNodeEquivalent(wr_g) ;
					if ((node_g == null) ) {
						node_g = new Tuple3<MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>, game_initializationMonitor_Set, game_initializationMonitor>() ;
						game_initialization_g_gt_Map.putNode(wr_g, node_g) ;
						node_g.setValue1(new MapOfSetMonitor<game_initializationMonitor_Set, game_initializationMonitor>(1) ) ;
						node_g.setValue2(new game_initializationMonitor_Set() ) ;
					}
					game_initializationMonitor_Set targetSet = node_g.getValue2() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			game_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(game_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		game_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_update(g, gt);

		if ((cachehit == false) ) {
			game_initialization_g_gt_Map_cachekey_g = g;
			game_initialization_g_gt_Map_cachekey_gt = gt;
			game_initialization_g_gt_Map_cachevalue = matchedEntry;
		}

		game_initialization_RVMLock.unlock();
	}

	public static final void endProgEvent() {
		game_initialization_activated = true;
		while (!game_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		Tuple2<game_initializationMonitor_Set, game_initializationMonitor> matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = game_initialization__Map;
		}
		// D(X) main:1
		game_initializationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				game_initializationMonitor created = new game_initializationMonitor(game_initialization_timestamp++) ;
				matchedEntry.setValue2(created) ;
				game_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
			}
			// D(X) main:6
			game_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(game_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		game_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_endProg();

		game_initialization_RVMLock.unlock();
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

public aspect game_initializationMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public game_initializationMonitorAspect(){
		Runtime.getRuntime().addShutdownHook(new game_initialization_DummyHookThread());
	}

	// Declarations for the Lock
	static ReentrantLock game_initialization_MOPLock = new ReentrantLock();
	static Condition game_initialization_MOPLock_cond = game_initialization_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut game_initialization_update(Game g, GameTime gt) : (call(public void Game.update(GameTime)) && target(g) && args(gt)) && MOP_CommonPointCut();
	before (Game g, GameTime gt) : game_initialization_update(g, gt) {
		game_initializationRuntimeMonitor.updateEvent(g, gt);
	}

	pointcut game_initialization_game(Game g) : (call(public void Game.game()) && target(g)) && MOP_CommonPointCut();
	before (Game g) : game_initialization_game(g) {
		game_initializationRuntimeMonitor.gameEvent(g);
	}

	class game_initialization_DummyHookThread extends Thread {
		public void run(){
			game_initializationRuntimeMonitor.endProgEvent();
		}
	}
}
