//: Playground - noun: a place where people can play

import UIKit

/*
The puzzle is to implement basic stack operations with using only basic queue operations. That is, a queue object is given, we need construct a wrapper for the stack functions, push, pop, which will only use the queue object as its storage, and naturally will have to use the queue operations.

This can be done using only one queue object. Although either the push or the pop complexity will no more be O(1).

The Idea

The idea is pretty simple. We start with an empty queue. For the push operation we simply insert the value to be pushed into the queue. The pop operation needs some manipulation. When we need to pop from the stack (simulated with a queue), first we get the number of elements in the queue, say n, and remove (n-1) elements from the queue and keep on inserting in the queue one by one. That is, we remove the front element from the queue, and immediately insert into the queue in the rear, then we remove the front element from the queue and then immediately insert into the rear, thus we continue upto (n-1) elements. Then we will perform a remove operation, which will actually remove the nth element of the original state of the queue, and return. Note that the nth element in the queue is the one which was inserted last, and we are returning it first, therefore it works like a pop operation (Last in First Out). The idea is shown below.


Note that in the pop process, because we are inserting the first (n-1) elements in the queue in the same order we are removing, after the for loop termination in pop the state of the queue would have the last element in the queue at the font, and the remaining elements will maintain the same order which they had before the execution of the for loop. At this point we are simply removing the queue’s first element, which happens to be actually the last element in the original state of the queue, is removed and sent. After this the queue has the same elements in the same order except the last element. Which is exactly the behaviour we wanted.

*/

// Push pseudocode

/*

void push (queue_t q)
{
queue.insert (element);
}

*/


// Pop pseudocode

/*

element_type pop (void)
{
n = queue.element_count ();

for (i from 0 to n - 2) // Only (n-1) elements 0 to (n-2)
{
queue_element = queue.remove ();
queue.insert (queue_element);
}
element = queue.remove ();
return element;
}

*/