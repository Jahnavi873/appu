

bbbbbbbbbbbb3333333333333333333
*head = NULL;
        return;
    }
    while (temp->next->next != NULL) {
        temp = temp->next;
    }
    free(temp->next);
    temp->next = NULL;
}

// Function to delete a node at a specific position in the singly linked list
void deleteAtPosition(struct Node** head, int position) {
    if (*head == NULL) {
        printf("List is empty\n");
        return;
    }
    struct Node* temp = *head;
    if (position == 0) {
        deleteFromFirst(head);
        return;
    }
    for (int i = 0; temp != NULL && i < position - 1; i++) {
        temp = temp->next;
}
    if (temp == NULL || temp->next == NULL) {
        printf("Position out of range\n");
        return;
    }
    struct Node* next = temp->next->next;
    free(temp->next);
    temp->next = next;
}

// Function to print the LinkedList
void print(struct Node* head) {
    struct Node* temp = head;
    while (temp != NULL) {
        printf("%d -> ", temp->data
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

