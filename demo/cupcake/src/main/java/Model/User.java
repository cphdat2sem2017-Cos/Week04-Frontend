package Model;

import java.util.List;

/**
 * The purpose of User is to...
 * @author kasper
 */
public class User {
    private String name;
    private List<BookCopy> borrowedBooks;

    public User( String name, List<BookCopy> borrowedBooks ) {
        this.name = name;
        this.borrowedBooks = borrowedBooks;
    }

    public String getName() {
        return name;
    }

    public void setName( String name ) {
        this.name = name;
    }

    public List<BookCopy> getBorrowedBooks() {
        return borrowedBooks;
    }

    public void setBorrowedBooks( List<BookCopy> borrowedBooks ) {
        this.borrowedBooks = borrowedBooks;
    }
}
