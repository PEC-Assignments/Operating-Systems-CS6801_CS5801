import java.util.Random;

public class Producer implements Runnable {
    private final BoundedQueue queue;
    private final Random random = new Random();

    private final int numberOfItemsToProduce;

    public Producer(BoundedQueue queue, int numberOfItemsToProduce) {
        this.queue = queue;
        this.numberOfItemsToProduce = numberOfItemsToProduce;
    }

    @Override
    public void run() {
        try {
            for (int i = 0; i < numberOfItemsToProduce; i++) {
                int value = random.nextInt(100);
                System.out.println("Produced: " + value);
                queue.enqueue(value);

                Thread.sleep(random.nextInt(1000));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
