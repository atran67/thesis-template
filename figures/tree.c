#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "tree.h"

/* Root node has no characters, an empty string */
treeNode *initTree() {
   treeNode *root = malloc(sizeof(treeNode));
   int i;

   if (root == NULL) {
      fprintf(stderr, "Unable to allocate more space\n");
      return NULL;
   }

   root->size = 0;
   root->letters = malloc(sizeof(char));
   root->letters[0] = '\0';

   for (i = 0; i < NUM_LETTERS; ++i) {
      root->nodes[i] = NULL;
   }

   return root;
}

/* Free the letters, then free the descendants, then free the node */
void destroyTree(treeNode *t) {
   int i;

   free(t->letters);

   for (i = 0; i < NUM_LETTERS; ++i) {
      if (t->nodes[i]) {
         destroyTree(t->nodes[i]);
      }
   }

   free(t);
}

/* Traverse the Trie and add the remaining characters */
treeNode *addToTree(treeNode *tree, const char *s) {
   treeNode *cur = tree;
   treeNode *prev = NULL;
   treeNode *newNode;
   int idx;
   int i;

   /* Traverse the Trie until you encounter a NULL link */
   while (*s && cur) {
      prev = cur;
      cur = cur->nodes[tolower(*s) - 'a'];

      /* Go to the next character if the link is still valid */
      if (cur) {
         ++s;
      }
   }

   /* Add a single node for the rest of the string */
   while (*s) {
      idx = tolower(*s) - 'a';
      newNode = malloc(sizeof(treeNode));
      newNode->size = 1;
      newNode->letters = malloc(sizeof(char));
      newNode->letters[0] = *s++;

      for (i = 0; i < NUM_LETTERS; ++i) {
         newNode->nodes[i] = NULL;
      }

      prev->nodes[idx] = newNode;
      prev = newNode;
   }

   return tree;
}

/* Finds a string stored in the Trie */
int findString(treeNode *tree, const char *s, char *dest) {
   /* return 0 if the string was found, 1 otherwise */
   treeNode *cur = tree;
   unsigned len;

   while (cur && *s) {
      cur = cur->nodes[tolower(*s) - 'a'];

      if (cur == NULL) {
         printf("%c\n", *s);
         return 1;
      }

      len = cur->size;

      while (len-- && *s) {
         *dest++ = *s++;
      }
   }

   if (*s) {
      return 1;
   }

   /* Put NULL at the end */
   *dest = '\0';

   return 0;
}

/* Collapses a Trie node if there is exactly one link in between two nodes */
treeNode *collapseTree(treeNode *tree) {
   treeNode *cur = tree;
   treeNode *link = NULL;
   int i;
   unsigned temp;

   if (!tree) {
      return NULL;
   }

   /* If this is the root, collapse the subtrees */
   if (cur->size == 0) {
      for (i = 0; i < NUM_LETTERS; ++i) {
         collapseTree(cur->nodes[i]);
      }
   }

   else {
      /* Look for the single link. Otherwise, call recursively */
      for (i = 0; i < NUM_LETTERS; ++i) {
         if (cur->nodes[i]) {
            if (link == NULL) {
               link = cur->nodes[i];
	    }
	    else {
               /* multiple links, collapse each subtree */
	       collapseTree(link);

	       while (i < NUM_LETTERS) {
                  collapseTree(cur->nodes[i]);
		  ++i;
	       }

	       return cur;
	    }
	 }
      }

      /* Merge the contents of cur and the single link */
      if (link) {
	 temp = cur->size;
         cur->size += link->size;

	 cur->letters = realloc(cur->letters, cur->size);

	 /* Copy the characters */
	 for (i = temp; i < cur->size; ++i) {
            cur->letters[i] = link->letters[i - temp];
	 }

         /* Copy the links */
	 /* Collapse the subtrees */
         for (i = 0; i < NUM_LETTERS; ++i) {
            cur->nodes[i] = link->nodes[i];
	    collapseTree(cur->nodes[i]);
         }

	 /* Free the link */
	 free(link->letters);
	 free(link);
      }
   }

   return cur;
}

int main(int argc, char **argv) {
   char buffer[1024];
   char outbuffer[1024];
   treeNode *myTree;
   FILE *f;

   if (argc < 2) {
      fprintf(stderr, "Usage: tree <file>\n");
      exit(1);
   }

   f = fopen(argv[1], "r");

   if (f == NULL) {
      fprintf(stderr, "File Not Found\n");
      exit(1);
   }

   myTree = initTree();

   while (fscanf(f, "%s\n", buffer) != EOF) {
      addToTree(myTree, buffer);
   }

   collapseTree(myTree);

   while (scanf("%s", buffer) != EOF) {
      if (!findString(myTree, buffer, outbuffer)) {
         printf("%s\n", outbuffer);
      }
   }

   destroyTree(myTree);

   return 0;
}
