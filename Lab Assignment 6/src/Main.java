import java.util.Scanner;

public class Main {
    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        // read queue size
        System.out.print("Enter the size of the queue: ");
        int queueSize = scanner.nextInt();

        // create a bounded queue
        BoundedQueue sharedQueue = new BoundedQueue(queueSize);

        // create a producer and a consumer
        Producer producer = new Producer(sharedQueue, queueSize * 2);
        Consumer consumer = new Consumer(sharedQueue, queueSize * 2);

        // create and start producer and consumer threads
        Thread producerThread = new Thread(producer, "ProducerThread");
        Thread consumerThread = new Thread(consumer, "ConsumerThread");

        producerThread.start();
        consumerThread.start();

        // wait for the threads to finish
        try {
            producerThread.join();
            consumerThread.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Producer and Consumer have finished");

    }
}
