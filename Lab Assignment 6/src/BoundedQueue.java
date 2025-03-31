import java.util.LinkedList;
import java.util.Queue;

public class BoundedQueue {
    private final Queue<Integer> queue;
    private final int capacity;

    public BoundedQueue(int capacity) {
        this.queue = new LinkedList<>();
        this.capacity = capacity;
    }

    public synchronized void enqueue(int value) throws InterruptedException {
        // while queue is full, producer must wait
        while (queue.size() == capacity) wait();

        // add new item
        queue.offer(value);

        // notify waiting threads that there is data available
        notifyAll();
    }

    public synchronized int dequeue() throws InterruptedException {
        // while queue is empty, consumer must wait
        while (queue.isEmpty()) wait();

        // remove an item
        int value = queue.poll();

        // notify waiting threads that there is space available
        notifyAll();

        return value;
    }
}
