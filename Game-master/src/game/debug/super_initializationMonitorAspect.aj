package game.debug;
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

final class super_initializationMonitor_Set extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractMonitorSet<super_initializationMonitor> {

	super_initializationMonitor_Set(){
		this.size = 0;
		this.elements = new super_initializationMonitor[4];
	}
	final void event_initialize(Game game) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			super_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final super_initializationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_initialize(game);
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
	final void event_update(Game game, GameTime gt) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			super_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final super_initializationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_update(game, gt);
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
	final void event_draw(Game game, Graphics2D g2d) {
		int numAlive = 0 ;
		for(int i = 0; i < this.size; i++){
			super_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final super_initializationMonitor monitorfinalMonitor = monitor;
				monitor.Prop_1_event_draw(game, g2d);
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
			super_initializationMonitor monitor = this.elements[i];
			if(!monitor.isTerminated()){
				elements[numAlive] = monitor;
				numAlive++;

				final super_initializationMonitor monitorfinalMonitor = monitor;
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

interface Isuper_initializationMonitor extends IMonitor, IDisableHolder {
}

class super_initializationDisableHolder extends DisableHolder implements Isuper_initializationMonitor {
	super_initializationDisableHolder(long tau) {
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

class super_initializationMonitor extends com.runtimeverification.rvmonitor.java.rt.tablebase.AbstractSynchronizedMonitor implements Cloneable, com.runtimeverification.rvmonitor.java.rt.RVMObject, Isuper_initializationMonitor {
	protected Object clone() {
		try {
			super_initializationMonitor ret = (super_initializationMonitor) super.clone();
			return ret;
		}
		catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	WeakReference Ref_game = null;
	WeakReference Ref_g2d = null;
	WeakReference Ref_gt = null;
	int Prop_1_state;
	static final int Prop_1_transition_initialize[] = {1, 1, 2, 3};;
	static final int Prop_1_transition_update[] = {3, 2, 2, 3};;
	static final int Prop_1_transition_draw[] = {3, 3, 2, 3};;
	static final int Prop_1_transition_endProg[] = {3, 3, 2, 3};;

	boolean Prop_1_Category_fail = false;

	super_initializationMonitor(long tau) {
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

	final boolean Prop_1_event_initialize(Game game) {
		GameTime gt = null;
		if(Ref_gt != null){
			gt = (GameTime)Ref_gt.get();
		}
		Graphics2D g2d = null;
		if(Ref_g2d != null){
			g2d = (Graphics2D)Ref_g2d.get();
		}
		{
			System.out.println("initialize");
		}
		if(Ref_game == null){
			Ref_game = new WeakReference(game);
		}
		RVM_lastevent = 0;

		Prop_1_state = Prop_1_transition_initialize[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final boolean Prop_1_event_update(Game game, GameTime gt) {
		Graphics2D g2d = null;
		if(Ref_g2d != null){
			g2d = (Graphics2D)Ref_g2d.get();
		}
		{
			System.out.println("update");
		}
		if(Ref_game == null){
			Ref_game = new WeakReference(game);
		}
		if(Ref_gt == null){
			Ref_gt = new WeakReference(gt);
		}
		RVM_lastevent = 1;

		Prop_1_state = Prop_1_transition_update[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final boolean Prop_1_event_draw(Game game, Graphics2D g2d) {
		GameTime gt = null;
		if(Ref_gt != null){
			gt = (GameTime)Ref_gt.get();
		}
		{
			System.out.println("draw");
		}
		if(Ref_game == null){
			Ref_game = new WeakReference(game);
		}
		if(Ref_g2d == null){
			Ref_g2d = new WeakReference(g2d);
		}
		RVM_lastevent = 2;

		Prop_1_state = Prop_1_transition_draw[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final boolean Prop_1_event_endProg() {
		Game game = null;
		if(Ref_game != null){
			game = (Game)Ref_game.get();
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
		RVM_lastevent = 3;

		Prop_1_state = Prop_1_transition_endProg[Prop_1_state];
		Prop_1_Category_fail = Prop_1_state == 3;
		return true;
	}

	final void Prop_1_handler_fail (){
		{
			System.err.println("sequence error at " + com.runtimeverification.rvmonitor.java.rt.ViolationRecorder.getLineOfCode() + ". You must call initialize, update and then draw.");
			this.reset();
		}

	}

	final void reset() {
		RVM_lastevent = -1;
		Prop_1_state = 0;
		Prop_1_Category_fail = false;
	}

	// RVMRef_game was suppressed to reduce memory overhead
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
			//initialize
			return;
			case 1:
			//update
			return;
			case 2:
			//draw
			return;
			case 3:
			//endProg
			return;
		}
		return;
	}

	public static int getNumberOfEvents() {
		return 4;
	}

	public static int getNumberOfStates() {
		return 4;
	}

}

class super_initializationRuntimeMonitor implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	private static com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager super_initializationMapManager;
	static {
		super_initializationMapManager = new com.runtimeverification.rvmonitor.java.rt.map.RVMMapManager();
		super_initializationMapManager.start();
	}

	// Declarations for the Lock
	static final ReentrantLock super_initialization_RVMLock = new ReentrantLock();
	static final Condition super_initialization_RVMLock_cond = super_initialization_RVMLock.newCondition();

	// Declarations for Timestamps
	private static long super_initialization_timestamp = 1;

	private static boolean super_initialization_activated = false;

	// Declarations for Indexing Trees
	private static Object super_initialization_game_Map_cachekey_game;
	private static Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> super_initialization_game_Map_cachevalue;
	private static Object super_initialization_game_g2d_Map_cachekey_g2d;
	private static Object super_initialization_game_g2d_Map_cachekey_game;
	private static Tuple2<super_initializationMonitor_Set, super_initializationMonitor> super_initialization_game_g2d_Map_cachevalue;
	private static Object super_initialization_game_gt_Map_cachekey_game;
	private static Object super_initialization_game_gt_Map_cachekey_gt;
	private static Tuple2<super_initializationMonitor_Set, super_initializationMonitor> super_initialization_game_gt_Map_cachevalue;
	private static final Tuple2<super_initializationMonitor_Set, super_initializationMonitor> super_initialization__Map = new Tuple2<super_initializationMonitor_Set, super_initializationMonitor>(new super_initializationMonitor_Set() , null) ;
	private static final MapOfAll<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> super_initialization_game_g2d_Map = new MapOfAll<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>(0) ;
	private static final MapOfMap<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>> super_initialization_game_gt_Map = new MapOfMap<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>>(0) ;

	public static int cleanUp() {
		int collected = 0;
		// indexing trees
		collected += super_initialization_game_g2d_Map.cleanUpUnnecessaryMappings();
		collected += super_initialization_game_gt_Map.cleanUpUnnecessaryMappings();
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

	public static final void initializeEvent(Game game) {
		super_initialization_activated = true;
		while (!super_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_game = null;
		Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if ((game == super_initialization_game_Map_cachekey_game) ) {
			matchedEntry = super_initialization_game_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_game = new CachedWeakReference(game) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
				if ((node_game == null) ) {
					node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
					super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
					node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
					node_game.setValue2(new super_initializationMonitor_Set() ) ;
				}
				matchedEntry = node_game;
			}
		}
		// D(X) main:1
		super_initializationMonitor matchedLeaf = matchedEntry.getValue3() ;
		if ((matchedLeaf == null) ) {
			if ((wr_game == null) ) {
				wr_game = new CachedWeakReference(game) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				super_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					super_initializationMonitor itmdLeaf = super_initialization__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <game>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							super_initializationMonitor itmdLeaf = node_game.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					if (definable) {
						// D(X) defineTo:6
						super_initializationMonitor created = (super_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue3(created) ;
						matchedLeaf = created;
						super_initializationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				super_initializationMonitor created = new super_initializationMonitor(super_initialization_timestamp++) ;
				matchedEntry.setValue3(created) ;
				super_initializationMonitor_Set enclosingSet = matchedEntry.getValue2() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			super_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue3() ;
			disableUpdatedLeaf.setDisable(super_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		super_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue2() ;
		stateTransitionedSet.event_initialize(game);

		if ((cachehit == false) ) {
			super_initialization_game_Map_cachekey_game = game;
			super_initialization_game_Map_cachevalue = matchedEntry;
		}

		super_initialization_RVMLock.unlock();
	}

	public static final void updateEvent(Game game, GameTime gt) {
		super_initialization_activated = true;
		while (!super_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_game = null;
		CachedWeakReference wr_gt = null;
		Tuple2<super_initializationMonitor_Set, super_initializationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((game == super_initialization_game_gt_Map_cachekey_game) && (gt == super_initialization_game_gt_Map_cachekey_gt) ) ) {
			matchedEntry = super_initialization_game_gt_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_game = new CachedWeakReference(game) ;
			wr_gt = new CachedWeakReference(gt) ;
			{
				// FindOrCreateEntry
				MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_gt_Map.getNodeEquivalent(wr_game) ;
				if ((node_game == null) ) {
					node_game = new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ;
					super_initialization_game_gt_Map.putNode(wr_game, node_game) ;
				}
				Tuple2<super_initializationMonitor_Set, super_initializationMonitor> node_game_gt = node_game.getNodeEquivalent(wr_gt) ;
				if ((node_game_gt == null) ) {
					node_game_gt = new Tuple2<super_initializationMonitor_Set, super_initializationMonitor>() ;
					node_game.putNode(wr_gt, node_game_gt) ;
					node_game_gt.setValue1(new super_initializationMonitor_Set() ) ;
				}
				matchedEntry = node_game_gt;
			}
		}
		// D(X) main:1
		super_initializationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_game == null) ) {
				wr_game = new CachedWeakReference(game) ;
			}
			if ((wr_gt == null) ) {
				wr_gt = new CachedWeakReference(gt) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				super_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					super_initializationMonitor itmdLeaf = super_initialization__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <game>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							super_initializationMonitor itmdLeaf = node_game.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <game, gt>
					if (definable) {
						// FindCode
						MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_gt_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							Tuple2<super_initializationMonitor_Set, super_initializationMonitor> node_game_gt = node_game.getNodeEquivalent(wr_gt) ;
							if ((node_game_gt != null) ) {
								super_initializationMonitor itmdLeaf = node_game_gt.getValue2() ;
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
						super_initializationMonitor created = (super_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <game>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
							if ((node_game == null) ) {
								node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
								super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
								node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
								node_game.setValue2(new super_initializationMonitor_Set() ) ;
							}
							super_initializationMonitor_Set targetSet = node_game.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				super_initializationMonitor created = new super_initializationMonitor(super_initialization_timestamp++) ;
				matchedEntry.setValue2(created) ;
				super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <game>
				{
					// InsertMonitor
					Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
					if ((node_game == null) ) {
						node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
						super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
						node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
						node_game.setValue2(new super_initializationMonitor_Set() ) ;
					}
					super_initializationMonitor_Set targetSet = node_game.getValue2() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			super_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(super_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		super_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_update(game, gt);

		if ((cachehit == false) ) {
			super_initialization_game_gt_Map_cachekey_game = game;
			super_initialization_game_gt_Map_cachekey_gt = gt;
			super_initialization_game_gt_Map_cachevalue = matchedEntry;
		}

		super_initialization_RVMLock.unlock();
	}

	public static final void drawEvent(Game game, Graphics2D g2d) {
		super_initialization_activated = true;
		while (!super_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		CachedWeakReference wr_game = null;
		CachedWeakReference wr_g2d = null;
		Tuple2<super_initializationMonitor_Set, super_initializationMonitor> matchedEntry = null;
		boolean cachehit = false;
		if (((g2d == super_initialization_game_g2d_Map_cachekey_g2d) && (game == super_initialization_game_g2d_Map_cachekey_game) ) ) {
			matchedEntry = super_initialization_game_g2d_Map_cachevalue;
			cachehit = true;
		}
		else {
			wr_game = new CachedWeakReference(game) ;
			wr_g2d = new CachedWeakReference(g2d) ;
			{
				// FindOrCreateEntry
				Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
				if ((node_game == null) ) {
					node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
					super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
					node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
					node_game.setValue2(new super_initializationMonitor_Set() ) ;
				}
				Tuple2<super_initializationMonitor_Set, super_initializationMonitor> node_game_g2d = node_game.getValue1() .getNodeEquivalent(wr_g2d) ;
				if ((node_game_g2d == null) ) {
					node_game_g2d = new Tuple2<super_initializationMonitor_Set, super_initializationMonitor>() ;
					node_game.getValue1() .putNode(wr_g2d, node_game_g2d) ;
					node_game_g2d.setValue1(new super_initializationMonitor_Set() ) ;
				}
				matchedEntry = node_game_g2d;
			}
		}
		// D(X) main:1
		super_initializationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((wr_game == null) ) {
				wr_game = new CachedWeakReference(game) ;
			}
			if ((wr_g2d == null) ) {
				wr_g2d = new CachedWeakReference(g2d) ;
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <game>
				super_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
					if ((node_game != null) ) {
						super_initializationMonitor itmdLeaf = node_game.getValue3() ;
						sourceLeaf = itmdLeaf;
					}
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <game, g2d>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							Tuple2<super_initializationMonitor_Set, super_initializationMonitor> node_game_g2d = node_game.getValue1() .getNodeEquivalent(wr_g2d) ;
							if ((node_game_g2d != null) ) {
								super_initializationMonitor itmdLeaf = node_game_g2d.getValue2() ;
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
						super_initializationMonitor created = (super_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <game>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
							if ((node_game == null) ) {
								node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
								super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
								node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
								node_game.setValue2(new super_initializationMonitor_Set() ) ;
							}
							super_initializationMonitor_Set targetSet = node_game.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			{
				// D(X) createNewMonitorStates:4 when Dom(theta'') = <>
				super_initializationMonitor sourceLeaf = null;
				{
					// FindCode
					super_initializationMonitor itmdLeaf = super_initialization__Map.getValue2() ;
					sourceLeaf = itmdLeaf;
				}
				if ((sourceLeaf != null) ) {
					boolean definable = true;
					// D(X) defineTo:1--5 for <game>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							super_initializationMonitor itmdLeaf = node_game.getValue3() ;
							if ((itmdLeaf != null) ) {
								if (((itmdLeaf.getDisable() > sourceLeaf.getTau() ) || ((itmdLeaf.getTau() > 0) && (itmdLeaf.getTau() < sourceLeaf.getTau() ) ) ) ) {
									definable = false;
								}
							}
						}
					}
					// D(X) defineTo:1--5 for <game, g2d>
					if (definable) {
						// FindCode
						Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
						if ((node_game != null) ) {
							Tuple2<super_initializationMonitor_Set, super_initializationMonitor> node_game_g2d = node_game.getValue1() .getNodeEquivalent(wr_g2d) ;
							if ((node_game_g2d != null) ) {
								super_initializationMonitor itmdLeaf = node_game_g2d.getValue2() ;
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
						super_initializationMonitor created = (super_initializationMonitor)sourceLeaf.clone() ;
						matchedEntry.setValue2(created) ;
						matchedLeaf = created;
						super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
						enclosingSet.add(created) ;
						// D(X) defineTo:7 for <>
						{
							// InsertMonitor
							super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
							targetSet.add(created) ;
						}
						// D(X) defineTo:7 for <game>
						{
							// InsertMonitor
							Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
							if ((node_game == null) ) {
								node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
								super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
								node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
								node_game.setValue2(new super_initializationMonitor_Set() ) ;
							}
							super_initializationMonitor_Set targetSet = node_game.getValue2() ;
							targetSet.add(created) ;
						}
					}
				}
			}
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				super_initializationMonitor created = new super_initializationMonitor(super_initialization_timestamp++) ;
				matchedEntry.setValue2(created) ;
				super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
				// D(X) defineNew:5 for <>
				{
					// InsertMonitor
					super_initializationMonitor_Set targetSet = super_initialization__Map.getValue1() ;
					targetSet.add(created) ;
				}
				// D(X) defineNew:5 for <game>
				{
					// InsertMonitor
					Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor> node_game = super_initialization_game_g2d_Map.getNodeEquivalent(wr_game) ;
					if ((node_game == null) ) {
						node_game = new Tuple3<MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>, super_initializationMonitor_Set, super_initializationMonitor>() ;
						super_initialization_game_g2d_Map.putNode(wr_game, node_game) ;
						node_game.setValue1(new MapOfSetMonitor<super_initializationMonitor_Set, super_initializationMonitor>(1) ) ;
						node_game.setValue2(new super_initializationMonitor_Set() ) ;
					}
					super_initializationMonitor_Set targetSet = node_game.getValue2() ;
					targetSet.add(created) ;
				}
			}
			// D(X) main:6
			super_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(super_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		super_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_draw(game, g2d);

		if ((cachehit == false) ) {
			super_initialization_game_g2d_Map_cachekey_g2d = g2d;
			super_initialization_game_g2d_Map_cachekey_game = game;
			super_initialization_game_g2d_Map_cachevalue = matchedEntry;
		}

		super_initialization_RVMLock.unlock();
	}

	public static final void endProgEvent() {
		super_initialization_activated = true;
		while (!super_initialization_RVMLock.tryLock()) {
			Thread.yield();
		}

		Tuple2<super_initializationMonitor_Set, super_initializationMonitor> matchedEntry = null;
		{
			// FindOrCreateEntry
			matchedEntry = super_initialization__Map;
		}
		// D(X) main:1
		super_initializationMonitor matchedLeaf = matchedEntry.getValue2() ;
		if ((matchedLeaf == null) ) {
			if ((matchedLeaf == null) ) {
				// D(X) main:4
				super_initializationMonitor created = new super_initializationMonitor(super_initialization_timestamp++) ;
				matchedEntry.setValue2(created) ;
				super_initializationMonitor_Set enclosingSet = matchedEntry.getValue1() ;
				enclosingSet.add(created) ;
			}
			// D(X) main:6
			super_initializationMonitor disableUpdatedLeaf = matchedEntry.getValue2() ;
			disableUpdatedLeaf.setDisable(super_initialization_timestamp++) ;
		}
		// D(X) main:8--9
		super_initializationMonitor_Set stateTransitionedSet = matchedEntry.getValue1() ;
		stateTransitionedSet.event_endProg();

		super_initialization_RVMLock.unlock();
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

public aspect super_initializationMonitorAspect implements com.runtimeverification.rvmonitor.java.rt.RVMObject {
	public super_initializationMonitorAspect(){
		Runtime.getRuntime().addShutdownHook(new super_initialization_DummyHookThread());
	}

	// Declarations for the Lock
	static ReentrantLock super_initialization_MOPLock = new ReentrantLock();
	static Condition super_initialization_MOPLock_cond = super_initialization_MOPLock.newCondition();

	pointcut MOP_CommonPointCut() : !within(com.runtimeverification.rvmonitor.java.rt.RVMObject+) && !adviceexecution() && BaseAspect.notwithin();
	pointcut super_initialization_draw(Game game, Graphics2D g2d) : (call(public void Game.draw(Graphics2D)) && target(game) && args(g2d)) && MOP_CommonPointCut();
	before (Game game, Graphics2D g2d) : super_initialization_draw(game, g2d) {
		super_initializationRuntimeMonitor.drawEvent(game, g2d);
	}

	pointcut super_initialization_update(Game game, GameTime gt) : (call(public void Game.update(GameTime)) && target(game) && args(gt)) && MOP_CommonPointCut();
	before (Game game, GameTime gt) : super_initialization_update(game, gt) {
		super_initializationRuntimeMonitor.updateEvent(game, gt);
	}

	pointcut super_initialization_initialize(Game game) : (call(public void Game.initialize()) && target(game)) && MOP_CommonPointCut();
	before (Game game) : super_initialization_initialize(game) {
		super_initializationRuntimeMonitor.initializeEvent(game);
	}

	class super_initialization_DummyHookThread extends Thread {
		public void run(){
			super_initializationRuntimeMonitor.endProgEvent();
		}
	}
}
