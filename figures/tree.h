#ifndef TREE_H
#define TREE_H

#define NUM_LETTERS 26 /* A Trie has up to 26 links */

/* Trie node storing one or more characters at a time */
typedef struct treeNode {
   struct treeNode *nodes[NUM_LETTERS]; /* array of nodes */
   unsigned size; /* Number of letters stored by this treeNode */
   char *letters;
} treeNode;

/* Initialize the first Trie node */
treeNode *initTree();

/* Adds a string to the Trie */
treeNode *addToTree(treeNode *tree, const char *s);

/* Collapses a Trie by combining nodes */
treeNode *collapseTree(treeNode *tree);

/* Finds a string stored in the Trie and copies to dest */
int findString(treeNode *tree, const char *s, char *dest); 

/* Frees the Trie nodes and string */
void destroyTree(treeNode *t);

#endif
