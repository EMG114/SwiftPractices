//: Playground - noun: a place where people can play

import UIKit

/*

The puzzle is to implement basic queue operations with using only basic stack operations. That is, a stack object is given, we need construct a wrapper for the queue functions, insert, remove, which will only use the stack object as its storage, and naturally will have to use the stack operations. I have already posted the opposite task in the post Implement stack using a queue

This can be done using two stack objects. We call these the first stack and the second stack. Although either the insert or the remove complexity will no more be O(1).

I have discussed the process gradually. I added the last solution when it clicked in my mind while reviewing this post.

Initial Idea
A slightly better solution
An even better solution


The Idea

The idea is pretty simple. We start with an empty stack. For the insert operation we simply push the value to be inserted into the stack. The remove operation needs some manipulation. When we need to remove from the queue (simulated with a stack): pop out all the elements one by one and keep them pushing into the second stack. The last element popped from the first stack is not pushed in the second stack, and is returned as the queue front element. Next all the elements in the second stack are all popped back to the first stack one by one (this step can be avoided with a modification mentioned later).

Let the number of elements in the stack is n then we pop (n-1) elements from the stack and push them into the second stack. The last popped element from the first stack is returned. Note that the bottom element in the stack is the one which was inserted first, and we are returning it first, therefore it works like a remove operation (First in First Out). The idea is shown below.

*/

// Insert pseudocode

/*

void insert (stack_t s)
{
stack.push (element);
}
Remomve

*/

// Remove pseudocode

/*

element_type remove (void)
{
while (there is one element in stack1) // Only (n-1) elements 0 to (n-2)
{
stack_top_element = stack1.pop ();
stack2.push (stack_top_element);
}

element = stack1.pop (); // The front element of the queue

while (stack2 is not empty) // Restore the stack1
{
stack_top_element = stack2.pop ();
stack1.push (stack_top_element);
}
return element;

*/
