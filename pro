
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb4444444444444444444444444444444
temp = temp->next;
    }
    printf("NULL\n");
}

// Driver Code
int main() {
    struct Node* head = NULL;

    insertAtFirst(&head, 10);
    printf("Linked list after inserting the node:10 at the beginning \n");
    print(head);

    printf("Linked list after inserting the node:20 at the end \n");
    insertAtEnd(&head, 20);
    print(head);

    printf("Linked list after inserting the node:5 at the end \n");
    insertAtEnd(&head, 5);
    print(head);

    printf("Linked list after inserting the node:30 at the end \n");
    insertAtEnd(&head, 30);
    print(head);


