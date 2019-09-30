# Golden Coins Game

## Introduction

In the Golden Coins Game, there is a row of pots in a line containing an integer number of golden coins. Two players alternate turns picking a pot from either end, with the goal being to maximize the total amount of coins taken.

This repo uses a dynamic programming solution to determine the answer. Each time a branch in the tree is traversed, a value is cached in a map; future visits to sub-trees in that branch will then be looked up instead of recalculated.

## Setup

1. Clone this repo
1. Run `bundle` to install dependencies
1. Ues `rspec` to run the test suite
