import java.util.Random;

public class Consumer implements Runnable {
    private final BoundedQueue queue;
    private final int numberOfItemsToConsume;
    private final Random random = new Random();

    public Consumer(BoundedQueue queue, int numberOfItemsToConsume) {
        this.queue = queue;
        this.numberOfItemsToConsume = numberOfItemsToConsume;
    }

    @Override
    public void run() {
        try {
            for (int i = 0; i < numberOfItemsToConsume; i++) {
                int value = queue.dequeue();
                System.out.println("Consumed: " + value);

                Thread.sleep(random.nextInt(1000));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

    }
}
