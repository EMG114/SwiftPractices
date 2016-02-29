//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Data Structures & Algorithms

1.You are working on a new NYC subway app for the MTA. For each of the following features, name the primary data structure (or structures) you would use in your implementation and provide one sentence explaining why it is a good choice:
a.Allow users to quickly search for a particular subway station by name.

// Tree. each node will prensent the letter. 
   Hush table


b.Display all the stations in alphabetical order in a table view.

// Array. because can be sorted in order in costant time

c.Calculate the most direct route between two subway stations.

// Graph. cos there can be multiple routes, not parent and child relationship.

d.Show a live feed of alerts about delays and other important information (items can be inserted into/removed from anywhere in the feed).

//Linked list, cos it highlighted the insert and remove speed.

2.Which data structure best models the possible outcomes of a series of coin tosses? Please provide an example. Which structure best models each observed outcome of a series of coin tosses? Please provide an example.
//tree for possible outcome.  start with two branches, one from head, one from tail.
//Array for observed outcome.

Big O


1.Rank these from best to worst in terms of time complexity
O(n), O(n3), O(1), O(n2), O(2n) O(log(n)), O(n!)

// O(1), O(log(n)), O(n), O(n^2), O(n^3), O(2^n), O(n!)

2.What is the big O in terms of n for these execution times?
a.2n + 3 milliseconds
// O(n)

b.3n * (4n * (n + 3)) nanoseconds
// O(n^3)

c.n2 + log(n) + n! + 23 nanoseconds
// O(n!)

d.1 billion years
// O(1)


3.Find the big O in terms of n, the length of xs, of these code snippets or descriptions of code, assuming foo(xs) is O(n) and bar(xs) is O(log(n)).


a.for i in 0..<xs.count { n times
for x in xs { n times
xs[i] = x + foo(xs) foo(xs)-->O(n)
}
}

// O(n^3)


b.for x in xs {
if x == 3 {
foo(xs);
} else {
bar(xs);
}
}

// O(n^2)


c.A function that checks every possible ordering of the elements of xs to see if that ordering is an encryption key to a file (assume trying the key takes O(1)).

// every possible ordering ...so O(n!)

Discrete Math + Logic

Formulas:
# possible permutations of size r for n objects:
P(n, r) = n! / (n - r)!
# possible combinations of size r for n objects:
C(n, r) = P(n, r) / r!

1.You are trying to create the perfect fruit smoothie recipe using bananas, oranges, raspberries, blueberries, peaches, mangoes, and papayas. If each smoothie must consist of at least two and at most four different kinds of fruit, how many smoothies do you need to make in order to try every possible recipe?

// C(7, 2) + C(7, 3) + C(7, 4)

2.While experimenting with recipes, you discover three candidates for the perfect smoothie and seven others you really like. You decide to take your hobby to the next level by opening your very own smoothie shop, Jumbo Juice. You decide to create a menu with items arranged according to the following rules:
a.All ten of your smoothie options must be on the menu—no more, no less.

b.One of the three perfect smoothie candidates must be the first item on the menu.
How many possible menus can you make?
// 3 * 9!

3.Your first Jumbo Juice customer only wants a smoothie that has both mangoes and peaches. Out of the ten smoothies on your menu, if four contain mangoes, three contain peaches, and five contain neither mangoes nor peaches, how many options does your customer have?
// 2

List + Sorts
You are given an array of CD structs.
struct CD {
var playTime:Double
var price: Double
}
a.Using your knowledge of sorts (feel free to use bubble sort, insertion sort, or selection sort), alter it to sort the array by price from least to greatest. If two CDs have the same price, those CDs should be sorted by playTime, from shortest to longest.

Sample input:
[ {playTime: 4.5, price: 2},
{playTime: 3, price: 2},
{playTime: 5, price:1} ]
Output:
[ {playTime: 5, price:1},
{playTime: 3, price: 2},
{playTime: 4.5, price: 2} ]


b. What is the big O time and space complexity for your sort?
// O(n^2) time complexity, O(1) space complexity, if it's bubble sort

c. If the CD’s were given to you as a list instead of an array, what would the big O time and space complexity be for your sort?
// O(n^3) time complexity,
*/
